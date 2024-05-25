# 🖥️ AI Driven Dev - "Feature request" Prompts (`:feat`)

- [🆕 Create new features](#-create-new-features)
  - [Generate feature user-stories from request `:featGenerateUS`](#generate-feature-user-stories-from-request-featgenerateus)
  - [Extract coding steps for a sub-task `:featExtractCodingSteps`](#extract-coding-steps-for-a-sub-task-featextractcodingsteps)
  - [Create coding steps from development steps `:featCreateCodingSteps`](#create-coding-steps-from-development-steps-featcreatecodingsteps)
- [👌 Existing features](#-existing-features)
  - [Acknowledge specs and code from specification from your feature `:featExAcknowledgements`](#acknowledge-specs-and-code-from-specification-from-your-feature-featexacknowledgements)
  - [Give me output example based on your understandings `:featExOutputExample`](#give-me-output-example-based-on-your-understandings-featexoutputexample)
  - [Answer LLM's questions about your feature (if needed) `:featExIterate`](#answer-llms-questions-about-your-feature-if-needed-featexiterate)
- [🧪 Testing](#-testing)
  - [List test cases from user-stories `:featTestingListTestCases`](#list-test-cases-from-user-stories-feattestinglisttestcases)
  - [Acceptance Criteria as Gherkin `:featTestingConvertAcceptanceCriteriaIntoGherkin`](#acceptance-criteria-as-gherkin-feattestingconvertacceptancecriteriaintogherkin)
  - [Unit test prompt generation `:featTestingGenerateUnitTestPrompt` (WIP 🚧)](#unit-test-prompt-generation-feattestinggenerateunittestprompt-wip-)

## 🆕 Create new features

### Generate feature user-stories from request `:featGenerateUS`

```text
Goal:
Generate a concise but full breakdown of this feature for our project.

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

### Extract coding steps for a sub-task `:featExtractCodingSteps`

Ask the LLM to generate fully detailed ticket based on the user stories for an individual sub-task.

> ⚠️ For best result you MUST re-upload `documentation.md` before using this prompt.

```text
Given the coding task detailed below:

"""
[[sub task full description]]
"""

0. For each question, search into knowledge base.
1. Recall name, tech stack and libraries from [[package.json | composer.json | requirements.txt]] in the knowledge base.
2. Concentrate solely on the task at hand.
3. Identify any potential missing sub-tasks.
4. Reformulate tasks in one line.
5. Look for that information in your `documentation.md` file in your knowledge base to provide the best answer.
6. Provide one-line action steps, specifying new or existing file paths without generating code.
```

### Create coding steps from development steps `:featCreateCodingSteps`

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

### Acknowledge specs and code from specification from your feature `:featExAcknowledgements`
  
```text
Here are the specifications of the feature I need to code (surrounded by "---" delimiters).

Now, can you:

1. Acknowledge it
2. Reformulate in bullet point grouped by section to show me that you understood what to do
3. Generate development steps (based on an existing projet you do not know nothing about)

Finally, ask me the relevant questions about implementing the feature in my project regarding my project's tech stack and libraries.

Ask anything you need to know, like existing code, libraries, mockups available, logics, etc.

---
[[Copy and paste the specifications here]]
---
```

### Give me output example based on your understandings `:featExOutputExample`

```text
Give me an output example based on your understandings, with required inputs and the expected output.
```

### Answer LLM's questions about your feature (if needed) `:featExIterate`

```text
Here are some answers about your previous questions.

Note that I cannot provide you with the full code, nor answer every details of the question.

Can you merge this new information together with the previous ones, and then:

- If there is not absolute need for more details, only give me the required development steps involved in coding the functionality?
- If you definitely need more details, please only ask me the crippling questions.

Here are my answers:

[[Your answers to the previous questions]]
```

## 🧪 Testing

### List test cases from user-stories `:featTestingListTestCases`

**Description**:

List functional tests for a feature based on a user-story.

The idea is to have an exhaustive list of tests to be done.

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

### Acceptance Criteria as Gherkin `:featTestingConvertAcceptanceCriteriaIntoGherkin`

Transforms some acceptance criteria into Gherkin syntax.

```text
From this acceptance criteria, can you transform it into Gherkin syntax?

[[Acceptance criteria]]
```

### Unit test prompt generation `:featTestingGenerateUnitTestPrompt` (WIP 🚧)

**Description**:

Based on a functional requirement, generate a unit test prompt for our coding AI.

Before testing the function, we need to make sure first that we are using the good technique.

**Prompt**:

```text
I need you to act as a test engineer and generate a unit test prompt for my feature (surrounded by "---" delimiters):

"""
[[Functional requirement]]
"""

You need to generate a very concise unit test prompt for an AI that will write the unit test code.

If necessary, use those unit testing techniques:

Mocking, Stubbing, Spying, Faking, Dependency Injection, Test Parameterization, Isolation (Sandboxing)
```
