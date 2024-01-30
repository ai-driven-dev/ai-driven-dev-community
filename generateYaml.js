const yaml = require('js-yaml');

function generateYaml(espansoConfig) {
  const yamlConfig = {
    matches: espansoConfig.map((configItem) => {
      const matchItem = {
        trigger: configItem.trigger,
        replace: configItem.form,
      };

      // If there are variables, add form_fields
      if (configItem.variables.length > 0) {
        matchItem.form_fields = {};
        configItem.variables.forEach((variable) => {
          matchItem.form_fields[variable] = { multiline: true };
        });
      }

      return matchItem;
    }),
  };

  // Convert the JavaScript object to a YAML string
  // Use the "styles" option to specify custom styles for different data types
  return yaml.dump(yamlConfig, {
    lineWidth: -1, // Prevent line wrapping
    noRefs: true, // Do not create YAML references
    styles: {
      '!!null': 'canonical', // Dump null as ~
      '!!bool': 'lowercase', // Dump boolean values in lowercase
      '!!int': 'decimal', // Dump integers in decimal format
      '!!float': 'lowercase', // Dump floats in lowercase
      // Use block literals for multi-line strings, double quotes otherwise
      '!!str': (value) => (/\n/.test(value) ? '|' : '"'),
    },
    // Specify the quoting type for strings that are not multi-line
    quotingType: '"',
  });
}

module.exports = generateYaml;
