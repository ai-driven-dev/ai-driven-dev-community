# AI Driven Dev - Prompts (Instruct `:instruct`)

Those prompt are made to make your discussions with AI more easy to do.

Drive AI to help you in your daily dev tasks.

- [Development flow](#development-flow)
  - [Contextualization (LLM instructions) `:instructFlow1ContextualizeProject`](#contextualization-llm-instructions-instructflow1contextualizeproject)
  - [Generate feature with user-stories `:instructFlow2GenerateFeature`](#generate-feature-with-user-stories-instructflow2generatefeature)
  - [Breakdown details for a sub-task `:instructFlow3BreakdownSubtask`](#breakdown-details-for-a-sub-task-instructflow3breakdownsubtask)
  - [🚧 Coding steps detailed `:instructFlow4DetailCodingSteps`](#-coding-steps-detailed-instructflow4detailcodingsteps)
- [Documentation](#documentation)
  - [Search in the documentation `:instructDocSearchURL`](#search-in-the-documentation-instructdocsearchurl)
- [Image](#image)
  - [Visualize Image Structure to Code `:instructImageVisualizeHTMLStructure`](#visualize-image-structure-to-code-instructimagevisualizehtmlstructure)
- [Database](#database)
  - [SQL Schema Generation `:instructDBGenerateSchema`](#sql-schema-generation-instructdbgenerateschema)
  - [Plain Object Generation from Schema `:instructgeneratepo`](#plain-object-generation-from-schema-instructgeneratepo)
  - [Write type files `:instructwritetypefiles`](#write-type-files-instructwritetypefiles)
- [Refactoring](#refactoring)
  - [Draw my folder structure from specifications `:instructdrawfilestruct`](#draw-my-folder-structure-from-specifications-instructdrawfilestruct)
  - [Create files structure  `:instructcreatefilestruct`](#create-files-structure--instructcreatefilestruct)
  - [Review project files structures `:instructreviewfilestruct`](#review-project-files-structures-instructreviewfilestruct)
- [Old Prompts (WIP)](#old-prompts-wip)
  - [Acknowledge new feature `:prackfeat`](#acknowledge-new-feature-prackfeat)
  - [Ask for a feature `:prfeat`](#ask-for-a-feature-prfeat)
  - [Code the feature `:prcode`](#code-the-feature-prcode)
  - [Recode the feature `:prrecode`](#recode-the-feature-prrecode)
  - [Debug issue `:prdebug`](#debug-issue-prdebug)
  - [Fix my error `:prfix`](#fix-my-error-prfix)
  - [Test my feature `:prpretest`](#test-my-feature-prpretest)
  - [Generate unit tests `:prunittests`](#generate-unit-tests-prunittests)

## Development flow

Follow those prompts to customize your development flow with AI to increase your productivity by 2X.

### 1.0) Contextualization (LLM instructions) `:instructContextualizeProject`

This should help the LLM to act as you would expect it to do endorsing your own knowledge and experience.

> **This should be part of a custom agent, like [a personalized GPT](https://chat.openai.com/gpts).**

That way, every times you will use the AI, it will remember your preferences and your project config.

```text
Role: As the AI, act as the lead developer responsible for our project's success. I am a senior software engineer specializing in "[[specific tech stack and libraries]]". Our users are the application end-users.

Guidelines:
- Provide last to date info.
- Always be very concise in your answers.
- Enhance readability with bold, italic, and lists as needed.
- Adjust based on my feedback.
- When in doubt, ask me for more details.
- Code generation must be clean, follow the best practices and always provide full code needed with no comments.
- Primarily use the tech documentation in your knowledge base (if any), in order to always use the latest version of the tech.

Project: We are working on "[project name]", focusing on "[project goals]".

Language used: "[[programming language with particular version or info]]"

Tech Stack (from package.json or equivalent):
[[technologies, libraries, and versions]]

Project Structure (eg `tree -I "node_modules"`): 
[[Describe or attach the project structure]]

Development Process: We adhere to Agile, with bi-weekly sprints and CI/CD.

Collaboration Tools: Git and Ticketing tool like Jira or Linear.
```

## Create new features

### 2.0) Generate feature with user-stories `:instructGenerateFeature`

```text
Goal:
Generate a concise but full breakdown of this feature for our project.

Rules:
- If user-story is too big, group features the more you can.
- You MUST provide every required steps, do not forget anything.
- Do not generate code or command line instructions, focus on precise steps to achieve the outcome.
- It should include epics, user stories with acceptance criteria, sub-tasks.

Requested Feature:
[[Feature to build, be as detailed as possible]]


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

### 2.1) Breakdown details for a sub-task `:instructGetSteps`

Ask the LLM to generate fully detailed ticket based on the user stories for an individual sub-task.

```text
Given the following sub-task (surrounded by "---" delimiter):
---
[[subtask from features list]]
---

Please, fill the following template (surrounded by "---") and output the result in a list grouped by sections.

Rules:
* Details steps must be extremely detailed and should be able to be completed by any developer, regardless of their experience.
* The acceptance criteria should be specific and measurable, ensuring that the feature meets the user's needs.
* The ticket should be generated in a format that can be easily imported into our project management tool, such as Jira.
* Do not go into the details of the code, only the steps to achieve the outcome.
* If the output is too long, please inform me and ask me if I want to continue.
* If the task need a specific configuration that is required to be done before, please detail it and put your response in bold.
* Every steps must be detailed as much as possible and must be completed by any developer, regardless of their experience.
- Give me the full project path for each file to edit
- If you need to split the task into sub-tasks, please do so.
- Choose the right libraries and tools to use if needed.
- Provide documentation links if needed.

Code generation rules:
- The code must be clean and follow the best practices.
- Always provide all the code, never skip a part of it.
- Detail components, functions, and variables names.
- Split files the more you can, each file must do only one thing.
- Insist on best practices and clean code principles regarding the architecture, folder structure as well as file names.

---
Title: Brief Description of the Feature

As a [type of user],
I want [an action or feature]
so that [benefit or value].

Detailed steps to achieve the outcome (with code if needed):

1. ...
2. ...
3. ...
---
```

## Existing features

### 3.0) Acknowledge specification `:instructSpecsAcknowledge`
  
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

### 3.1) Iterate over acknowledgment `:instructSpecsIterate`

```text
Here are some answers about your previous questions.

Note that I cannot provide you with the full code, nor answer every details of the question.

Can you merge this new information together with the previous ones, and then:

- If there is not absolute need for more details, only give me the required development steps involved in coding the functionality?
- If you definitely need more details, please only ask me the crippling questions.

Here are my answers:

[[Your answers to the previous questions]]
```

### 3.2) Drive coding steps `:instructSpecsDriving`

Rewrite coding steps:

- [ ] Removing those you do not need
- [ ] Adding those you need (should not occur if the previous steps were detailed enough)
- [ ] Give details about coding implementations (where, how, etc.)

```text
Please rewrite the coding steps that way:

[[Fixes from LLM's answer]]
```

## Documentation

### Search in the documentation `:instructDocSearchURL`

```text
I need you to read the following documentation.

"[[documentation url]]"

Based on that documentation, can you:

"[[want you want to do]]"

Please provide the best step by step way to it.

For each step, detail your explanation with the proper code.
```

## Image

### Visualize Image Structure to Code `:instructImageVisualizeHTMLStructure`

```text
Please remember the frontend tech I am using for this project.

For this image, I need you to:

1. Carefully summarize what you see from it, in small not detailed bullet points.
2. Print the structure of the image as you see it.
3. Propose an HTML structure of it based on my frontend tech.
```

## Database

### SQL Schema Generation `:instructDBGenerateSchema`

```text
I need you to help me creating my SQL database schema.

Regarding the specifications, can you help me drawing my model?

Give me the full db schema, with the tables, the columns, the relations between the tables and the constraints from:

[[Entity list and relations between entities]]
```

### Plain Object Generation from Schema `:instructgeneratepo`

When you want to create the types from the SQL schema.

```text

I need you to help me creating my Plain Object from my SQL database schema.

1. For each entity, I want you to generate the corresponding type.
2. For each relation, I want you to generate the corresponding type.
3. No comment in code
4. Suffix the type name with "Entity"

Here is the SQL schema:

[[SQL schema from `insgeneratesqlschema`]]
```

### Write type files `:instructwritetypefiles`

```text
I want to split those types with only 1 type per file. Based on the folder directory we made together, can you tell me where should put each of those?

Please generate a shell script to create those files and directories:

[[List of types from `insgeneratepo`]]
```

## Refactoring

### Draw my folder structure from specifications `:instructdrawfilestruct`

```text
Can you imagine the best folder structure for my features from the user-stories in my specifications?

Please also generate every needed files and directories.
```

### Create files structure  `:instructcreatefilestruct`

```text
Generate a shell script to create those files and directories:

[[tree list from :instructdrawfilestruct output]]
```

### Review project files structures `:instructreviewfilestruct`

- 💡 **Description** : Before starting a refactoring, ask AI to review the project files structures and names.
- 🤖 **AI Agent to use**: [AI Senior Developer](../agents/senior-developer.md)

```markdown
Based on a feature based structure, I want to review the files and directories names and find the best way to organize them.

Here is an example for React (but it can be any other language) surrounded by "---" delimiter:

---
Most of the code lives in the src folder and looks like this:

src
|
+-- assets            # assets folder can contain all the static files such as images, fonts, etc.
|
+-- components        # shared components used across the entire application
|
+-- config            # all the global configuration, env variables etc. get exported from here and used in the app
|
+-- features          # feature based modules
|
+-- hooks             # shared hooks used across the entire application
|
+-- lib               # re-exporting different libraries preconfigured for the application
|
+-- providers         # all of the application providers
|
+-- routes            # routes configuration
|
+-- stores            # global state stores
|
+-- test              # test utilities and mock server
|
+-- types             # base types used across the application
|
+-- utils             # shared utility functions
In order to scale the application in the easiest and most maintainable way, keep most of the code inside the features folder, which should contain different feature-based things. Every feature folder should contain domain specific code for a given feature. This will allow you to keep functionalities scoped to a feature and not mix its declarations with shared things. This is much easier to maintain than a flat folder structure with many files.

A feature could have the following structure:

src/features/awesome-feature
|
+-- api         # exported API request declarations and api hooks related to a specific feature
|
+-- assets      # assets folder can contain all the static files for a specific feature
|
+-- components  # components scoped to a specific feature
|
+-- hooks       # hooks scoped to a specific feature
|
+-- routes      # route components for a specific feature pages
|
+-- stores      # state stores for a specific feature
|
+-- types       # typescript types for TS specific feature domain
|
+-- utils       # utility functions for a specific feature
|
+-- index.ts    # entry point for the feature, it should serve as the public API of the given feature and exports everything that should be used outside the feature
Everything from a feature should be exported from the index.ts file which behaves as the public API of the feature.
---

I want you to:
- Improve consistency and readability for every file and directory names
- Review the files and directories names and unify them (for each change you make, put in parenthesis the previous name)
- Find the best way to organize them
- Propose a new structure including every files and directories

Every file names must follow the same convention across the project.

Some file and directory names are not consistent and I want to improve that, please check every file and directory names must be checked, your new directory proposal must includes every files and directories as well.

My project file structure is:

[[list of files and directories using $tree shell command]]
```


## Old Prompts (WIP)

### Acknowledge new feature `:prackfeat`

```text
I need to code this feature, as a developer.

1. Please acknowledge it
2. Reformulate in bullet point grouped by section to show me that you understood what to do
3. Draw me the development steps to code, grouped by sections

Here is the feature:

[[feature to build]]
```

### Ask for a feature `:prfeat`

```text
I am building a new feature for my project.

Goal of the feature: [[context]]
Incoming parameters are: [[params]]
Expected result is: [[result]]

Please give me every detailed steps to do in order to achieve my goal.
```

↺ Discuss with the AI until it understood **what you really mean**.

### Code the feature `:prcode`

```text
You did understand the feature I want to code.
Now, I need your to write the code following my projects requirements (both technical and from a user view).

You should:

* Spit files (only if needed, respecting clean code principles and other good practices)
* Not put into comment
* Function / Variables names must be short, in english and really matching the expected outcome
```

### Recode the feature `:prrecode`

```text
Your code does not work as excepted.

[[Explanation why it is failing]]

Can you auto-evaluate your own work?

1) Remind you the goal and try another way to code it.
2) Keep in mind that the code needs to be errorless and get the proper result I asked you about.
3) Can you remind me the goal, the entry parameters and the expect output?
4) Then provide the steps in order to fix the code you wrote.
5) Lastly, check for the generated code in order to be sure that it fits my needs.

Thank you for you professionalism.
```

### Debug issue `:prdebug`

```text
For this bugfix I am responsible of, here his the context of what I want to do:

[[The context of what I wanted]]

This is producing this strange behavior, the bug is causing:

[[What the bug is doing]]

Can you give me a list 3 clues regarding my issue in order to find the root cause and then, fix it?

Please sort them with the more probable first.
```

### Fix my error `:prfix`

First, highlight the code in the editor, then, put the error message in prompt.

```text
The following code is not working the way I want it to.

"[[code]]"

This technical error is:

[[error]]

When I try to:

[[action]]

Please, try to understand the error and then propose the 2 best ways to fix it.

Do not hesitate to ask me if you have need more information to understand the issue.
```

### Test my feature `:prpretest`

```text
I want you to write a test for the this feature:

[[feature you talked about previously]]

Give me a list of tests that need to be done in order to secure the feature delivery in production.

It must be 100% bullet proof since I cannot afford to have bug in the feature, this is vital to me.

Every test cases must be covered.
```

### Generate unit tests `:prunittests`

Highlight code in the editor, then ask for test generation.

```text
For the following list of test cases:

[[your test cases and the ones gave by AI]]

Can you generate the corresponding code to test the following file:

"[[copy paste your component here]]"

Remember, you test must be 100% working.
```
