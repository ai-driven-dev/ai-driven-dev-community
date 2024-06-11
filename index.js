const fs = require('fs');
const parseMarkdown = require('./src/espanso-generation/parseMarkdown');
const generateYaml = require('./src/espanso-generation/generateYaml');
const { extractScripts } = require('./src/extract-scripts');
const glob = require('glob');

// @todo do this for Linux and Windows as well
// const espansoConfigPath = `"$HOME/Library/Application Support/espanso/match/packages/"`;

const espansoConfigPath = `${process.env.HOME}/Library/Application Support/espanso/match/packages/ai-driven-dev-prompts-private`;

if (!fs.existsSync(espansoConfigPath)) {
  fs.mkdirSync(espansoConfigPath, { recursive: true });
}

const PRIVATE_PROMPTS = ['./prompts/private/*'];

const PUBLIC_PROMPTS = [
  './resources/prompts/*',
  './resources/prompts/_/*',
  './resources/prompts/languages/*',
  './resources/llm-instructions/*',
  './contributing*',
  './README*',
];

fs.writeFileSync(
  './ai-driven-dev-prompts/package.yml',
  getPromptsContentForEspanso(PUBLIC_PROMPTS)
);

fs.writeFileSync(
  `${espansoConfigPath}/package.yml`,
  getPromptsContentForEspanso(PRIVATE_PROMPTS)
);

fs.writeFileSync(
  `${espansoConfigPath}/_manifest.yml`,
  `name: 'ai-driven-dev-prompts-private'
title: 'AI Driven Dev Prompts (Private)'
description: A collection of your private prompts (not committed onto GitHub).
version: 0.1.0
author: alexsoyes ()
website: https://github.com/alexsoyes/ai-driven-dev-community`
);

fs.writeFileSync(`${espansoConfigPath}/README.md`, `Your custom prompts!`);

extractScriptsFromMarkdownToFiles(PUBLIC_PROMPTS);

function getPromptsContentForEspanso(directories) {
  const header = 'matches:\n';

  let yamlContent = header;

  for (const promptDirectory of directories) {
    const markdownFiles = glob.sync(promptDirectory + '.md');

    for (const markdownFile of markdownFiles) {
      yamlContent += getPrompts(markdownFile);
    }
  }

  return yamlContent;
}

function getPrompts(filePath) {
  const markdownText = fs.readFileSync(filePath, 'utf8');
  const espansoConfig = parseMarkdown(markdownText);
  return generateYaml(espansoConfig).split('\n').slice(1).join('\n') + '\n';
}

function extractScriptsFromMarkdownToFiles(directories) {
  for (const promptDirectory of directories) {
    const markdownFiles = glob.sync(promptDirectory + '.md');

    for (const markdownFile of markdownFiles) {
      extractScripts(markdownFile);
    }
  }
}
