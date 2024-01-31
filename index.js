const fs = require('fs');
const parseMarkdown = require('./parseMarkdown');
const generateYaml = require('./generateYaml');

// Assume you have the markdown content in a variable called markdownText
const markdownText = fs.readFileSync('README.md', 'utf8');

// Parse the markdown content
const espansoConfig = parseMarkdown(markdownText);

// Generate the YAML configuration
const yamlContent = generateYaml(espansoConfig);

// Output the YAML content to a file or console
fs.writeFileSync('./prompts-dev/package.yml', yamlContent);
