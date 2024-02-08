# Contributing for prompts (with text expansion)

I am thrilled that you're interested in contributing to our project! Your contributions are vital to making this project great and we welcome contributions from everyone.

## Guidelines

- Ensure they are clear, concise, and relevant to the project.
- Search for already existing one.
- Update any relevant documentation or tests to reflect your changes.
- Follow the project's guidelines on formatting and style for prompts.

### Naming Conventions

### Title Structure

- Prompts
  - Code (`:c`)
  - Instruct (`:instruct`)
  - LLM (`:llm`)
  - Languages (`:l`)
    - TypeScript (`:lts`)

### Action Structure

Use a verb to describe the action you want to perform.

- `improve`
- `convert`
- `optimize`
- `log`

### Target Structure

The element you want to interact with.

- `object`
- `answer`
- `code`

### Examples

```text
:ltstypeobj
:llmevalanswer
:llmimproveprompt
```

## Rules

- Always add a title, it can be a title 2 to 6 (`##` to `######`)
- Use `snake_case_variables` if necessary

## Adding New Prompts

Important to note: **Not specifying (`:trigger`) in the title will not trigger Espanso config change.**

1. Fork the repository and create a new PR.
2. Open the main [Readme](./README.md) file (or one of the [agents](./agents/)) you want to change.
3. Add and commit your new prompt following this exact structure.

```text
#### My title for my awesome prompt `:myPrompt`

I am a very good prompt for software engineers specialized in [var_1].

Here are some more typings:

[[var_2_multiline]]

And a simple one again to close the prompt.

[var_with_a_fancy_name]
```

## Need Help?

If you need help or have any questions, feel free to open an issue for discussion or reach out to the project maintainers.
