# AI Driven Dev Community

Every good software engineer needs good prompts!

- [AI Driven Dev](#ai-driven-dev)
  - [Prompts](#prompts)
  - [Agents](#agents)
  - [Snippets](#snippets)
  - [Text expansion](#text-expansion)
  - [Contribution](#contribution)
  - [A french community](#a-french-community)
  - [Bonus](#bonus)
    - [Coming Soon](#coming-soon)

## Prompts

The best list of software engineering prompts for AI you can find.

- [For coding](./prompts/code.md)
- [For instructions](./prompts/instruct.md)
- [For LLM optimizations](./prompts//llm.md)

## Agents

I prompted 2 AIs to act like the best software engineers.

> It is working much better that the original version and works even better with the prompts under.

- GPT Access : [Agile Coach (PO, PM...)](https://chat.openai.com/g/g-S1wfMarvA-ai-programming-expert)
- GPT Access : [Senior Developer](https://chat.openai.com/g/g-KbmBiVnyq-agile-gpt)

Instruction sources used to fine-tune the LLM to act as...

- [Agile Coach (PO, PM...)](./agents/agile.md)
- [Senior Developer](./agents/mentor-developer.md)

## Snippets

AI makes way much easier code generation.

But sometimes, when you exactly know what you need, you do not necessary need a Gen-AI to write obvious code for you.

Thus, AI can be mistaken, as a developer, you are the master of your code structure.

- [VSCode Snippets](./vscode/)
  - [TypeScript](./vscode/typescript.json)
  - [React](./vscode/typescriptreact.json)
- JetBrains Snippets (Not available, want to add yours? [Contribute!](../CONTRIBUTING.md))

## Text expansion

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

- Use a keyboard shortcut (like `:ltstypeobject`)
- Or by using the dialog box (`⌥ + SPACE` or `ALT + SPACE`)
  


## Contribution

🚀 Contribution are welcomed, [check the guide](./contributing.md)

- Community prompt list, so create a PR with your needs ❤️
- Report prompting issues / improvements at [hello@alexsoyes.com](mailto:hello@alexsoyes.com)

## A french community

Join a group of french software engineers that are using AI.

[![Discord](https://img.shields.io/badge/Discord-7289DA?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/mcNwacZCvC)

## Bonus

### Coming Soon

More prompts will be released in the following next weeks.

Here are some more prompts you might want to check about:

- <https://doc.clickup.com/36022947/d/h/12ban3-7144/106554999066a43>
- <https://doc.clickup.com/36022947/d/h/12ban3-7042/bb657cd40f843e7>
