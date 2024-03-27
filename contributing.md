# Contributing for prompts (with text expansion)

I am thrilled that you're interested in contributing to our project! Your contributions are vital to making this project great and we welcome contributions from everyone.

- [Guidelines](#guidelines)
- [Naming Conventions](#naming-conventions)
  - [Title](#title)
  - [Section](#section)
  - [Action](#action)
  - [Target (optional)](#target-optional)
- [Rules](#rules)
- [Adding New Prompts](#adding-new-prompts)
- [Need Help?](#need-help)

## Guidelines

- Ensure they are clear, concise, and relevant to the project.
- Search for already existing one.
- Update any relevant documentation or tests to reflect your changes.
- Follow the project's guidelines on formatting and style for prompts.

## Naming Conventions

Triggers are named using the following structure:

| #1 Title | #2 Section | #3 Action | #4 Target (*optional*) | Result |
| ------ | -------- | ------- | ------- | ------ |
| `:instruct` | Image | ExtractInfo | Mockup | `:instructImageExtractInfoMockup` |
| `:code` | Test | Fix | FailedTest | `:codeTestFixFailedTest` |
| `:language` | Documentation | Convert | Object | `:languageDocumentationConvertObject` |

### Title

The main files of the repo. They are fixed:

- Prompts
  - Code (`:code`)
  - Instruct (`:instruct`)
  - Languages (`:language`)
    - TypeScript (`:languageTS`)
  - Dev (`:dev`) (*unrelated to AI*)
  - Various (`:various`) (*unrelated to AI*)

### Section

The section where the prompt is in the doc. Example:

- `Flow`
- `Documentation`
- `Database`
- `Image`
- `Test`

### Action

Use a verb to describe the action you want to perform. Example:

- `Improve`
- `Convert`
- `Optimize`
- `Log`
- `Jailbreak`

### Target (optional)

The element you want to interact with. Example:

- `Object`
- `Answer`
- `Code`

## Rules

- Always add a title, it can be a title 2 to 6 (`##` to `######`)
- Use `snake_case_variables` if necessary

## Adding New Prompts

Important to note: **Not specifying (`:trigger`) in the title will not trigger Espanso config changes.**

1. [Fork the repository](https://github.com/alexsoyes/ai-driven-dev-community/fork) and create a new PR.
2. Open the main [Readme](./README.md) file (or one of the [agents](./agents/)) you want to change.
3. Add and commit your new prompt following this exact structure.

```text
#### My title for my awesome prompt \`:myPrompt\`

Here is a description of my prompt.

\```text

This prompt took 1 variable here: "[[var_1]]".

And another (multiline) here:

[[var_2]]
\```
```

## Need Help?

If you need help or have any questions, feel free to open an issue for discussion or reach out to the project maintainers.

**[Join our Discord 🇫🇷](https://discord.gg/mcNwacZCvC) to discuss your ideas and get help from the community.**
