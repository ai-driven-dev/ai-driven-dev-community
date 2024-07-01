/**
 * @file main.js
 * @description This script sets up a command-line interface (CLI) to interact with the OpenAI API. 
 * It reads environment variables, validates the OpenAI API key, and provides functions to call the OpenAI API.
 */

// const fs = require('fs');
// const path = require('path');
// const https = require('https');
// const readline = require('readline');
import path from 'path';
import { fileURLToPath } from 'url';

// Convert the URL object to a file path
const __dirname = fileURLToPath(new URL('.', import.meta.url));

import clipboardy from 'clipboardy';
import fs from 'fs';
import https from 'https';
import readline from 'readline';

// Redefine console.error to always print in red
console.error = (function(origError) {
    return function(...args) {
        origError('\x1b[31m', ...args, '\x1b[0m');
    };
})(console.error);

console.warn = (function(origWarn) {
    return function(...args) {
        origWarn('\x1b[33m', ...args, '\x1b[0m');
    };
})(console.warn);


console.info = (function(origInfo) {
    return function(...args) {
        origInfo('\x1b[32m', ...args, '\x1b[0m');
    };
})(console.info);

// Load environment variables
const loadEnv = () => {
    const ENV_PATH = path.join(__dirname, '.env');
    if (fs.existsSync(ENV_PATH)) {
        const envConfig = fs.readFileSync(ENV_PATH, 'utf-8');
        envConfig.split('\n').forEach(line => {
            const [key, value] = line.split('=');
            if (key && value) {
                process.env[key.trim()] = value.trim();
            }
        });
    } else {
        console.error('.env file not found. Exiting.');
        process.exit(1);
    }
};

loadEnv();

// Exit if OPENAI_API_KEY is not set
if (!process.env.OPENAI_API_KEY) {
    console.error('OPENAI_API_KEY is not set. Please set it to your OpenAI API key.');
    console.error('You can find it in your OpenAI dashboard: https://platform.openai.com/api-keys');
    process.exit(1);
}

// Gen-AI parameters
const GEN_AI_MODEL = 'gpt-4o';
const GEN_AI_MAX_TOKENS = 600;
const GEN_AI_TEMPERATURE = 0.7;
const GEN_AI_SYSTEM_MESSAGE = `
Act as a Senior Software Engineer that is experienced in software craft.
Assist with high-quality, concise, efficient, and scalable software solutions.
Limit the response to minimum tokens.
`;

/**
 * Calls the OpenAI API with the provided parameters.
 * @param {string} systemMessage - The system message to send to the API.
 * @param {string} prompt - The user prompt to send to the API.
 * @param {number} [maxTokens=GEN_AI_MAX_TOKENS] - The maximum number of tokens to generate.
 * @param {number} [temperature=GEN_AI_TEMPERATURE] - The temperature to use for the generation.
 * @returns {Promise<string>} - The response message content from the API.
 */
