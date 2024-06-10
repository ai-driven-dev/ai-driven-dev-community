# 🖥️ AI Driven Dev - "Feature request" Prompts (`:feat`)

This document provides you with a list of prompts that you can use to request the AI to generate new features or to help you implement existing ones.

- [🆕 Create new features](#-create-new-features)
  - [Create a short feature in the code `:featCodeSpec`](#create-a-short-feature-in-the-code-featcodespec)
  - [Generate feature as User-Stories `:featGenerateUS`](#generate-feature-as-user-stories-featgenerateus)
  - [Extract development steps `:featExtractDevSteps`](#extract-development-steps-featextractdevsteps)
  - [Extract coding steps `:featExtractCodingSteps`](#extract-coding-steps-featextractcodingsteps)
- [👌 Existing features](#-existing-features)
  - [How to implement `:featExistingImplement`](#how-to-implement-featexistingimplement)
  - [How to implement (answer) `:featExistingImplementAnswer`](#how-to-implement-answer-featexistingimplementanswer)

## 🆕 Create new features

### Create a short feature in the code `:featCodeSpec`

**Description**:

Create a short feature in the code, from the IDE, interacting directly in the codebase.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | GitHub Copilot                                             |
| 🔍 **Context**          | Integrate a small feature rapidly in the codebase.         |

**Prompt**:

```text
@workspace from #codebase I need to implement this new feature:

---
[[Feature to build, be as detailed as possible]]
---

List all the required steps to code it.
```

### Generate feature as User-Stories `:featGenerateUS`

**Description**:

From a feature, generate a full user-stories with acceptance criteria and sub-tasks.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT, [GPT Agile Coach](../ai-driven-dev-community/resources/llm-instructions/gpt-agile-coach.md) |
| 🔍 **Context**          | If you feature is clear enough to generate a US.           |

**Prompt**:

```text
Goal: Generate a concise but full breakdown of this feature for our project.

Rules:
- Look for that information in your knowledge base to provide the best answer.
- If user-story is too big, group features the more you can.
- You MUST provide every required steps, do not forget anything.
- Do not generate code or command line instructions, focus on precise steps to achieve the outcome.
- It should include epics, user stories with acceptance criteria, sub-tasks.

Requested Feature (delimited by "---"):
---
[[Feature to build, be as detailed as possible]]
---

[[Project and lib setup have already been done | Project and lib setup might not have been done]].

Here is a styled markdown template example you can inspire yourself with (surrounded by "---" delimiter):
---
# Feature's name with Epic

## "User Story 1"

* Acceptance Criteria:
  * Given: ...
  * When: ...
  * Then: ...
  * And: ...

### Sub-tasks

* "Sub-task title 1.1"
  * Full step to achieve the outcome
  * ...
---
```

### Extract development steps `:featExtractDevSteps`

**Description**:

From a feature, extract the development steps for each sub-task.

Ask the LLM to generate fully detailed ticket based on the user stories for an individual sub-task.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT, [GPT RAG Dev](../llm-instructions/gpt-rag-developer.md) |
| 🔍 **Context**          | If the user-story is clear.                                |
| ✨ Required before      | Sub-task of a User-Story required.                         |
| ✅ External files       | Re-upload `project-documentation.txt` first.               |

**Prompt**:

```text
Given the task detailed below (surrounded by "---" delimiters), can you provide me with the development steps for each sub-task?

---
[[sub task full description]]
---

1. For each question, search into knowledge base.
2. Recall name, tech stack and libraries from [[package.json | composer.json | requirements.txt]] in the knowledge base.
3. Concentrate solely on the task at hand.
4. Identify any potential missing sub-tasks.
5. Reformulate tasks in one line.
6. Look for that information in your `project-documentation.txt` file in your knowledge base to provide the best answer.
7. Provide one-line action steps, specifying new or existing file paths without generating code.
```

### Extract coding steps `:featExtractCodingSteps`

**Description**:

Base on the detailed development steps, extract the coding steps for each sub-task.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT, [GPT RAG Dev](../llm-instructions/gpt-rag-developer.md) |
| 🔍 **Context**          | Go to development steps.                                   |
| ✨ Required before      | Development steps extracted before.                        |
| ✅ External files       | Uploaded `project-documentation.txt`.                      |

**Prompt**:

```text
Recalling our earlier discussion about the project tasks:

[[List of development steps if not specified above]]

1. For required libraries, list their versions for code generation.
2. Examine each sub-task for prerequisites or missing configurations, providing details as needed.
3. Consult the project structure information and advise on whether to create new files or modify existing ones.
4. Outline detailed coding steps.
5. Produce code using the most recent tech versions from our discussions, adhering to best practices.
```

## 👌 Existing features

### How to implement `:featExistingImplement`

**Description**:

For an existing feature, extract the development steps for each sub-task.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT, [GPT RAG Dev](../llm-instructions/gpt-rag-developer.md) |
| 🔍 **Context**          | If you need to implement a new feature.                    |

**Prompt**:
  
```text
Here are the specifications of the feature I need to code (surrounded by "---" delimiters).
---
[[Copy and paste the specifications here]]
---

Now, can you:
- Acknowledge it.
- Reformulate in bullet point grouped by section to show me that you understood what to do.
- Generate development steps (based on an existing projet you do not know nothing about).

Finally, ask me the relevant questions about implementing the feature in my project regarding my project's tech stack and libraries.

Ask anything you need to know, like existing code, libraries, mockups available, logics, etc.
```

### How to implement (answer) `:featExistingImplementAnswer`

**Description**:

Answer the Chat about how to implement the existing feature.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT, [GPT RAG Dev](../llm-instructions/gpt-rag-developer.md) |
| 🔍 **Context**          | After you started to talk to implement the existing feature. |
| ✨ Required before      | How to implement prompt                                    |

**Prompt**:
  
```text
Here are some answers about your previous questions.

Note that I cannot provide you with the full code, nor answer every details of the question.

Can you merge this new information together with the previous ones, and then:

- If there is not absolute need for more details, only give me the required development steps involved in coding the functionality?
- If you definitely need more details, please only ask me the crippling questions.

Here are my answers:

[[Your answers to the previous questions]]
```
