const generateYaml = require('./generateYaml');

describe('generateYaml', () => {
  it('should generate a valid YAML configuration', () => {
    const espansoConfig = [
      {
        trigger: ':prtsme',
        form: 'I am a senior software engineer on JavaScript but I prefer to use TypeScript.',
        variables: [],
      },
      {
        trigger: ':prproject',
        form: 'My project is about:\n[[Fully detailed explanation]]',
        variables: ['fully_detailed_explanation'],
      },
    ];

    const expectedYaml = `matches:
  - trigger: ':prtsme'
    replace: I am a senior software engineer on JavaScript but I prefer to use TypeScript.
  - trigger: ':prproject'
    replace: |-
      My project is about:
      [[Fully detailed explanation]]
    form_fields:
      fully_detailed_explanation:
        multiline: true
`;

    const yamlContent = generateYaml(espansoConfig);
    expect(yamlContent).toBe(expectedYaml);
  });
});