const callOpenAiApi = async (systemMessage, prompt, maxTokens = GEN_AI_MAX_TOKENS, temperature = GEN_AI_TEMPERATURE) => {
    const cleanSystemMessage = systemMessage.replace(/[^\x20-\x7E\t]/g, '');
    const cleanPrompt = prompt.replace(/[^\x20-\x7E\t]/g, '');

    const body = JSON.stringify({
        model: GEN_AI_MODEL,
        messages: [
            { role: 'system', content: cleanSystemMessage },
            { role: 'user', content: cleanPrompt }
        ],
        max_tokens: maxTokens,
        temperature: temperature
    });

    const options = {
        hostname: 'api.openai.com',
        path: '/v1/chat/completions',
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${process.env.OPENAI_API_KEY}`
        }
    };

    return new Promise((resolve, reject) => {
        const req = https.request(options, (res) => {
            let data = '';

            res.on('data', (chunk) => {
                data += chunk;
            });

            res.on('end', () => {
                if (res.statusCode >= 200 && res.statusCode < 300) {
                    const response = JSON.parse(data);
                    const messageContent = response.choices[0].message.content;
                    if (!messageContent) {
                        reject(new Error('Failed to extract message content from response'));
                    } else {
                        openaiApiCalculateCost(response.usage);
                        resolve(messageContent);
                    }
                } else {
                    const response = JSON.parse(data);
                    reject(new Error(`Error from OpenAI API: ${response.error?.message || 'Unknown error'}`));
                }
            });
        });

        req.on('error', (e) => {
            reject(e);
        });

        req.write(body);
        req.end();
    });
};

/**
 * Calculates the cost of using the OpenAI API based on the model and token usage.
 * @param {Object} usage - The token usage details.
 * @param {number} usage.prompt_tokens - The number of prompt tokens used.
 * @param {number} usage.completion_tokens - The number of completion tokens used.
 * @param {string} [model="gpt-4o"] - The model used.
 * @returns {number} - The total cost calculated.
 */
const openaiApiCalculateCost = (usage, model = GEN_AI_MODEL) => {
    const pricing = {
        'gpt-4o': {
            'prompt': 0.05,
            'completion': 0.015,
        }
    };

    if (!pricing[model]) {
        throw new Error("Invalid model specified");
    }

    const modelPricing = pricing[model];
    const promptCost = usage.prompt_tokens * modelPricing.prompt / 1000;
    const completionCost = usage.completion_tokens * modelPricing.completion / 1000;
    let totalCost = promptCost + completionCost;

    // round to 6 decimals
    totalCost = totalCost.toFixed(6);

    console.log(`\n🚚 Usage:`);
    console.warn(`--------------------\n`);
    console.warn(`Prompt: ${usage.prompt_tokens.toLocaleString()} tokens`);
    console.warn(`Completion: ${usage.completion_tokens.toLocaleString()} tokens`);
    console.warn(`Total: ${usage.total_tokens.toLocaleString()} tokens`);
    console.warn(`Cost for ${model}: $${parseFloat(totalCost).toFixed(4)}\n`);
    console.warn(`--------------------\n`);

    return parseFloat(totalCost);
};

/**
 * Asks the AI a question.
 * @param {string} prompt - The prompt to send to the AI.
 */
const askAi = async (prompt) => {
    console.log(`\n📝 Prompt:`);
    console.log(`--------------------`);
    console.warn(prompt);
    console.log(`--------------------`);
    
    clipboardy.writeSync(prompt);

    console.info(`📋 Prompt copied to clipboard.\n`);

    const rl = readline.createInterface({
        input: process.stdin,
        output: process.stdout
    });

    rl.question('Is this prompt OK? (y/n) ', async (answer) => {
        rl.close();
        if (!/^y$/i.test(answer)) {
            process.exit(1);
        }

        try {
            const response = await callOpenAiApi(GEN_AI_SYSTEM_MESSAGE, prompt);
            console.log("🤖 Answer from AI:");
            console.warn(`\n--------------------\n${response}\n--------------------\n`);
        } catch (error) {
            console.error(error.message);
            process.exit(1);
        }
    });
};

/**
 * Parses command-line arguments.
 * @returns {{ 'no-validate': boolean }} - The parsed arguments as key-value pairs.
 */
const parseArgs = () => {
    const args = process.argv.slice(2);
    const parsedArgs = {};

    args.forEach(arg => {
        const [key, value] = arg.split('=');
        parsedArgs[key.replace(/^--/, '')] = value;
    });

    return parsedArgs;
};

/**
 * Parses command-line arguments and calls the OpenAI API.
 */
const argv = parseArgs();

console.log(`
           _____ _____  _____   _____ 
     /\   |_   _|  __ \|  __ \ / ____|
    /  \    | | | |  | | |  | | |     
   / /\ \   | | | |  | | |  | | |     
  / ____ \ _| |_| |__| | |__| | |____ 
 /_/    \_\_____|_____/|_____/ \_____|
                                      
*******************************************
*                                         *
*       Welcome to the AIDDC Community    *
*                                         *
*            ai-driven-dev.com            *
*                                         *
*******************************************

`)


const getAiddFiles = (dir) => {
    return fs.readdirSync(dir).filter(file => file.startsWith('aidd'));
};

console.log('💾 Available aliases:');

const aiddFiles = getAiddFiles(path.join(__dirname, 'scripts'));

for (const file of aiddFiles) {
    console.warn(`- ${file.replace('.sh', '')}`);
}

const promptFilePath = path.join(__dirname, '/.prompt');

if (fs.existsSync(promptFilePath)) {
    const promptContent = fs.readFileSync(promptFilePath, 'utf-8');
    // Proceed with the rest of the logic
    if (argv['no-validate'] === 'true') {
        callOpenAiApi(GEN_AI_SYSTEM_MESSAGE, promptContent)
            .then(response => console.log(response))
            .catch(error => {
                console.error(error.message);
                process.exit(1);
            });
    } else {
        askAi(promptContent);
    }
} else {
    console.error('.prompt file not found. Exiting.');
    process.exit(1);
}