/**
 * @file main.js
 * @description This script sets up a command-line interface (CLI) to interact with the OpenAI API. 
 * It reads environment variables, validates the OpenAI API key, and provides functions to call the OpenAI API.
 */

const fs = require('fs');
const path = require('path');
const https = require('https');
const readline = require('readline');

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
const GEN_AI_MAX_TOKENS = 300;
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
 * Asks the AI a question.
 * @param {string} prompt - The prompt to send to the AI.
 */
const askAi = async (prompt) => {
    console.warn(`\n--------------------\n${prompt}\n--------------------\n`);

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
            console.log(response);
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

Available scripts:
- aidd-commit-msg : Generates a commit message.
`)

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