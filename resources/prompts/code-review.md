# 🖥️ AI Driven Dev - "Code Review" Prompts (`:review`)

## ✏️ Commit Messages

### Generate a commit message `:reviewCommitMessage`

**Description**:

Generate a commit message for the changes.

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot, AIDDC Scripts                              |
| 🔍 **Context**          | When you want to commit, fast!                             |
| ✨ Required before      | Running `aidd-commit-last` and `aidd-changes`.             |

**Prompt**:

```text
Goal:
Generate only a commit message to summarize the changes made.

Rules:
- Should be formatted in Conventional Commit.
- Remain consistent with the last commit messages if possibles.
- Focus on describing the changes made, not the implementation details.

Important note:
Commits should be small and focused on a single change.
If there is too many changes, provide git commands to:
- Reset and change directory to the root of the repository.
- Break down the changes into smaller, more focused commits for each files.
- Generate a commit message for each commit.

Previous commit messages:
[[Copy your last 10 commit messages here]]

Current git changes:
[[Copy your git changes here]]
```

## 📃 Code Review

### Validate correctness of the code `:reviewValidateCode`

**Description**:

Validate that the code is correct and does what it is supposed to do.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | Select the code you want to be checked.                    |

**Prompt**:

```text
Can you validate that this code is correct and does what it is supposed to do?

Check every aspect of the code and make sure that it is working as expected.

If not, list the potential issues in bullet points and suggest possible solutions.
```

### Create a PR `:reviewCreatePullRequest`

**Description**:

Create a pull request from an AI template (eg: using `.github/pull_request_template.md`) or custom one.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot, AIDDC Scripts                              |
| 🔍 **Context**          | After your finished your code review, you can create a PR. |
| ✨ Required before      | Running `aidd-changes` or `aidd-changes-from-main`.        |
| 🔥 Hint                 | You "can" use the `.github/pull_request_template.md` file. |

**Prompt**:

```text
Goal: Create a pull request for my changes.

Rules:
- Use the following template file: #file
- "AI instruction" comments are hints for you, follow them carefully, then, delete them.
- Here are the changes:
[[Copy your git changes (from main?) here]]
```
