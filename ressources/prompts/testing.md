# 🖥️ AI Driven Dev - "Testing" Prompts (`:test`)

- [🎯 Test-First](#-test-first)
  - [Rewrite function based on a test expectations `:codeTestFirstRewriteFunction`](#rewrite-function-based-on-a-test-expectations-codetestfirstrewritefunction)
  - [Function implementation based on a test `:codeTestFirstImplementFunction`](#function-implementation-based-on-a-test-codetestfirstimplementfunction)
  - [Check function implementation based on unit testings `:codeTestingCheckFunctionImplementation`](#check-function-implementation-based-on-unit-testings-codetestingcheckfunctionimplementation)
- [🧪 Testing](#-testing)
  - [Structure](#structure)
    - [Create empty test structure for function `:codeTestingCreateEmptyTestStructure`](#create-empty-test-structure-for-function-codetestingcreateemptyteststructure)
    - [Create test structure from test cases `:codeTestingCreateTestStructure`](#create-test-structure-from-test-cases-codetestingcreateteststructure)
  - [Generate](#generate)
    - [Create test from another `:codeTestingCreateTestFromAnother`](#create-test-from-another-codetestingcreatetestfromanother)
    - [Create test from test cases `:codeTestingCreateTest`](#create-test-from-test-cases-codetestingcreatetest)
    - [Add new test in a test suite `:codeTestingAddNewTestInSuite`](#add-new-test-in-a-test-suite-codetestingaddnewtestinsuite)
  - [Fill](#fill)
    - [Fill test cases expectations `:codeTestingFillTestCasesExpectations`](#fill-test-cases-expectations-codetestingfilltestcasesexpectations)
    - [Fill tests cases `:codeTestingFillTestCase`](#fill-tests-cases-codetestingfilltestcase)
    - [Fill component with data-testid `:codeTestingFillComponentWithDataTestId`](#fill-component-with-data-testid-codetestingfillcomponentwithdatatestid)
    - [New fake objectif `:codeTestingNewFakeFilledEntity`](#new-fake-objectif-codetestingnewfakefilledentity)
    - [Fill empty tests (based on file) `:codeTestingFillExistingTests`](#fill-empty-tests-based-on-file-codetestingfillexistingtests)
  - [Mock](#mock)
    - [Mock specific function returns `:codeTestingMockSpecificFunctionReturns`](#mock-specific-function-returns-codetestingmockspecificfunctionreturns)
    - [Mock inner function calls `:codeTestingMockInnerFunctionCalls`](#mock-inner-function-calls-codetestingmockinnerfunctioncalls)
    - [Mock a new path in an existing file `:codeTestingMockNewPathInExistingFile`](#mock-a-new-path-in-an-existing-file-codetestingmocknewpathinexistingfile)
- [Fixing](#fixing)
  - [Fixing code from test results `:codeTestingFixFailedTest`](#fixing-code-from-test-results-codetestingfixfailedtest)
  - [Fix test assertions with new specifications `:codeFixTestAssertions`](#fix-test-assertions-with-new-specifications-codefixtestassertions)

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
Write the function implementation for "[[function name]]" in order to make every tests pass.
```

### Check function implementation based on unit testings `:codeTestingCheckFunctionImplementation`

```text
Check if this test is correctly implemented in the highlighted function.
```

## 🧪 Testing

### Structure

#### Create empty test structure for function `:codeTestingCreateEmptyTestStructure`

**Description:**

Create an empty test structure for a function.

**Prompt**:

```text
Use "[[testing framework]]" to generate an empty testing structure using AAA with only comments.
```

#### Create test structure from test cases `:codeTestingCreateTestStructure`

**Description:**

Create a test structure from test cases.

**Prompt**:

```text
Use "[[testing framework]]" to generate testing structure only (inner tests are commented with "Arrange", "Act", "Assert" comments) from those sentences:

---
[[Test cases]]
---
```

### Generate

#### Create test from another `:codeTestingCreateTestFromAnother`

**Description:**

Create a test from another test.

**Prompt**:

````text
Based on the implementation file: #file
And its test file: #file

Use "[[testing framework]]" to generate a test
Re-use import and mock if necessary
Test for those test cases:
[[test cases]]
````

#### Create test from test cases `:codeTestingCreateTest`

**Description:**

Create a full test from test cases for a given function.

Useful to generate test:

- With `AAA` pattern.
- With `Input` / `Output` / `Expectation` pattern.
- *Not very efficient on complex functions*

**Prompt**:

```text
Use "[[testing framework]]" to generate a test that uses AAA pattern for #selection in file #file

Arrange fake data with valid ones (mock or stub if necessary) based on required properties of objects.
Act to test logic.
Assert that the result is expected.

Expectations (surrounded by "---" delimiter):
---
[[Expectation if needed]]
---

Important: those specification MUST be tested OVER the implementation

#editor
```

#### Add new test in a test suite `:codeTestingAddNewTestInSuite`

**Description:**

Add a new test in a test suite following the test structure.

**Prompt**:

```text
Add a new test in the test suite following same testing structure for test cases:

[[test cases]]
```

### Fill

#### Fill test cases expectations `:codeTestingFillTestCasesExpectations`

```text
In those tests, fill every "Assert" parts only from those specs (surrounded by "---" delimiter):

---
[[specifications]]
---
```

#### Fill tests cases `:codeTestingFillTestCase`

Fill ... using your AI tool like copilot.

```text
Fill every tests #selection in file #file
Code implementation to test: #file

Arrange fake data with valid ones (mock or stub if necessary) based on required properties of objects: #file
Act to test logic.
Assert that the result is expected.
```

#### Fill component with data-testid `:codeTestingFillComponentWithDataTestId`

```text
Fill relevant component elements with "data-testid", use index number if available. 
```

#### New fake objectif `:codeTestingNewFakeFilledEntity`

```text
Without importing, create new fake filled entity for every required properties of this file: #file
```

#### Fill empty tests (based on file) `:codeTestingFillExistingTests`

**Description:**

Fill existing tests based on the file content.

**Prompt**:

```text
Fill empty tests based on the file content.
```

### Mock

#### Mock specific function returns `:codeTestingMockSpecificFunctionReturns`

```text
Mock "[[function name]]" function from #file
and resolve to "[[return statement]]".
```

#### Mock inner function calls `:codeTestingMockInnerFunctionCalls`

**Description:**

Generate code to mock inner function calls for a specific highlighted `code` or `import`.

**Prompt**:

```text
Use "[[testing framework]]" to mock the implementation of the inner function calls from this code: #selection
```

#### Mock a new path in an existing file `:codeTestingMockNewPathInExistingFile`

**Description:**

Add a new mock using test structure in an existing file.

**Prompt**:

```text
Based on the already mocked paths in the file #file
Add a new mock for function's selection #selection.
```

## Fixing

### Fixing code from test results `:codeTestingFixFailedTest`

- Open the required file to fix the code.
- Select the code to fix.

```text
The test output the following error (surrounded by "---" delimiters): 

---
[[Test results]]
---

Follow those steps:

1. Assume current test is correct:  #file
2. Summarize in 1 sentence what the issue is.
3. Check the code implementation to find the issue in file: #file
4. Traverse the whole code used in the function, because the issue could be located elsewhere
  - in a external type
  - in a constant variable defined above in the file
  - in a function called in the function
  - from an incorrect copy/paste in names
  - etc
5. Once you analyzed all source code in this file, fix the issue first issue from your inconsistencies list.
```

### Fix test assertions with new specifications `:codeFixTestAssertions`

```text
Based on those specifications (surrounded by "---" delimiter), please change the existing test #selection to match new assertions:

---
[[new specifications]]
---
```
