const fs = require('fs');
const parseMarkdown = require('./src/espanso-generation/parseMarkdown');
const generateYaml = require('./src/espanso-generation/generateYaml');
const { extractScripts } = require('./src/extract-scripts');
const glob = require('glob');

// @todo check this path
// const espansoConfigPath = `"$HOME/Library/Application Support/espanso/match/packages/"`;

const espansoConfigPath = `${process.env.HOME}/Library/Application Support/espanso/match/packages/ai-driven-dev-prompts-private`;

// @todo use fs to create the directory if it does not exist
if (!fs.existsSync(espansoConfigPath)) {
  fs.mkdirSync(espansoConfigPath, { recursive: true });
  console.log('✅ Created espansoConfigPath directory');
}

const PRIVATE_PROMPTS = ['./prompts/private/*'];

const PUBLIC_PROMPTS = [
  './ressources/prompts/*',
  './ressources/prompts/_/*',
  './ressources/prompts/languages/*',
  './ressources/llm-instructions/*',
  './contributing*',
  './README*',
];

fs.writeFileSync(
  './ai-driven-dev-prompts/package.yml',
  getPromptsContentForEspanso(PUBLIC_PROMPTS)
);
console.log('✅ Generated package.yml for public prompts');

fs.writeFileSync(
  `${espansoConfigPath}/package.yml`,
  getPromptsContentForEspanso(PRIVATE_PROMPTS)
);
console.log('✅ Generated package.yml for private prompts');

fs.writeFileSync(
  `${espansoConfigPath}/_manifest.yml`,
  `name: 'ai-driven-dev-prompts-private'
title: 'AI Driven Dev Prompts (Private)'
description: A collection of your private prompts (not committed onto GitHub).
version: 0.1.0
author: alexsoyes ()
website: https://github.com/alexsoyes/ai-driven-dev-community`
);
console.log('✅ Generated _manifest.yml');

fs.writeFileSync(`${espansoConfigPath}/README.md`, `Your custom prompts!`);
console.log('✅ Generated README.md');

extractScriptsFromMarkdownToFiles(PUBLIC_PROMPTS);
console.log('✅ Extracted scripts from markdown files');

/**
 *
 * @param {string[]} directories
 *
 * @returns {string} The content to be written in the package.yml
 */
function getPromptsContentForEspanso(directories) {
  const header = '# custom config\npreserve_clipboard: false\n\nmatches:\n';

  let yamlContent = header;

  for (const promptDirectory of directories) {
    const markdownFiles = glob.sync(promptDirectory + '.md');

    for (const markdownFile of markdownFiles) {
      console.log(`📝 Generating prompt for ${markdownFile}`);
      yamlContent += getPrompts(markdownFile);
    }
  }

  return yamlContent;
}

/**
 *
 * @param {string} filePath
 * @returns {string} The yml content for the given file path.
 */
function getPrompts(filePath) {
  const markdownText = fs.readFileSync(filePath, 'utf8');
  const espansoConfig = parseMarkdown(markdownText);
  return generateYaml(espansoConfig).split('\n').slice(1).join('\n') + '\n';
}

/**
 * Extracts the scripts from the markdown files and writes them to files
 *
 */
function extractScriptsFromMarkdownToFiles(directories) {
  for (const promptDirectory of directories) {
    const markdownFiles = glob.sync(promptDirectory + '.md');

    for (const markdownFile of markdownFiles) {
      extractScripts(markdownFile);
    }
  }
}