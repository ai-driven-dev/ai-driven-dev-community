# AI Driven Dev Community

A collection of tools, prompts, snippets and agents for developers that use AI, daily.

- [📝 Prompts (for developers)](#-prompts-for-developers)
- [💡 LLM Instructions (for better responses)](#-llm-instructions-for-better-responses)
- [🧑‍💻 Snippets (to code faster)](#-snippets-to-code-faster)
- [⚡️ List of the best GPTs (for coding)](#️-list-of-the-best-gpts-for-coding)
- [💻 Install the prompts (in you computer)](#-install-the-prompts-in-you-computer)
- [✍️ Contribution (add your prompts)](#️-contribution-add-your-prompts)
- [🇫🇷 Demo for French Community](#-demo-for-french-community)

## 📝 Prompts (for developers)

A list of tailored prompts for developers, including instructions, coding and LLM optimizations.

- [Coding](./prompts/code.md) - Specific short coding prompts.
- [Instructions](./prompts/instruct.md) - Development flow to write better features.

## 💡 LLM Instructions (for better responses)

Custom instructions for developers to use with ChatGPT.

- [Custom Instructions in ChatGPT for Developers](./llm/chatgpt-custom-instructions-developer.md)

## 🧑‍💻 Snippets (to code faster)

AI makes way much easier code generation.

But sometimes, when you exactly know what you need, you do not necessary need a Gen-AI to write obvious code for you.

Thus, AI can be mistaken, as a developer, you are the master of your code structure.

- [VSCode Snippets](./snippets/vscode/)
  - [TypeScript](./snippets/vscode/typescript.json)
  - [React](./snippets/vscode/typescriptreact.json)
- JetBrains Snippets (Not available, want to add yours? [Contribute!](./contributing.md))

## ⚡️ List of the best GPTs (for coding)

Fine-tuned GPTs for developers help you to get the best out of your AI.

- [GPTs source list for developers 📋](./docs/ressources-list/gpt.md) (Include prompt source when available)

## 💻 Install the prompts (in you computer)

This repo is filled of **amazing prompt for developers**, mapped with my favorite text expander, [Espanso](https://espanso.org).

**Basically, all prompts in the repository are available as an Espanso package.**

This make it easy for every developer to use the prompts in their daily work.

<table>
  <tr>
    <td><img src="docs/images/espanso-code-gpt.gif" alt="Text expander with AI" width="400"/></td>
    <td><img src="docs/images/espanso-form-with-select.gif" alt="Text expander form with Select and Input" width="400"/></td>
  </tr>
  <tr>
    <td align="center">PROMPT TYPING EXPANSION : Pasting a prompt using Espanso 🔥</td>
    <td align="center">SEARCHING PROMPTS: Combination of prompt pasting using Input + Select ✨</td>
  </tr>
</table>

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

## ✍️ Contribution (add your prompts)

Contribution are welcomed, [check the guide](./contributing.md)!

This list is community based, feel free to improve it!

❤️ **2 minutes contribution guide:**

1. [Fork the repository](https://github.com/alexsoyes/ai-driven-dev-community/fork), then clone it.
2. After project installation, run `npx husky-init` if you want to **automatically**:
   - Generate [Espanso package](./ai-driven-dev-prompts/package.yml) and manifest (*on commit*)
   - Replace VSCode snippets (*on pull*)
   - Update Espanso's prompts (*post push*)
3. Update a Readme to automatically generate the prompts!

Report prompting issues / improvements at [hello@alexsoyes.com](mailto:hello@alexsoyes.com)

## 🇫🇷 Demo for French Community

Join a group of french software engineers that are using AI.

- [Demo](http://www.youtube.com/watch?v=1YvECxOn2_Q)
- [Discord](https://discord.gg/mcNwacZCvC)

[![Discord](https://img.shields.io/badge/Discord-7289DA?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/mcNwacZCvC)
