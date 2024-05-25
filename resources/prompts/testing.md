# 🖥️ AI Driven Dev - "Testing" Prompts (`:test`)

- [🎯 Test-First](#-test-first)
  - [Rewrite function based on a test expectations `:testFirstRewriteFunction`](#rewrite-function-based-on-a-test-expectations-testfirstrewritefunction)
  - [Function implementation based on a test `:testFirstImplementFunction`](#function-implementation-based-on-a-test-testfirstimplementfunction)
  - [Check function implementation based on unit testings `:testingCheckFunctionImplementation`](#check-function-implementation-based-on-unit-testings-testingcheckfunctionimplementation)
- [🧪 Testing](#-testing)
  - [Structure](#structure)
    - [Create empty test structure for function `:testingCreateEmptyTestStructure`](#create-empty-test-structure-for-function-testingcreateemptyteststructure)
    - [Create test structure from test cases `:testingCreateTestStructure`](#create-test-structure-from-test-cases-testingcreateteststructure)
  - [Generate](#generate)
  - [Create similar test case from another `:testingCreateTestCaseFromAnother`](#create-similar-test-case-from-another-testingcreatetestcasefromanother)
    - [Create test from test cases `:testingCreateTestCases`](#create-test-from-test-cases-testingcreatetestcases)
    - [Create test from test cases `:testingCreateTest`](#create-test-from-test-cases-testingcreatetest)
    - [Add new test in a test suite `:testingAddNewTestInSuite`](#add-new-test-in-a-test-suite-testingaddnewtestinsuite)
  - [Fill](#fill)
    - [Fill test cases expectations `:testingFillTestCasesExpectations`](#fill-test-cases-expectations-testingfilltestcasesexpectations)
    - [Fill tests cases `:testingFillTestCase`](#fill-tests-cases-testingfilltestcase)
    - [Fill component with data-testid `:testingFillComponentWithDataTestId`](#fill-component-with-data-testid-testingfillcomponentwithdatatestid)
    - [New fake objectif `:testingNewFakeFilledEntity`](#new-fake-objectif-testingnewfakefilledentity)
    - [Fill empty tests (based on file) `:testingFillExistingTests`](#fill-empty-tests-based-on-file-testingfillexistingtests)
  - [Mock](#mock)
    - [Mock specific function returns `:testingMockSpecificFunctionReturns`](#mock-specific-function-returns-testingmockspecificfunctionreturns)
    - [Mock inner function calls `:testingMockInnerFunctionCalls`](#mock-inner-function-calls-testingmockinnerfunctioncalls)
    - [Mock a new path in an existing file `:testingMockNewPathInExistingFile`](#mock-a-new-path-in-an-existing-file-testingmocknewpathinexistingfile)
- [Fixing](#fixing)
  - [Fixing code from test results `:testingFixFailedTest`](#fixing-code-from-test-results-testingfixfailedtest)
  - [Fix test assertions with new specifications `:testFixTestAssertions`](#fix-test-assertions-with-new-specifications-testfixtestassertions)

## 🎯 Test-First

### Rewrite function based on a test expectations `:testFirstRewriteFunction`

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

### Function implementation based on a test `:testFirstImplementFunction`

```text
Write the function implementation for "[[function name]]" in order to make every tests pass.
```

### Check function implementation based on unit testings `:testingCheckFunctionImplementation`

```text
Check if this test is correctly implemented in the highlighted function.
```

## 🧪 Testing

### Structure

#### Create empty test structure for function `:testingCreateEmptyTestStructure`

**Description:**

Create an empty test structure for a function.

**Prompt**:

```text
Use "[[testing framework]]" to generate an empty testing structure using AAA with only comments.
```

#### Create test structure from test cases `:testingCreateTestStructure`

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

### Create similar test case from another `:testingCreateTestCaseFromAnother`

**Description:**

Create a similar test case from another test case.

**Prompt**:

```text
Based on existing test case "[[test name]]" in file: #file
Create a similar test case for the same function using those parameters:
[[parameters]]
```

#### Create test from test cases `:testingCreateTestCases`

**Description:**

Create a test from test cases using existing test structure and implementation.

**Prompt**:

````text
Based on existing test case "should add new item templates" in file: #file

---

---

Create a new similar test case for the functions
"[[function names]]" in implementation file #file

Test will be added in file: #file

Rules:

- Keep similar testing structure
- Changes types accordingly for new test file
````

#### Create test from test cases `:testingCreateTest`

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

#### Add new test in a test suite `:testingAddNewTestInSuite`

**Description:**

Add a new test in a test suite following the test structure.

**Prompt**:

```text
Add a new test following same structure as #selection in the test suite regarding that case: "[[new test case ]]"

Test is located in file: #file
```

### Fill

#### Fill test cases expectations `:testingFillTestCasesExpectations`

```text
In those tests, fill every "Assert" parts only from those specs (surrounded by "---" delimiter):

---
[[specifications]]
---
```

#### Fill tests cases `:testingFillTestCase`

Fill ... using your AI tool like copilot.

```text
Fill every tests #selection in file #file
Code implementation to test: #file

Arrange fake data with valid ones (mock or stub if necessary) based on required properties of objects: #file
Act to test logic.
Assert that the result is expected.
```

#### Fill component with data-testid `:testingFillComponentWithDataTestId`

```text
Fill relevant component elements with "data-testid", use index number if available. 
```

#### New fake objectif `:testingNewFakeFilledEntity`

```text
Without importing, create new fake filled entity for every required properties of this file: #file
```

#### Fill empty tests (based on file) `:testingFillExistingTests`

**Description:**

Fill existing tests based on the file content.

**Prompt**:

```text
Fill empty tests based on the file content.
```

### Mock

#### Mock specific function returns `:testingMockSpecificFunctionReturns`

```text
Mock "[[function name]]" function from #file
and resolve to "[[return statement]]".
```

#### Mock inner function calls `:testingMockInnerFunctionCalls`

**Description:**

Generate code to mock inner function calls for a specific highlighted `code` or `import`.

**Prompt**:

```text
Use "[[testing framework]]" to mock the implementation of the inner function calls from this code: #selection
```

#### Mock a new path in an existing file `:testingMockNewPathInExistingFile`

**Description:**

Add a new mock using test structure in an existing file.

**Prompt**:

```text
Based on the already mocked paths in the file #file
Add a new mock for function's selection #selection.
```

## Fixing

### Fixing code from test results `:testingFixFailedTest`

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

### Fix test assertions with new specifications `:testFixTestAssertions`

```text
Based on those specifications (surrounded by "---" delimiter), please change the existing test #selection to match new assertions:

---
[[new specifications]]
---
```
