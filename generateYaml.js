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
          if (!matchItem.replace.includes('"[[' + variable + ']]"')) {
            matchItem.form_fields[variable] = { multiline: true };
          }
        });
      }

      return matchItem;
    }),
  };

  // Convert the JavaScript object to a YAML string
  // Use the "styles" option to specify custom styles for different data types
  return yaml.dump(yamlConfig, {
    lineWidth: -1, // Disable line wrapping
    noRefs: true, // Prevent creating YAML references
    noCompatMode: true, // Disable compatibility mode to allow special characters in strings
    styles: {
      '!!null': 'canonical', // Dump null as ~
      '!!bool': 'lowercase', // Dump boolean values in lowercase
      '!!int': 'decimal', // Dump integers in decimal format
      '!!float': 'lowercase', // Dump floats in lowercase
      '!!str': 'fold', // Use block style for multi-line strings
    },
    quotingType: '"', // Use double quotes for strings
  });
}

module.exports = generateYaml;
