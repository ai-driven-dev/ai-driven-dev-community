const yaml = require('js-yaml');

/**
 * 
 * @param {import('./parseMarkdown').EspansoConfig[]} espansoConfig 
 * @returns 
 */
function convertToYaml(espansoConfig) {
  const yamlConfig = {
    matches: espansoConfig.map((item) => {
      const match = {
        trigger: `:${item.trigger}`,
        replace: item.form,
      };

      if (item.variables.length > 0) {
        /**
         * Get the multiline variables.
         *
         * @type {Object.<string, {multiline: boolean}>}
         * @example
         * Input:
         * {
         *  variable1: {multiline: true},
         *  variable2: {multiline: true}
         * }
         * Output:
         *  form_fields:
         *   variable1:
         *    multiline: true
         *  variable2:
         *   multiline: true
         *
         * @description This object will be used to create the form_fields object.
         */
        match.form_fields = item.variables.reduce((fields, variable) => {
          fields[variable] = { multiline: true };
          return fields;
        }, {});
      }

      return match;
    }),
  };

  return yaml.dump(yamlConfig);
}

module.exports = convertToYaml;