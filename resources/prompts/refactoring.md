# 🖥️ AI Driven Dev - "Refactoring" Prompts (`:refac`)

- [� Audit](#-audit)
  - [Audit code `:refacAuditCode`](#audit-code-refacauditcode)
  - [Audit structure `:refacAuditStructure`](#audit-structure-refacauditstructure)
- [🔄 Refactoring](#-refactoring)
  - [Extract generic code `:refacExtractGenericCode`](#extract-generic-code-refacextractgenericcode)
  - [List potential refactoring `:refacListPotentialRefactoring`](#list-potential-refactoring-refaclistpotentialrefactoring)
  - [Rewrite better code `:refacRewrite`](#rewrite-better-code-refacrewrite)
  - [List steps to simplify code `:refacRefactor`](#list-steps-to-simplify-code-refacrefactor)
- [🔥 Performance](#-performance)
  - [Improve code performance `:refacPerformanceImprove`](#improve-code-performance-refacperformanceimprove)

## 🚔 Audit

### Audit code `:refacAuditCode`

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

### Audit structure `:refacAuditStructure`

```text
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
```

## 🔄 Refactoring

### Extract generic code `:refacExtractGenericCode`

Hint : the more files you gave, the better: eg for example a generic code, better have two files with similar content to help the LLM about what to extract

```text
I want to make this file generic so it can "have a generic useInfinite() to share code, so I can call getCategories or getItems with same generic function".

Following content is variable and that need to be extracted (also check for specific elements that I might have missed.):
- Everything related to "category" or "categories"
- including "transform" function

Please:
1. List all the elements that need to be extracted.
2. List all the elements that do not need to be removed.
3. List the steps to achieve the refactoring.
4. Provide the code to add or modify (do not make unnecessary changes).

#file
```

### List potential refactoring `:refacListPotentialRefactoring`

```text
I want to make this file generic so it can: "[[what it should do]]".

Based on my tech, can you propose the 3 best way to do so?

For each proposition, provide:
- The code to add
- Advantages and disadvantages
- The impact on the code

Following content is variable: 
[[function, variable, constant names...]]

#file
```

### Rewrite better code `:refacRewrite`

```text
I need you to rewrite the following code #selection to make it better.

If necessary, use those refactoring techniques:
- Extract method
- Inline method
- Rename method
- Move method
- Group similar methods, variables or properties
- Encapsulate field
- Decompose conditional
- Consolidate conditional expression
- Consolidate duplicate conditional fragments
- Remove assignments to parameters
- Type hinting
- Add full function documentation

Focus on code performance.

Make sure the code is still readable and maintainable, doing its best to keep the same logic.
```

### List steps to simplify code `:refacRefactor`

```text
Read #selection to simplify and beautify my code.

Analyze everything that seem unclear, not performant, ugly, too complicated.

Make a bullet list of every potential readability issues that you identified.
```

## 🔥 Performance

### Improve code performance `:refacPerformanceImprove`

```text
I need you to improve the performance of the following code.

1. Find the main performances issues in the code.
2. List the necessary steps to improve the performance of the code.
3. Implement the necessary changes to improve the performance of the code.
4. Make sure the code is still readable and maintainable.
5. Propose at the end 3 other ways to improve the code's performance, sorted by importance.

Important rules:
- Do not change the logic of the code.
- Input and output of the code should remain the same.
```
