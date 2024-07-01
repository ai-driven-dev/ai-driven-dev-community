# 🖥️ AI Driven Dev - "Refactoring" Prompts (`:refac`)

Refactoring prompts for developers that need to improve their codebase!

- [🕵️ Agents](#️-agents)
  - [Create an agent to audit your code `:refacAgentAuditCode`](#create-an-agent-to-audit-your-code-refacagentauditcode)
- [Audit](#audit)
  - [Audit structure of the application `:refacAuditStructure`](#audit-structure-of-the-application-refacauditstructure)
- [📐 Design patterns](#-design-patterns)
  - [List design patterns for a specific technology `:refacListDesignPatterns`](#list-design-patterns-for-a-specific-technology-refaclistdesignpatterns)
  - [Apply design pattern `:refacApplyDesignPattern`](#apply-design-pattern-refacapplydesignpattern)
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
| ✅ External files       | Package manager file and project structure.                |

**Prompt**:

````markdown
As a software architect, you are tasked with conducting a comprehensive audit of a project structure. 

Brief:
You are required to review, criticize the project structure and identify potential issues that could impact the project's maintainability, scalability, and overall efficiency.

Goal:
Propose improvements to the project structure to enhance its quality and ensure that it aligns with best practices.
Feat every issue regarding the "Project" info and its tech stack.

Rules:
- Empty files or folders.
- Duplicate files.
- Large files.
- Overly nested folders.
- Overloaded folders.
- Inefficient project structure.
- Inconsistent naming conventions, generic names, or unclear file organisation.
- Files in the wrong directory.
- Use architecture best practices.
- Find inconsistencies and risks.
- Propose actions to improve existing architecture.

Tasks:
1. List rules to check in bullet points, then add more relevant ones regarding the project stack (suffix those by 🆕 emoji to identify them) that can be detected using project structure and package manager file.
2. List every potential issue in the project structure.
3. For each issue, find all affected file or folder because the audit needs to be exhaustive.
4. Do not provide issue if there is no recommendation to solve it.
6. Only answer using "Tasks" and "Template" sections.

Template:
"""
# Architecture Audit

* Main technologies used in list.
* Description of the project.

## (emoji) Title of the issue

Very short explanation of the issue and why it is problematic.

* List of every affected files or folders.
  * ...
* Explanation of the issue.
* Short explanation of recommendations to solve the issue, provide tools or methods if necessary.
  * ...
* Example of how the issue can be fixed.
"""

Final steps at the end of the audit, ask the user to type:
1) Continue audit and ask user to specify more rules of your own.
2) Re-audit the project dismissing correct points.
3) Reupload new project structure and Re-audit.
4) Continue audit, AI will try to find new issues.
````

## 📐 Design patterns

### List design patterns for a specific technology `:refacListDesignPatterns`

**Description**:

List design patterns for a specific technology like React or TypeScript.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | GitHub Copilot, ChatGPT                                    |
| 🔍 **Context**          | When you want to refactor your code with design patterns.  |

**Prompt**:

```text
List the existing design patterns in the following code, if any: #selection.

Then, provide a list of design patterns that can be implemented in the selected code.

For each design pattern, provide:
- A very brief description of the design pattern.
- Why it is effective.
- The benefits and drawbacks of using the design pattern.
- An example of how the design pattern can be implemented in the selected technology.

Technology: "[[technology]]"
```

### Apply design pattern `:refacApplyDesignPattern`

**Description**:

Apply a design pattern to a specific code selection.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | GitHub Copilot, ChatGPT                                    |
| 🔍 **Context**          | When you want to refactor using a specific design pattern. |

**Prompt**:

```text
Apply the following design pattern to the selected code: #selection.

1. Check if the selected code can be refactored using the design pattern.
2. Explain how the design pattern can be applied to the selected code.
3. Provide the refactored code using the design pattern.

Design Pattern: "[[design pattern]]"
```

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
Goal:
Simplify and beautify this code.

#file

Rules:
- Analyze everything that seem unclear, not performant, ugly, too complicated.
- Make a bullet list of every potential readability issues that you identified.
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
