const MarkdownIt = require('markdown-it');

const mdParser = new MarkdownIt();

/**
 * Parses markdown text and extracts espanso triggers.
 * @param {string} markdownText - The markdown text to parse.
 *
 * @typedef {Object} EspansoConfig
 * @property {string} trigger - The trigger text
 * @property {string} form - The expanded form text
 * @property {string[]} variables - Template variables
 *
 * @returns {EspansoConfig[]} The extracted espanso configuration.
 */
function parseMarkdown(markdownText) {
  const tokens = mdParser.parse(markdownText, {});
  let currentTrigger = null;

  const espansoConfig = [];

  for (let i = 0; i < tokens.length; i++) {
    const token = tokens[i];

    // Check for heading tokens with the trigger pattern
    if (token.type === 'heading_open' && token.tag.match(/^h[2-6]$/)) {
      const inlineToken = tokens[i + 1];
      if (inlineToken.type === 'inline') {
        const content = inlineToken.content;
        const triggerMatch = content.match(/^(.*) `:(.*)`$/);
        if (triggerMatch) {
          currentTrigger = {
            trigger: triggerMatch[2].trim(),
            form: '',
            variables: [],
          };
          espansoConfig.push(currentTrigger);
        }
      }
    }

    // Check for code block tokens
    if (token.type === 'fence' && token.info === 'text') {
      if (currentTrigger) {
        currentTrigger.form = token.content;
        // Extract variables
        const variableMatches = [...token.content.matchAll(/\[\[(.*?)\]\]/g)];
        for (const match of variableMatches) {
          const variableName = match[1]
            .trim()
            .replace(/\s+/g, '_')
            .toLowerCase();
          currentTrigger.variables.push(variableName);
        }
      }
    }
  }

  return espansoConfig;
}

module.exports = parseMarkdown;
