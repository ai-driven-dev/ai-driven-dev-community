const fs = require('fs');
const parseMarkdown = require('./espanso-generation/parseMarkdown');
const generateYaml = require('./espanso-generation/generateYaml');
const glob = require('glob');

const promptDirectories = [
  '../prompts/*',
  '../prompts/_/*',
  '../prompts/languages/*',
];

let yamlContent = 'matches:\n';

for (const promptDirectory of promptDirectories) {
  const markdownFiles = glob.sync(promptDirectory + '.md');

  for (const markdownFile of markdownFiles) {
    // Write the markdown file
    const markdownText = fs.readFileSync(markdownFile, 'utf8');
    const espansoConfig = parseMarkdown(markdownText);
    yamlContent +=
      generateYaml(espansoConfig).split('\n').slice(1).join('\n') + '\n';
  }
}

fs.writeFileSync('../ai-driven-dev-prompts/package.yml', yamlContent);
