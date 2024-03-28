# 🫂 Contributing for prompts (with text expansion)

Your contributions are vital to making this project great and we welcome contributions from everyone.

- [👮 General Guidelines](#-general-guidelines)
- [✒️ Trigger Conventions](#️-trigger-conventions)
  - [Title](#title)
  - [Section](#section)
  - [Action](#action)
  - [Target (optional)](#target-optional)
- [📜 Template Rules](#-template-rules)
  - [Titles](#titles)
  - [Variables](#variables)
- [🔥 Full Example](#-full-example)
- [😣 Need Help?](#-need-help)

## 👮 General Guidelines

- [x] **Ensure your prompt** are clear, concise, and relevant to the project.
- [x] **Search for already existing** ones.
- [x] **Update any relevant documentation** or tests to reflect your changes.
- [x] **Follow the project's guidelines** on formatting and style for prompts.

## ✒️ Trigger Conventions

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

## 📜 Template Rules

### Titles

Always add a title, it can be a title 2 to 6 (`##` to `######`)

```markdown
### Extract details from image `:yourTriggerHere`
```

### Variables

You can use variables in your prompt which make them so efficient!

- Inline variable: `"[[my inline variable]]"`
- Multi-line variable: `[[my multi-line variable]]`
- Select variable: `[[my select variable|option1|option2]]`

![Espanso Window](./images/espanso-prompt-window.png)

## 🔥 Full Example

Not specifying (`:trigger`) in the title will not trigger Espanso config changes.

````markdown
#### My title for my awesome prompt `:myPrompt`

Here is a description of my prompt.

```text
This prompt took 1 variable here: "[[var_1]]".

And another (multiline) here:

[[var_2]]

Depending on the context, you can select a value here:

[[var_3|option1|option2|option3]]
```
````

## 😣 Need Help?

If you need help or have any questions, feel free to open an issue for discussion or reach out to the project maintainers.

**[Join our Discord 🇫🇷](https://discord.gg/mcNwacZCvC) to discuss your ideas and get help from the community.**
