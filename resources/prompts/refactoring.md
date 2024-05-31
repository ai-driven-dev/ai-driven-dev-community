# 🖥️ AI Driven Dev - "Refactoring" Prompts (`:refac`)

Refactoring prompts for developers that need to improve their codebase!

- [🕵️ Agents](#️-agents)
  - [Create an agent to audit your code `:refacAgentAuditCode`](#create-an-agent-to-audit-your-code-refacagentauditcode)
- [Audit](#audit)
  - [Audit structure of the application `:refacAuditStructure`](#audit-structure-of-the-application-refacauditstructure)
- [🔄 Refactoring](#-refactoring)
  - [Merge 2 files with almost same content `:refacMergeFiles`](#merge-2-files-with-almost-same-content-refacmergefiles)
  - [Create a new generic file from code `:refacExtractGenericFile`](#create-a-new-generic-file-from-code-refacextractgenericfile)
  - [Advice generic function creation `:refacGenericFunctionCreationAdvice`](#advice-generic-function-creation-refacgenericfunctioncreationadvice)
  - [Rewrite better code `:refacRewriteBetterCode`](#rewrite-better-code-refacrewritebettercode)
  - [List steps to simplify code `:refacListSteps`](#list-steps-to-simplify-code-refacliststeps)
- [🔥 Performance](#-performance)
  - [Improve code performance `:refacPerformanceImprove`](#improve-code-performance-refacperformanceimprove)

## 🕵️ Agents

### Create an agent to audit your code `:refacAgentAuditCode`

**Description**:

This prompt create a new "review" agent that can audit your code for your refactoring phases.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT / GitHub Copilot                                   |
| 🔍 **Context**          | If you need to audit the code at any point.                |

**Prompt**:

```text
Your task is to analyze the provided code snippet and suggest improvements to optimize its performance.

Identify areas where the code can be made more efficient, faster, or less resource-intensive.

Provide specific suggestions for optimization, along with explanations of how these changes can enhance the code’s performance.

The optimized code should maintain the same functionality as the original code while demonstrating improved efficiency.

When providing your recommendations, consider factors such as algorithm complexity, data structures, and code organization.

Please wait for the user to provide the code snippet before proceeding with the audit, and ensure that your suggestions are clear and well-explained.

Rules:
- Reduce complexity.
- Improve readability.
- Enhance performance.
- Merge similar functions into one.
- Remove redundant code.

Steps:
1. Explain what the code is doing (in very concise bullet points).
2. List those points, then give detailed explanations of the impact and propose specific recommendations for optimizing the code (formatted as bullet points).
  - identified performances issues
  - identified readability issues
  - identified maintainability issues
3. Rewrite full code snippets with your improvements.
4. At the end of the audit, please ask me if I want to repeat the audit from step 2. with this time, the newly generated code, until you get a "no" or you reach a maximum of 3 iterations, or you are satisfied with the result.
```

## Audit

### Audit structure of the application `:refacAuditStructure`

**Description**:

Audit your project structure to identify potential issues in your architecture and suggest improvements.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT                                                    |
| 🔍 **Context**          | When you want to step back an check your code structure.   |

**Prompt**:

````markdown
As a software architect, you are tasked with conducting a comprehensive audit of a project structure. 
Your responsibilities include:

- Identifying and listing potential issues in the project structure.
- Proposing improvements for each identified issue, with clear explanations of why these improvements are beneficial.
- Reviewing the project for any empty folders, suggesting a purpose or recommending removal.
- Checking for duplicated files and proposing strategies to eliminate redundancies.
- Evaluating file naming conventions to ensure clarity, conciseness, and consistency.
- Identifying any files that are overly large or too generically named, suggesting better practices.
- Providing a detailed list of files or folders with issues.
- If necessary, suggesting a more efficient overall project structure.

For each of the above points, write a detailed explanation in this format:
"""
# Issue

Explanation of the issue and why it is problematic.

## Recommendations

Proposed solutions to the issue, with clear explanations of why they are beneficial.

## Affected files or folders

List of files or folders affected by the issue.
"""

Please provide a thorough analysis and structured recommendations, never recommend "hypothesis" or "guesses", use data from uploaded project structure only.

Project structure is: #file
Project stack is: #file
````

## 🔄 Refactoring

### Merge 2 files with almost same content `:refacMergeFiles`

**Description**:

Merge two files with almost the same content.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | Open the 2 files in your editor, side-by-side.             |

**Prompt**:

```text
Merge logic of those files to reduce code duplication.

File 1: #file
File 2: #file
```

### Create a new generic file from code `:refacExtractGenericFile`

**Description**:

Extract a generic code from 1 or n files to make it reusable in other parts of the application.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | When you want a new generic function.                      |
| 🔥 Hint                 | The more files you gave, the better: eg for example a generic code, better have two files with similar content to help the LLM about what to extract. |

**Prompt**:

```text
I want to make this file generic so it can "[[purpose]]".

Follow content in variable that need to be extracted (also check for specific elements that I might have missed.):
[[specific elements that must be extracted]]

Please:
1. List all the elements that need to be extracted.
2. List all the elements that do not need to be removed.
3. List the steps to achieve the refactoring.
4. Provide the code to add or modify (do not make unnecessary changes).

File to make generic: #file
Another file to help: #file
```

### Advice generic function creation `:refacGenericFunctionCreationAdvice`

**Description**:

Advice on a generic function creation.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT, Github Copilot                                    |
| 🔍 **Context**          | When you need refactor but not sure on how.                |

**Prompt**:

```text
I want to make this file generic so it can: "[[what it should do]]".

Based on my tech, can you propose the 3 best way to do so?

For each proposition, provide:
- The code to add.
- Advantages and disadvantages.
- The impact on the code.

Things that need to be generic:
[[function, variable, constant names...]]

Implementation file: #file
```

### Rewrite better code `:refacRewriteBetterCode`

**Description**:

Just make your code a bit better.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | Improve your code readability at any stage.                |

**Prompt**:

```text
I need you to rewrite the following code #selection to make it better.

If necessary, use those refactoring techniques:
- Extract method.
- Inline method.
- Rename method.
- Move method.
- Group similar methods, variables or properties.
- Encapsulate field.
- Decompose conditional.
- Consolidate conditional expression.
- Consolidate duplicate conditional fragments.
- Remove assignments to parameters.
- Type hinting.
- Add full function documentation.

Focus on code performance.

Make sure the code is still readable and maintainable, doing its best to keep the same logic.
```

### List steps to simplify code `:refacListSteps`

**Description**:

List steps to simplify and beautify your code if you are not sure about its "quality".

**How to use the prompt**:

> Note : Bold usages are required, others are optional.

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT                                                    |
| 🔍 **Context**          | When you want to find issues in the written code.          |

**Prompt**:

```text
Read #selection to simplify and beautify my code.

Analyze everything that seem unclear, not performant, ugly, too complicated.

Make a bullet list of every potential readability issues that you identified.
```

## 🔥 Performance

### Improve code performance `:refacPerformanceImprove`

**Description**:

Improve your code execution speed.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot             .                               |
| 🔍 **Context**          | Use it if this part of your app is kind of slow.           |

**Prompt**:

```text
I need you to improve the performance of the following code: #selection.

1. Find the main performances issues in the code.
2. List the necessary steps to improve the performance of the code.
3. Implement the necessary changes to improve the performance of the code.
4. Make sure the code is still readable and maintainable.
5. Propose at the end 3 other ways to improve the code's performance, sorted by importance.

Important rules:
- Do not change the logic of the code.
- Input and output of the code should remain the same.
```
