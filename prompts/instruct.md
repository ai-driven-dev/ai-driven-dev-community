# AI Driven Dev - Prompts (Instruct `:ins`)

Those prompt are made to make your discussions with AI more easy to do.

Drive AI to help you in your daily dev tasks.

- [Development flow](#development-flow)
  - [Contextualization (LLM instructions) `:inscontext`](#contextualization-llm-instructions-inscontext)
  - [Generate feature with user-stories `:insgenerateoverview`](#generate-feature-with-user-stories-insgenerateoverview)
  - [Breakdown details for a sub-task `:insbreakdownsubtask`](#breakdown-details-for-a-sub-task-insbreakdownsubtask)
  - [Coding steps detailed `:inscodingsteps`](#coding-steps-detailed-inscodingsteps)
- [Documentation](#documentation)
  - [Search in the documentation `:inssearchwebdoc`](#search-in-the-documentation-inssearchwebdoc)
- [Database](#database)
  - [SQL Schema Generation `:insgeneratesqlschema`](#sql-schema-generation-insgeneratesqlschema)
  - [Plain Object Generation from Schema `:insgeneratepo`](#plain-object-generation-from-schema-insgeneratepo)
  - [Write type files `:inswritetypefiles`](#write-type-files-inswritetypefiles)
- [Refactoring](#refactoring)
  - [Draw my folder structure from specifications `:insdrawfilestruct`](#draw-my-folder-structure-from-specifications-insdrawfilestruct)
  - [Create files structure  `:inscreatefilestruct`](#create-files-structure--inscreatefilestruct)
  - [Review project files structures `:insreviewfilestruct`](#review-project-files-structures-insreviewfilestruct)
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

### Contextualization (LLM instructions) `:inscontext`

This should help the LLM to act as you would expect it to do endorsing your own knowledge and experience.

> **This should be part of a custom agent, like [a personalized GPT](https://chat.openai.com/gpts).**

That way, every times you will use the AI, it will remember your preferences and your project config.

```makefile
Act as a senior software engineer, a tech lead, a mentor, and an Agile coach.

Personas:

- You, referring to "the AI", "the LLM", are the core developer of the project, you are the one who is responsible for the project's architecture and the one who is responsible for the project's success.
- Me, referring to "the developer", I am a senior software engineer on: "[[my main tech stack and libs]]".
- The user is referring to "the user" of our application.

Project:

I need you to help me regarding the following project: "[[my project name]]".

(This only project I will refer to you within this conversation is only about this one.)

The projet goals are:

"[[What are the goals of the project]]"

Technology Stack and Architecture:

[[Repeat chosen languages, technologies and architecture used]]

Development Process:

- Our team follows Agile development principles, with bi-weekly sprints and continuous integration/continuous deployment (CI/CD) practices.

Collaboration Tools: 
- We use Git for version control
- A ticketing project management like Jira

Request for Assistance:
We seek feedback on our choice of technologies and architecture, especially regarding scalability and data security. Insights into innovative data analysis techniques or AI models that could enhance our platform's capabilities are also welcome.

Everything else is documented in the uploaded documents from you knowledge.
```

### Generate feature with user-stories `:insgenerateoverview`

```text
Generate a detailed breakdown of this feature for our project.

This should include epics, user stories, sub-tasks, complexity estimates, and acceptance criteria, ordered logically for development and priorisation.

Requested Feature: "[[Main feature to build]]"

[[More description of the feature if needed]]

Please generate the following:

1. Epics and Examples
2. Then, for each epics: Generate User Stories ordered by priority with Bullet points Acceptance Criteria
3. Smallest sub-Tasks with Complexity Estimates based on the epics and user stories

Here is an example of what I want (surrounded by "---" delimiter):

---
# Feature: Authentication

## Epic: Integration of SSO Authentication with Google

### User Stories

#### User Story 1: As a user, I want to be able to log in using my Google account.

* Complexity Estimate: S

##### Sub-tasks:

* Configure the Google authentication service in the application. (S)
* Add a "Log in with Google" button to the login screen. (XS)
* Manage the reception and verification of the Google authentication token. (M)
---

Notes:
- Please output the result in a bullet list grouped by sections.
- Detail as much as possible the feature to build, the bullet points you give, the better it is.
- For complexity estimates, consider "XS" for tasks under 2 hours, "S" for tasks from 2 to 4 hours, and so on. Use these estimates to effectively plan the sprint.
- For acceptance criteria, consider the "Given, When, Then" format to ensure that the feature is fully tested and meets the user's needs.
```

### Breakdown details for a sub-task `:insbreakdownsubtask`

Ask the LLM to generate fully detailed ticket based on the user stories for an individual sub-task.

```text
Given the following sub-task:

[[sub-tasks from :insgenerateoverview]]

Rules:
* Details steps must be extremely detailed and should be able to be completed by any developer, regardless of their experience.
* The acceptance criteria should be specific and measurable, ensuring that the feature meets the user's needs.
* The ticket should be generated in a format that can be easily imported into our project management tool, such as Jira.

Please, fill the following template (surrounded by "---") and output the result in a bullet list grouped by sections:

---
Title: Brief Description of the Feature

As a [type of user],
I want [an action or feature]
so that [benefit or value].

Details:

* Acceptance Criteria:
 * Criterion 1: [Specific, measurable outcome 1]
  * Estimation: [Complexity or Time Estimate]
  * Detailed steps to achieve the outcome
 * Criterion 2: [Specific, measurable outcome 2]
  * ...
---
```

### Coding steps detailed `:inscodingsteps`

Ask the AI to provide detailed coding steps for a given task.

```text
Based on the chosen languages, frameworks and libs for our application, I want you to be acknowledged of the following coding structure (surrounded by "---" delimiter):

---
[[Use tree command on the subfolder to get the structure]]
---

Then, I want you to follow that numbered list:

1. Select the tech to use and propose new ones if needed.

Since project is already initialized, do not focus that much on installation / lib configuration unless this is a new lib, feature or framework.

Just provide the simple steps, not that much detailed (only for this part).

2. Based on the task and the project technologies, can you provide me the detailed steps to code the following task?

"[[Task to achieve]]"

Every steps must be detailed as much as possible and must be completed by any developer, regardless of their experience.

- Give me the full project path for each file to edit
- If you need to split the task into sub-tasks, please do so.
- Choose the right libraries and tools to use if needed.
- Provide documentation links if needed.

3. Once you provide the steps, generate the code for each step.

- The code must be clean and follow the best practices.
- Detail components, functions, and variables names.
- Split files the more you can, each file must do only one thing.
- Insist on best practices and clean code principles regarding the architecture, folder structure as well as file names.
```

## Documentation

### Search in the documentation `:inssearchwebdoc`

```text
I need you to read the following documentation.

"[[documentation url]]"

Based on that documentation, can you:

"[[want you want to do]]"

Please provide the best step by step way to it.

For each step, detail your explanation with the proper code.
```

## Database

### SQL Schema Generation `:insgeneratesqlschema`

```text
I need you to help me creating my SQL database schema.

Regarding the specifications, can you help me drawing my model?

Give me the full db schema, with the tables, the columns, the relations between the tables and the constraints from:

[[Entity list and relations between entities]]
```

### Plain Object Generation from Schema `:insgeneratepo`

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

### Write type files `:inswritetypefiles`

```text
I want to split those types with only 1 type per file. Based on the folder directory we made together, can you tell me where should put each of those?

Please generate a shell script to create those files and directories:

[[List of types from `insgeneratepo`]]
```

## Refactoring

### Draw my folder structure from specifications `:insdrawfilestruct`

```text
Can you imagine the best folder structure for my features from the user-stories in my specifications?

Please also generate every needed files and directories.
```

### Create files structure  `:inscreatefilestruct`

```text
Generate a shell script to create those files and directories:

[[tree list from :insdrawfilestruct output]]
```

### Review project files structures `:insreviewfilestruct`

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
