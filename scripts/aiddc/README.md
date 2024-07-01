# AIDDC Scripts (in progress)

A list of aliases and pre-written scripts to help you inject AI into your dev workflow.

- [Installation](#installation)
- [Configuration](#configuration)
- [Guide](#guide)
  - [Available Commands](#available-commands)
    - [Ops](#ops)
    - [Asking AI](#asking-ai)
- [Development](#development)
  - [Scripts](#scripts)
  - [Next](#next)

## Installation

```bash
curl -sSf https://raw.githubusercontent.com/alexsoyes/ai-driven-dev-community/main/scripts/aiddc/install.sh | bash
```

## Configuration

Provide an OpenAI API key in the `.env` file.

```bash
OPENAI_API_KEY=sk-<your-api-key>
```

Or direcly in your `.bashrc` file.

```bash
export OPENAI_API_KEY=sk-<your-api-key>
```

## Guide

Use `aiddc-<command>` to run our scripts.

### Available Commands

There is two types of commands to help you.

- *Operation*: The ones which call the AI to help you with your code (e.g. `aiddc-commit-msg` - ask AI to generate a beautiful commit message for you).
- *Asking AI*: The ones which are doing easier operations (e.g. `aiddc-changes` - copy `git diff` in your clipboard).

> **Note:** On AI API call, the script will always ask you to confirm the action before proceeding to avoid extra cost.

#### Ops

- `aiddc-changes` - Copy the `git diff` output to your clipboard.
- `aiddc-changes-from-main` - Copy the `git diff main` output to your clipboard.
- `aidd-commit-last` - Copy last 10 commit messages to your clipboard.

#### Asking AI

- `aiddc-commit-msg` - Add an AI-generated commit message to your commit.

## Development

In the `aiddc` directory, you can run the following command to install the scripts locally and add the aliases to your `.bashrc` file.

### Scripts

When you do want to test your new scripts without pushing those to the repository.

```bash
cd scripts/aiddc
bash install-local.sh && source ~/.bashrc && aiddc-commit-msg  
```

### Next

- [ ] Add more scripts.
- [ ] Do not overwrite the existing scripts.
- [ ] Create a `.project` file at the root of the repository to store project info.
  - [ ] Inject those info in `system` prompt.
