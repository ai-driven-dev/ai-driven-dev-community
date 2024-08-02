# 🖥️ AI Driven Dev - "Testing" Prompts (`:test`)

This document contains a list of prompts for developers that can be used to generate code snippets related to testing.

- [🎯 Test-First](#-test-first)
  - [Function implementation based on a test `:testFirstImplementFunction`](#function-implementation-based-on-a-test-testfirstimplementfunction)
  - [Check function implementation based on unit testings `:testCheckFunctionImplementation`](#check-function-implementation-based-on-unit-testings-testcheckfunctionimplementation)
- [🧪 Testing](#-testing)
  - [Test cases](#test-cases)
    - [List test cases from user-stories `:testListTestCases`](#list-test-cases-from-user-stories-testlisttestcases)
  - [Structure](#structure)
    - [Create empty test structure based on file `:testStructureCreateEmptyBasedOnFile`](#create-empty-test-structure-based-on-file-teststructurecreateemptybasedonfile)
    - [Create empty test structure `:testStructureCreate`](#create-empty-test-structure-teststructurecreate)
  - [Generate](#generate)
    - [Generate similar test case from another `:testGenerateTestCaseFromAnother`](#generate-similar-test-case-from-another-testgeneratetestcasefromanother)
    - [Generate test from and existing test cases `:testGenerateTestFromExistingTestCase`](#generate-test-from-and-existing-test-cases-testgeneratetestfromexistingtestcase)
    - [Generate a new test `:testGenerateNewTest`](#generate-a-new-test-testgeneratenewtest)
    - [Generate new test in a test suite `:testGenerateNewInTestSuite`](#generate-new-test-in-a-test-suite-testgeneratenewintestsuite)
    - [Generate new test from another test file `:testGenerateNewFromAnotherFile`](#generate-new-test-from-another-test-file-testgeneratenewfromanotherfile)
    - [Generate new data-testid `:testGenerateNewDataTestId`](#generate-new-data-testid-testgeneratenewdatatestid)
  - [Create](#create)
    - [Create new test object with "fake" properties `:testCreateNewFakeTestObject`](#create-new-test-object-with-fake-properties-testcreatenewfaketestobject)
  - [Fill / Add](#fill--add)
  - [List untested behaviors](#list-untested-behaviors)
    - [Fill empty test cases expectations `:testFillTestCases`](#fill-empty-test-cases-expectations-testfilltestcases)
  - [Mock](#mock)
    - [Mock function from file `:testMockFunction`](#mock-function-from-file-testmockfunction)
    - [Mock inner function calls `:testMockInnerFunctionCalls`](#mock-inner-function-calls-testmockinnerfunctioncalls)
    - [Mock new function from another file `:testMockFunctionFromFile`](#mock-new-function-from-another-file-testmockfunctionfromfile)
  - [Fix](#fix)
    - [Fix code from test results `:testFixCodeFromTestResults`](#fix-code-from-test-results-testfixcodefromtestresults)
  - [Rewrite](#rewrite)
    - [Rewrite test assertions with new specifications `:testRewriteTestAssertions`](#rewrite-test-assertions-with-new-specifications-testrewritetestassertions)
    - [Rewrite function based on expectations `:testRewriteFromExpectations`](#rewrite-function-based-on-expectations-testrewritefromexpectations)

## 🎯 Test-First

### Function implementation based on a test `:testFirstImplementFunction`

**Description**:

Create a new function implementation based on a test and make it pass.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | Use this prompt after creating your test.                  |

**Prompt**:

```text
Write the function implementation for "[[function name]]" in order to make every tests pass.
```

### Check function implementation based on unit testings `:testCheckFunctionImplementation`

```text
Check if this test is correctly implemented in the highlighted function.
```

## 🧪 Testing

### Test cases

#### List test cases from user-stories `:testListTestCases`

**Description**:

List functional tests for a feature based on a user-story.

The idea is to have an exhaustive list of tests to be done.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | [GPT RAG Dev](../llm-instructions/gpt-rag-developer.md) ChatGPT |
| 🔍 **Context**          | Get a list a functional tests from feature.                |
| 📜 Todo                 | Check if it can be merged with other prompts in same cat.  |

**Prompt**:

```text
From those specifications (surrounded by --- delimiter):

---
[[Feature to build, be as detailed as possible]]
---

You have to list test cases with the following rules:

- Detect edge cases and exceptions.
- Group by distinct sections.
- Format with bullet list with small sentences.
- [[Do not test UI, focus the logic only | Test the UI if needed | Test the UI and the logic]].
```

### Structure

#### Create empty test structure based on file `:testStructureCreateEmptyBasedOnFile`

**Description**:

Create an empty test file structure based on another existing test file from your project

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | Use this prompt when you want to create a new test file.   |

**Prompt**:

```text
Based on the test structure of the file: #file

Create an empty test structure for the new file name "[[file name]]".

- Do not take test cases, only the structure.
- Get common functions structure like "beforeEach", "afterEach", "beforeAll", "afterAll" etc if they exist.
- Get global variables if they exists, as long as they are not related specifically to this file.
- Replace types if necessary.
- Do not take the imports if not necessary.
```

#### Create empty test structure `:testStructureCreate`

**Description**:

Create an empty test structure file from text test cases.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | On a new test file creation.                               |

**Prompt**:

```text
Use "[[testing framework]]" to generate testing structure only.

Inner tests are commented with "Arrange", "Act", "Assert" comments.

Here are the test cases (surrounded by "---" delimiter):
---
[[Test cases]]
---
```

### Generate

#### Generate similar test case from another `:testGenerateTestCaseFromAnother`

**Description**:

Generate a similar test case from another test case.

Very useful to write more test with different inputs / expectations.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | When writing tests, adding another one.                    |

**Prompt**:

```text
Based on existing test case #selection in file #file.

Generate a similar test case for the same function using those parameters:

[[parameters in bullet points]]
```

#### Generate test from and existing test cases `:testGenerateTestFromExistingTestCase`

**Description**:

Generate a similar test from an existing test case using existing test structure and implementation.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | When adding a new test in the same file.                   |

**Prompt**:

````text
Based on existing test case #selection in file #file

Generate a new similar test cases for:
---
[[bullet point of things to test or function names]]
---

Rules:

- Keep similar testing structure.
- Changes types accordingly for new test case.
````

#### Generate a new test `:testGenerateNewTest`

**Description**:

Create a full test from test cases for a given function.

Useful to generate test with `Input` / `Output` / `Expectation` pattern.

> Note: Not very efficient on complex functions.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | Use this prompt after a new function creation.             |

**Prompt**:

```text
Use "[[testing framework]]" to generate a test that uses AAA pattern for #selection in file #file

- Arrange fake data with valid ones (mock or stub if necessary) based on required properties of objects.
- Act to test logic.
- Assert that the result is expected.

Expectations here (surrounded by "---" delimiter):
---
[[Expectation if needed]]
---

Important: those specification MUST be tested OVER the implementation.

If necessary, use those unit testing techniques:

Mocking, Stubbing, Spying, Faking, Dependency Injection, Test Parameterization, Isolation (Sandboxing)
```

#### Generate new test in a test suite `:testGenerateNewInTestSuite`

**Description**:

Add a new test in a test suite following the existing test structure.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | If you want to add a new test in an existing test file.    |
| ⚠️ Warning               | `#file` selector can be truncated by the AI tool if it is too long. |

**Prompt**:

```text
Add a new test case for "[[new test case]]".

- Implementation file is: #file
- Test should be added in: #file
- It should follow same structure and convention as #selection
```

#### Generate new test from another test file `:testGenerateNewFromAnotherFile`

**Description**:

Add a new test in a test suite following the test case of another file.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | On a new test case creation, based on another one from another file. |

**Prompt**:

```text
I need to add a new test in file (following same file convention): #file

Based on the test structure of another file: #file

The test case is: [[new test case]]
```

#### Generate new data-testid `:testGenerateNewDataTestId`

**Description**:

Add new `data-testid` attribute to an HTML component.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | To add in a file that contains HTML elements to test.      |

**Prompt**:

```text
Add in relevant component elements from #selection a "data-testid" if not already present.
```

### Create

#### Create new test object with "fake" properties `:testCreateNewFakeTestObject`

**Description**:

Super useful to generate a fake object with all properties filled.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | When in a test if you want to arrange data.                |

**Prompt**:

```text
Without importing, create new fake filled object for every required properties of this file: #file
```

### Fill / Add

### List untested behaviors

**Description**:

List untested behaviors from some test files.

The idea is to have a list of behaviors that are not tested yet.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | Some tests exist but some are missing.                     |

**Prompt**:

```text
Goal:
List every untested behaviors for all the tests provided.

Rules:
- List every behavior that is not tested yet from every test files.
- Provide bullet list of untested behaviors that will be written in "should" format.
- Group those behaviors, by providing the files where the test should be written.
- Focus on behavior, not on technical details.

Test files to check:
#file

Implementations to test:
#file
```

#### Fill empty test cases expectations `:testFillTestCases`

**Description**:

If you have a list of empty test cases, fill every test case with the expected result.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | An empty structure of test cases in a test file.           |
| ✨ Required before      | Generate empty test cases first.                           |

**Prompt**:

```text
Fill every empty tests in file #file
Code implementation to test: #file

Rules:
- Arrange fake data with valid ones (mock or stub if necessary) based on required properties of objects: #file
- Act to test logic.
- Assert that the result is expected.
```

### Mock

#### Mock function from file `:testMockFunction`

**Description**:

Mock a function to return a specific value.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | If you need to mock a function from a specific file.       |

**Prompt**:

```text
Mock "[[function name]]" function from #file

Then, resolve it to "[[return statement]]".
```

#### Mock inner function calls `:testMockInnerFunctionCalls`

**Description**:

Generate code to mock inner function calls for a specific highlighted `code` or `import`.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | Mock almost anything by selection.                         |

**Prompt**:

```text
Use "[[testing framework]]" to mock the implementation of the inner function calls from this code: #selection
```

#### Mock new function from another file `:testMockFunctionFromFile`

**Description**:

Add a new mock using test structure in an existing file.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | When your test scenario if changing the assertions.her test file. |

**Prompt**:

```text
Based on those already mocked paths in the file #file

Add a new mock for function's selection #selection.
```

### Fix

#### Fix code from test results `:testFixCodeFromTestResults`

**Description**:

Fix your implementation code based on the test results.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | When your test scenario if changing the assertions.        |

**Prompt**:

```text
The test output the following error (surrounded by "---" delimiters): 

---
[[Test results]]
---

Follow those steps:

1. Assume current test is correct in file:  #file
2. Summarize in 1 sentence what the issue is.
3. Check the code implementation to find the issue in file: #file
4. Traverse the whole code used in the function, because the issue could be located elsewhere:
  - in a external type.
  - in a constant variable defined above in the file.
  - in a function called in the function.
  - from an incorrect copy/paste in names.
  - etc.
5. Once you analyzed all source code in this file, fix the issue first issue from your inconsistencies list.
```

### Rewrite

#### Rewrite test assertions with new specifications `:testRewriteTestAssertions`

**Description**:

Change the existing test to match new needs based on new specifications.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | When your test scenario if changing the assertions.        |

**Prompt**:

```text
Based on those specifications (surrounded by "---" delimiter):
---
[[new specifications]]
---

 Change the existing test #selection to match new needs.
```

#### Rewrite function based on expectations `:testRewriteFromExpectations`

**Description**:

Rewrite the function to make the test pass, and keep its logic.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | Use this prompt after the test has failed.                 |

**Prompt**:

```text
1. Based on this test and its expectations, please acknowledge the tested function.
2. List the necessary steps to change in the code to make the test pass.
3. Rewrite the function from to make the test pass and keep its logic.

[[Additional context like your implementation ideas]]

Here is the test that should pass: #selection

Implemented function in file: #file
```
