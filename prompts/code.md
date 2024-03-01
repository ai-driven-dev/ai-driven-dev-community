# AI Driven Dev - Prompts (Code `:code`)

Related to code interaction (eg: with Copilot).

- [Coding](#coding)
  - [Help me thinking `:codeHelpMeThinking`](#help-me-thinking-codehelpmethinking)
- [Fixing](#fixing)
  - [Fixing code from test results `:codeFixFromTestResults`](#fixing-code-from-test-results-codefixfromtestresults)
- [Testing](#testing)
  - [Generate fake testing data `:codeFakeData`](#generate-fake-testing-data-codefakedata)
  - [Unit Testing `:codeGenerateScratchUnitTestPerFunction`](#unit-testing-codegeneratescratchunittestperfunction)
  - [Unit Testing `:codeGenerateScratchUnitTestPerSteps`](#unit-testing-codegeneratescratchunittestpersteps)
- [Documentation](#documentation)
  - [Check for comments to match written code `:codeDocMatchingCode`](#check-for-comments-to-match-written-code-codedocmatchingcode)


## Coding

### Help me thinking `:codeHelpMeThinking`

```text
The current code is "[[What the code is doing]]". 

I need you to help me think about the best way to implement this new functionality "[[new functionality]]".

Please provide the best coding steps.
```


## Fixing

### Fixing code from test results `:codeFixFromTestResults`

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

## Testing

### Generate fake testing data `:codeFakeData`

* Highlight the object, type or schema you want generate fake data for

```text
Create fake data for testing purposes. The data should be in the same format as the original data, but with fake values. 

```

### Unit Testing `:codeGenerateScratchUnitTestPerFunction`

```text
Based on this test and the opened files ("[[Opened file to use]]"), I need you to create unit tests to describe "[[Feature section to describe]]".

Please:

- Keep same testing structure
- Import necessary files if needed
- Use proper naming and types depending of the variable to test
- Continue unit tests generation for the following functions: "[[functions to test]]"
```


### Unit Testing `:codeGenerateScratchUnitTestPerSteps`

```text
Here are the following steps to test a function. Please create a unit test for each step.

Based on this test and the opened files ("[[Opened file to use]]"), I need you to create unit tests to describe "[[Feature section to describe]]".

Please:

- Keep same testing structure
- Import necessary files if needed
- Use proper naming and types depending of the variable to test
- Continue unit tests generation for the following functions: "[[functions to test]]"
```

## Documentation

### Check for comments to match written code `:codeDocMatchingCode`

```text
Check that comments are matching code actions.
```