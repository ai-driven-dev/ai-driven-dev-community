# AI Driven Dev - Prompts (`:code`)

Related to code interaction (eg: with Copilot).

- [🧑‍💻 Code](#-code)
  - [Help me thinking `:codeCodingHelpThinking`](#help-me-thinking-codecodinghelpthinking)
- [🧪 Testing (WIP)](#-testing-wip)
  - [Fixing code from test results `:codeTestingFixFailedTest`](#fixing-code-from-test-results-codetestingfixfailedtest)
  - [Generate fake testing data `:codeTestingGenerateFakeData`](#generate-fake-testing-data-codetestinggeneratefakedata)
  - [Generate Unit Tests from a feature request `:codeTestingGenerateFromFeature`](#generate-unit-tests-from-a-feature-request-codetestinggeneratefromfeature)
- [🎯 Test-First (WIP)](#-test-first-wip)
  - [Function implementation based on a test `:codeTestFirstImplementFunction`](#function-implementation-based-on-a-test-codetestfirstimplementfunction)
- [💬 Comments](#-comments)
  - [Comments must match code actions `:codeCommentsCheckCodeIsMatching`](#comments-must-match-code-actions-codecommentscheckcodeismatching)

## 🧑‍💻 Code

### Help me thinking `:codeCodingHelpThinking`

```text
I need you to help me think about the best way to implement this new functionality:
[[new functionality]]

Please provide the best coding steps regarding my existing code.
```

## Performance 🔥

### Improve code performance `:codePerformanceImprove`

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

## 🧪 Testing (WIP)

### Fixing code from test results `:codeTestingFixFailedTest`

- Open the required file to fix the code.
- Select the code to fix.
- If using Copilot, prefix the prompt with `@workspace /fix`

```text
The test output the following error (surrounded by "---" delimiters): 

---
[[Test results]]
---

Follow those steps:

1. Summarize in 1 sentence what the issue is.
2. Check the code implementation to find the issue, not the test.
3. Traverse the whole code used in the function, because the issue could be located elsewhere
  - in a external type
  - in a constant variable defined above in the file
  - in a function called in the function
  - from an incorrect copy/paste in names
  - etc
4. Detail what the function is doing, be precise if other part of the code is involved.
5. List all inconsistencies (minimum 3) you find regarding the issue, sorted by relevance.
6. Once you analyze all source code in this file, fix the issue first issue from your inconsistencies list.
```

### Generate fake testing data `:codeTestingGenerateFakeData`

- Highlight the object, type or schema you want generate fake data for

```text
Create fake data for testing purposes. The data should be in the same format as the original data, but with fake values. 

```

### Generate Unit Tests from a feature request `:codeTestingGenerateFromFeature`

```text
Based on this test and the opened files ("[[Opened file to use]]"), I need you to create unit tests to describe "[[Feature section to describe]]".

Please:

- Keep same testing structure
- Import necessary files if needed
- Use proper naming and types depending of the variable to test
- Continue unit tests generation for the following functions: "[[functions to test]]"
```

## 🎯 Test-First (WIP)

### Rewrite function based on a test expectations `:codeTestFirstRewriteFunction`

**Description**:

Rewrite the function to make the test pass, and keep its logic.

**Usage**:

| Context | Description |
| ----- | ----------- |
| 🎯 Where | Navigate to the file where your function to change is located. |
| ＠ Annotations | `@workspace` annotation in Copilot might be used. |
| 🫴 Variables | *"Test that should pass"* is the test with the expectations you want your function be changed with. |

**Prompt**:

```markdown
1. Based on this test and its expectations, please acknowledge the tested function.
2. List the necessary steps to change in the code to make the test pass.
3. Rewrite the function to make the test pass but keep its logic.
[[Additional context like your implementation ideas]]

Here is the test that should pass:
[[Test that should pass]]
```

### Function implementation based on a test `:codeTestFirstImplementFunction`

```text
Based on this test (surrounded by "---" delimiters), please write the function to implement in order to make the test pass.

---
[[Test to implement]]
---
```

## 💬 Comments

### Comments must match code actions `:codeCommentsCheckCodeIsMatching`

```text
Check that following comments are matching code actions.
```
