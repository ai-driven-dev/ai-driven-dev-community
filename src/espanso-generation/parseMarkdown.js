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
 * @property {Object.<string, string[]>} choices - Choices for the variables
 *
 * @returns {EspansoConfig[]} The extracted espanso configuration.
 */
function parseMarkdown(markdownText) {
  const tokens = mdParser.parse(markdownText, {});
  let currentTrigger = null;
  const espansoConfig = [];

  for (let i = 0; i < tokens.length; i++) {
    const token = tokens[i];

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
            choices: {},
          };
          espansoConfig.push(currentTrigger);
        }
      }
    }

    if (token.type === 'fence' && currentTrigger) {
      let newContentWithReplacedVars = token.content;
      const variableMatches = token.content.match(/\[\[(.*?)\]\]/g);
      if (variableMatches) {
        variableMatches.forEach((variable) => {
          /**
           * Transform the variable into a valid espanso variable name.
           * @example
           * const variable = '[[Variable's Name]]';
           * const variableName = 'variable_name';
           *
           * @example
           * const variable = '[[Variable|Choice 1|Choice 2]]';
           * const variableName = 'variable___choice_1___choice_2';
           *
           * @type {string}
           */
          const variableName = variable
            .replace('[[', '')
            .replace(']]', '')
            .replace(/\|/g, '___')
            .trim()
            .replace(/\s+/g, '_')
            .replace(/[^\w\s]/g, '')
            .toLowerCase();

          if (!currentTrigger.variables.includes(variableName)) {
            currentTrigger.variables.push(variableName);
            newContentWithReplacedVars = newContentWithReplacedVars.replace(
              variable,
              `[[${variableName}]]`
            );
          }

          if (variable.includes('|')) {
            const choices = variable
              .replace('[[', '')
              .replace(']]', '')
              .split('|')
              .map((choice) => choice.trim());
            currentTrigger.choices[variableName] = choices;
          }
        });
      }
      currentTrigger.form = newContentWithReplacedVars;
    }
  }

  return espansoConfig;
}

module.exports = parseMarkdown;
