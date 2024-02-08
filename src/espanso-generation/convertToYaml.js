const yaml = require('js-yaml');

function convertToYaml(espansoConfig) {
  const yamlConfig = {
    matches: espansoConfig.map((item) => {
      const match = {
        trigger: `:${item.trigger}`,
        replace: item.form,
      };

      if (item.variables.length > 0) {
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
