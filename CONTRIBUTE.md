# 🔥 Contributing Guide for developers

Your contributions are vital to making this project great and we welcome contributions from everyone.

- [👮 General Guidelines](#-general-guidelines)
  - [Text Expander: 'Espanso'](#text-expander-espanso)
- [💪 Need Help?](#-need-help)
- [✒️ Trigger Conventions](#️-trigger-conventions)
  - [Explanation](#explanation)
  - [Valid Triggers](#valid-triggers)
  - [Invalid Triggers](#invalid-triggers)
- [🚓 Rules](#-rules)
  - [Note on GitHub Copilot](#note-on-github-copilot)
  - [Titles](#titles)
  - [Description](#description)
  - [Variables](#variables)
- [📜 Template to Copy/Paste](#-template-to-copypaste)
  - [Example: An awesome testing prompt `:myExamplePromptForTesting`](#example-an-awesome-testing-prompt-myexamplepromptfortesting)

## 👮 General Guidelines

- [x] **Ensure your prompt** are clear, concise, and relevant to the project.
- [x] **Search for already existing** ones.
- [x] **Update any relevant documentation** or tests to reflect your changes.
- [x] **Follow the project's guidelines** on formatting and style for prompts.

### Text Expander: 'Espanso'

We use [Espanso](https://espanso.org/) as a text expander tool to help developers to write faster and more accurately.

It allows you to use `triggers` to expand text snippets... that act as prompts!

> Think of it as a library of prompts for developers that can be searched anytime and anywhere.

![VSCode with Espanso](./images/vscode-espanso-code-inline-chat.gif)

## 💪 Need Help?

If you need help or have any questions, feel free to open an issue for discussion or reach out to the project maintainers.

**Join our Discord 🇫🇷 to discuss your ideas and get help from the community.**

[![Discord](https://img.shields.io/badge/Discord-7289DA?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/BUcTKVfbGh)

## ✒️ Trigger Conventions

Triggers are named using the following structure:

| #1 Title     | #2 Section (optional)    | #3 Action   | #4 Target (*optional*) | Result                               |
| ------------ | ------------- | ----------- | ---------------------- | ------------------------------------ |
| `:test`  | Structure         | Create     | Empty             | `:testStructureCreateEmpty`    |
| `:fix`      | Debug          | Code         | Steps             | `:fixDebugCodeSteps`             |
| `:doc`  | Documentation | Search     | URL                 | `:docSearchURL`|

### Explanation

- **Title**: The main files of the repo, coming from `resources/prompts/*` directory (in 1st level title).
- **Section**: The concerned section in the prompt page (the 2nd level title). (*Optional*: only if trigger is matching the `title`, eg: `:img` and `image` or `:code` with `code`)
- **Action**: A verb to describe the action you want to perform.
- **Target**: The element you want to interact with. (*Optional*: because target could not exist)

### Valid Triggers

- ✅ `:imgExtractInfoMockup`
- ✅ `:testScenarioFixFailedTest`

### Invalid Triggers

- ❌ `:bugfixingImageExtractInfoMockup` (invalid *title* not existing in `resources/prompts/*`)
- ❌ `:codeImageInfo` (missing *action*)
- ❌ `:testFix` (missing *section*)

## 🚓 Rules

### Note on GitHub Copilot

Those prompt may contain GitHub Copilot annotations like `@workspace` or `#file` for instance.

> For better result, use those annotations at the end of the line.

### Titles

Always add a title, it can be a title 2 to 6 (`##` to `######`) and end with the trigger (`:yourTriggerHere`).

Not specifying (`:trigger`) in the title will not trigger Espanso config changes.

![Espanso text trigger](./images/chatgpt-espanso-text-trigger.gif)

### Description

- Keep the description short and concise (less than 20 words), focus on essential.
- End your sentence with dot `.` whenever possible (if the last word is a selector like `#codebase` , `#file` etc, it might not be needed)

### Variables

You can use variables in your prompt which make them so efficient!

| Variable Type | Description | Example |
| --- | --- | --- |
| Inline variable | For quick sentence completion | `"[[my inline variable]]"` |
| Multi-line variable | For detailed information or code block | `[[my multi-line variable]]` |
| Select variable | For restricted multiple choices | `"[[option0\|option1\|option2]]"` |

![Espanso Window](./images/espanso-prompt-window.png)

## 📜 Template to Copy/Paste

**Note**:

- Remove the table line if not needed.

````markdown
### My title for my awesome testing prompt `:myExamplePromptForTesting`

**Description**:

> What the prompt is about, why should I use it, and when to use it, what to expect from it?

**How to use the prompt**:

> Note : Bold usages are required, others are optional.

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot, ChatGPT, [GPT Agile Coach](../ai-driven-dev-community/resources/llm-instructions/gpt-agile-coach.md), [GPT RAG Dev](../llm-instructions/gpt-rag-developer.md) |
| 🔍 **Context**          | Where to use it, on which file etc.                        |
| ✨ Required before      | Prompt triggers required before this one.                  |
| ✅ External files       | Files needed in order to use this prompt.                  |
| 📦 Dependencies         | Necessary installation to proceed before using.            |
| 🔥 Hint                 | Something to notice about this prompt.                     |
| ⚠️ Warning               | Warn the developer about a specific element.               |
| 📜 Todo                 | If more can be achieved in the next prompt release.        |

**Prompt/Code/Usage**:

```text
This prompt is about: "[[quick feature description]]".

You can you join GitHub Copilot files here:
- Implementation: #file
- Test: #file

As well as the #selection

Copy/paste the specifications:
[[List of specifications]]

And select the type of test you want to write:
[[unit|integration|end-to-end]]

@workspace might be useful here! Let's go!
```
````

### Example: An awesome testing prompt `:myExamplePromptForTesting`

This is a demo prompt for testing.

> 👉 TRY ME typing trigger `:myExamplePromptForTesting`

**Description**:

*This prompt is used to demo a test writing from feature and specifications.*
*You will be able to select the type of test you want to write.*

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🤖 **Tool**             | **ChatGPT**                                                |
| 🚀 **Author**           | [Alex so yes](https://www.linkedin.com/in/alexandre-soyer) |
| 🔍 **Context**          | Open your test file in your IDE                            |

**Prompt**:

```shell
I need you to write a test regarding feature: "[[quick feature description]]".

Implementation to test: #file:implementation.js

Here are the specifications:
[[List of specifications]]

Please select the type of test you want to write:
[[unit|integration|end-to-end]]
```
