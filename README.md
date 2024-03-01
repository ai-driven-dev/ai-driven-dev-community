# AI Driven Dev Community

A collection of tools, prompts, snippets and agents for developers that use AI, daily.

- [Prompts (for developers) 📝](#prompts-for-developers-)
- [LLM Instructions (for better responses) 💡](#llm-instructions-for-better-responses-)
- [Agents (for tech team) 🤖](#agents-for-tech-team-)
- [Snippets (to code faster) 🧑‍💻](#snippets-to-code-faster-)
- [Installation (Add your prompts) ✍️](#installation-add-your-prompts-️)
- [Text Expander (prompts available in you computer) ⚡️](#text-expander-prompts-available-in-you-computer-️)
- [French Community 🇫🇷](#french-community-)

## Prompts (for developers) 📝

A list of tailored prompts for developers, including instructions, coding and LLM optimizations.

- [For coding](./prompts/code.md)
- [For instructions](./prompts/instruct.md)
- [For LLM optimizations](./prompts//llm.md)

## LLM Instructions (for better responses) 💡

Custom instructions for developers to use with ChatGPT.

- [Custom Instructions in ChatGPT for Developers](./llm/chatgpt-custom-instructions-developer.md)

## Agents (for tech team) 🤖

2 fine-tuned AIs to work with you, as a tech team members, filled with knowledge and experience about their specific role.

**If you need to ask a question, or need help, do not use ChatGPT directly, use the agents instead.**

- GPT Access : [Agile Coach (PO, PM...)](https://chat.openai.com/g/g-S1wfMarvA-ai-programming-expert) (WIP) - ([Source](./agents/agile-coach.md))
- GPT Access : [Senior Developer](https://chat.openai.com/g/g-KbmBiVnyq-agile-gpt) ([Source](./agents/senior-developer.md))

## Snippets (to code faster) 🧑‍💻

AI makes way much easier code generation.

But sometimes, when you exactly know what you need, you do not necessary need a Gen-AI to write obvious code for you.

Thus, AI can be mistaken, as a developer, you are the master of your code structure.

- [VSCode Snippets](./snippets/vscode/)
  - [TypeScript](./snippets/vscode/typescript.json)
  - [React](./snippets/vscode/typescriptreact.json)
- JetBrains Snippets (Not available, want to add yours? [Contribute!](./contributing.md))

## Installation (Add your prompts) ✍️

If you want to contribute or use the available snippets.

- [Fork the repository](https://github.com/alexsoyes/ai-driven-dev-community/fork), then clone it.
- After project installation, run `npx husky-init` if you want to:
  - Automatically generate Espanso package and manifest (**on commit**)
  - Automatically replace VSCode snippets (**on pull**)
  - Automatically update Espanso's prompts (**post push**)
- Update Readmes to automatically generate the available prompts!

## Text Expander (prompts available in you computer) ⚡️

This repo is filled of **amazing prompt for developers**, mapped with my favorite text expander, [Espanso](https://espanso.org).

![Text expander with AI](docs/images/espanso-code-gpt.gif)
In combination with ChatGPT (or another generative AI).

Follow the [Espanso installation guide here](https://espanso.org/install/) for your operating system.

Then:

```shell
espanso install ai-driven-dev-prompts --git git@github.com:alexsoyes/ai-driven-dev-community.git --external
```

In order update:

```shell
espanso package update ai-driven-dev-prompts
espanso package update all # or if you want to update all your packages at once :)
```

Finally, just:

- Use a keyboard shortcut (like `:codeHelpMeThinking`)
- Or by using the dialog box (`⌥ + SPACE` or `ALT + SPACE`)

## French Community 🇫🇷

Join a group of french software engineers that are using AI.

[![Discord](https://img.shields.io/badge/Discord-7289DA?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/mcNwacZCvC)

Contribution are welcomed, [check the guide](./contributing.md)

- Community prompt list, so create a PR with your needs ❤️
- Report prompting issues / improvements at [hello@alexsoyes.com](mailto:hello@alexsoyes.com)
