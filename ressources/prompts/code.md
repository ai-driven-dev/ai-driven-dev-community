# 🖥️ AI Driven Dev - Prompts (`:code`)

Related to code interaction (eg: with Copilot).

- [🧑‍💻 Code](#-code)
  - [Change code without import `:codeChangeCodeWithoutImport`](#change-code-without-import-codechangecodewithoutimport)
  - [Create a function from specs `:codeCreateFunctionFromSpecs`](#create-a-function-from-specs-codecreatefunctionfromspecs)
  - [Merge file with almost same content `:codeMergeFileWithAlmostSameContent`](#merge-file-with-almost-same-content-codemergefilewithalmostsamecontent)
  - [Base on file, create a new file `:codeCreateNewFile`](#base-on-file-create-a-new-file-codecreatenewfile)
  - [Convert type into another type `:codeConvertType`](#convert-type-into-another-type-codeconverttype)
  - [Help me thinking `:codeCodingHelpThinking`](#help-me-thinking-codecodinghelpthinking)
  - [Improve code readability `:codeCodingImproveReadability` (WIP 🚧)](#improve-code-readability-codecodingimprovereadability-wip-)
  - [Give me an example of the usage of this function `:codeCodingProvideExampleUsage` (WIP 🚧)](#give-me-an-example-of-the-usage-of-this-function-codecodingprovideexampleusage-wip-)
- [🐛 Bug](#-bug)
  - [Detect code inconsistencies `:bugCodeDetectInconsistencies`](#detect-code-inconsistencies-bugcodedetectinconsistencies)
- [🔫 Debug](#-debug)
  - [Add logging to debug error `:codeDebugAddErrorLogging`](#add-logging-to-debug-error-codedebugadderrorlogging)
  - [Add logging with emojis `:codeDebugAddLoggingEmojis`](#add-logging-with-emojis-codedebugaddloggingemojis)
- [🔥 Performance](#-performance)
  - [Improve code performance `:codePerformanceImprove`](#improve-code-performance-codeperformanceimprove)
- [🧪 Testing](#-testing)
  - [Fill with Fake data `:codeTestingNewFakeFilledEntity`](#fill-with-fake-data-codetestingnewfakefilledentity)
  - [Create test structure from test cases `:codeTestingCreateTestStructure`](#create-test-structure-from-test-cases-codetestingcreateteststructure)
  - [Fill tests cases `:codeTestingFillTestCase`](#fill-tests-cases-codetestingfilltestcase)
  - [Mock inner function calls `:codeTestingMockInnerFunctionCalls`](#mock-inner-function-calls-codetestingmockinnerfunctioncalls)
  - [Create new unit tests `:codeTestingSetupStructure` (WIP 🚧)](#create-new-unit-tests-codetestingsetupstructure-wip-)
  - [Generate test for a specific function `:codeTestingGenerateSkeletonTest`](#generate-test-for-a-specific-function-codetestinggenerateskeletontest)
  - [Fixing code from test results `:codeTestingFixFailedTest` (WIP 🚧)](#fixing-code-from-test-results-codetestingfixfailedtest-wip-)
  - [Generate Unit Tests from a feature request `:codeTestingGenerateFromFeature` (WIP 🚧)](#generate-unit-tests-from-a-feature-request-codetestinggeneratefromfeature-wip-)
- [🎯 Test-First](#-test-first)
  - [Rewrite function based on a test expectations `:codeTestFirstRewriteFunction`](#rewrite-function-based-on-a-test-expectations-codetestfirstrewritefunction)
  - [Function implementation based on a test `:codeTestFirstImplementFunction`](#function-implementation-based-on-a-test-codetestfirstimplementfunction)
  - [Check function implementation based on unit testings `:codeTestingCheckFunctionImplementation`](#check-function-implementation-based-on-unit-testings-codetestingcheckfunctionimplementation)
- [💬 Comments](#-comments)
  - [Comments must match code actions `:codeCommentsCheckCodeIsMatching`](#comments-must-match-code-actions-codecommentscheckcodeismatching)
  - [Comment the code to make the hard part easier `:codeCommentsCommentHardParts`](#comment-the-code-to-make-the-hard-part-easier-codecommentscommenthardparts)

## 🧑‍💻 Code

### Change code without import `:codeChangeCodeWithoutImport`

**Description**:

Sometimes some AIs like GitHub Copilot are inserting import statements aside to the code. This prompt is to avoid that.

**Prompt**:

```text
Do not import, just change the code to make it work.
```

### Create a function from specs `:codeCreateFunctionFromSpecs`

**Description**:

Create a function from specs.

**Prompt**:

```text
@workspace Based on those specs (see below), create a function that returns "[[what you want to return]]".

---
Verify that creating a tip defaults its status to "draft".
Ensure that a draft tip cannot be voted on.
Verify that once a tip is "scheduled", it cannot receive any more votes.
Check that "archived" tips cannot be voted on.
---
```

### Merge file with almost same content `:codeMergeFileWithAlmostSameContent`

**Description**:

Merge two files with almost the same content.

**Prompt**:

```text
@workspace Based on those two file names "[[filename 1]]" and "[[filename 2]]", merge logic to reduce code duplication.
```

### Base on file, create a new file `:codeCreateNewFile`

**Description**:

Create a new file based on a current file.

```text
@workspace base of "[[source file]]" file, create a similar "[[destination file]]" file structure, adapting the content to the new file.
```

### Convert type into another type `:codeConvertType`

**Description**:

Convert a type into another type.

**How to use the prompt**:

| Usage                   | Context                                                  |
|-------------------------|----------------------------------------------------------|
| 🔁 **Follow-up prompt** | None                                                     |
| 🗂️ **Requirements**     | None                                                     |
| 🔍 **Context**          | None                                                     |
| 📌 **Annotations**      | Optional `@workspace` if you decide to convert from paths|
| ✅ **Variables needed** | Yes                                                      |

**Prompt**:

```text
You goal is to code a convert function to transform a type into another.

Type to convert is:
[[Type to convert or path]]

Type to convert into is:
[[Type to convert into or path]]

For each property of the type to convert, find the corresponding property in the type to convert into.

Please provide the following code.
```

### Help me thinking `:codeCodingHelpThinking`

```text
I need you to help me think about the best way to implement this new functionality:
[[new functionality]]

Please provide the best coding steps regarding my existing code.
```

### Improve code readability `:codeCodingImproveReadability` (WIP 🚧)

```text
I need you to improve the readability of the following code.

Result should remain the same, but the code should be easier to read and understand.
```

### Give me an example of the usage of this function `:codeCodingProvideExampleUsage` (WIP 🚧)

```text
Provide an example of the usage of this function, input and output.
```

## 🐛 Bug

### Detect code inconsistencies `:bugCodeDetectInconsistencies`

```text
I need you to detect inconsistencies in the code.

Check for variable names, function names, and other inconsistencies in the code.
```

## 🔫 Debug

### Add logging to debug error `:codeDebugAddErrorLogging`

```text
Add logging to debug errors.
```

### Add logging with emojis `:codeDebugAddLoggingEmojis`

```text
Add beautiful logging steps with emojis.
```

## 🔥 Performance

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

## 🧪 Testing

### Create test structure from test cases `:codeTestingCreateTestStructure`

**Description:**

Create a test structure from test cases.

**Prompt**:

```text
@workspace read "[[package.json | composer.json]]" file to get testing framework.

Then generate testing structure only (inner tests are commented with "Arrange", "Act", "Assert" comments) from those sentences:

---
[[Test cases]]
---
```

### Fill tests cases `:codeTestingFillTestCase`

```text
@workspace for this test, fill existing test from implementation files: "vote.ts", only test logic, do not mock or stub anything.

Always arrange with valid fake data generated from object type.
```

### Fill with Fake data `:codeTestingNewFakeFilledEntity`

```text
@workspace Without importing, create a new fake filled entity for testing purposes for object "[[object name]]".
```

### Mock inner function calls `:codeTestingMockInnerFunctionCalls`

**Description:**

Generate code to mock inner function calls for a specific highlighted `code` or `import`.

**Prompt**:

```text
@workspace Mock inner function calls for testing.
```

### Create new unit tests `:codeTestingSetupStructure` (WIP 🚧)

**Description:**

Create a new unit test structure for a function.

- Pre-fill test scenarios from the test cases.
- Use `Mock`, `Stub`, `Spy`, `Fake` or `Test Parameters` if needed.

**Prompt**:

```text
@workspace

- Use GPT-4
- Read files content from: "vote.ts".
- List all functions.
- For each functions in those files, list inner function calls.
```

```text
@workspace Read files "vote.ts", then list the functions, for each function list the inner function calls (including other files).
```

### Generate test for a specific function `:codeTestingGenerateSkeletonTest`

**Description:**

Generate a skeleton test from input/output examples based on files.

**Prompt**:

```text
@workspace Based on those specs (see below), write tests for the function "canVote":

---
Verify that creating a tip defaults its status to "draft".
Ensure that a draft tip cannot be voted on.
Verify that once a tip is "scheduled", it cannot receive any more votes.
Check that "archived" tips cannot be voted on.
---
```

### Fixing code from test results `:codeTestingFixFailedTest` (WIP 🚧)

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

### Generate Unit Tests from a feature request `:codeTestingGenerateFromFeature` (WIP 🚧)

```text
Based on this test and the opened files ("[[Opened file to use]]"), I need you to create unit tests to describe "[[Feature section to describe]]".

Please:

- Keep same testing structure
- Import necessary files if needed
- Use proper naming and types depending of the variable to test
- Continue unit tests generation for the following functions: "[[functions to test]]"
```

## 🎯 Test-First

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
Write the function to implement for "getStatus" in order to make the tests pass.
```

### Check function implementation based on unit testings `:codeTestingCheckFunctionImplementation`

```text
Check if this test is correctly implemented in the highlighted function.
```

## 💬 Comments

### Comments must match code actions `:codeCommentsCheckCodeIsMatching`

```text
Check that following function name and comments if any are matching code actions.
```

### Comment the code to make the hard part easier `:codeCommentsCommentHardParts`

```text
Comment the code to make the hard parts easier to understand.
```
