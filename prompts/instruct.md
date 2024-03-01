# AI Driven Dev - Prompts (Instruct `:instruct`)

Those prompt are made to make your discussions with AI more easy to do.

Drive AI to help you in your daily dev tasks.

- [Development flow](#development-flow)
  - [1.0) Contextualization (LLM instructions) `:instructContextualizeProject`](#10-contextualization-llm-instructions-instructcontextualizeproject)
- [Create new features](#create-new-features)
  - [2.0) Generate feature with user-stories `:instructGenerateFeature`](#20-generate-feature-with-user-stories-instructgeneratefeature)
  - [2.1) Coding steps for a sub-task `:instructGetCodingSteps`](#21-coding-steps-for-a-sub-task-instructgetcodingsteps)
- [Existing features](#existing-features)
  - [3.0) Acknowledge specification `:instructSpecsAcknowledge`](#30-acknowledge-specification-instructspecsacknowledge)
  - [3.1) Iterate over acknowledgment `:instructSpecsIterate`](#31-iterate-over-acknowledgment-instructspecsiterate)
  - [3.2) Drive coding steps `:instructSpecsDriving`](#32-drive-coding-steps-instructspecsdriving)
- [Documentation](#documentation)
  - [Search in the documentation `:instructDocSearchURL`](#search-in-the-documentation-instructdocsearchurl)
- [Image](#image)
  - [Extract info from mockups `:instructImageExtractMockupInfo`](#extract-info-from-mockups-instructimageextractmockupinfo)
  - [Detail coding steps from the image `:instructImageDetailCodingSteps`](#detail-coding-steps-from-the-image-instructimagedetailcodingsteps)
  - [Create actions from image  `:instructImageCreateActions`](#create-actions-from-image--instructimagecreateactions)
- [Database](#database)
  - [SQL Schema Generation `:instructDBGenerateSchema`](#sql-schema-generation-instructdbgenerateschema)
  - [Plain Object Generation from Schema `:instructDBGeneratePO`](#plain-object-generation-from-schema-instructdbgeneratepo)
- [Project structure](#project-structure)
  - [Folder structure locations for types `:instructStructureWriteTypes`](#folder-structure-locations-for-types-instructstructurewritetypes)
  - [Draw my folder structure from specifications `:instructStructureDrawNewFiles`](#draw-my-folder-structure-from-specifications-instructstructuredrawnewfiles)
  - [Existing project structure acknowledgement `:instructStructureProjectAcknowledge`](#existing-project-structure-acknowledgement-instructstructureprojectacknowledge)
  - [Review project files structures `:instructStructureReviewFilesAndDirectories`](#review-project-files-structures-instructstructurereviewfilesanddirectories)
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

Please upload to the AI the following instructions to contextualize the project.

- `package.json` or equivalent
- Project structure (eg: `tree -I "node_modules" > project-structure.txt`)
- *Optional*: Mockups or Pages Design (export this as `.pdf` for best results and optimize size the more you can to increase the AI's performance - use `:variousOptimizePDF`'s prompt!)

```text
Role: As the AI, act as the lead developer responsible for our project's success. I am a senior software engineer specializing in "[[specific tech stack and libraries]]". Our users are the application end-users.

Guidelines:
- Provide last to date info.
- Always be very concise in your answers.
- Enhance readability with bold, italic, and lists as needed.
- Adjust based on my feedback.
- When in doubt, ask me for more details.
- Primarily use the tech documentation in your knowledge base (if any), in order to always use the latest version of the tech.

Code generation rules:
- Provide documentation links if needed.
- Choose the best libraries and tools to use, if needed.
- Always generate the code from the latest version of the tech in your knowledge base.
- Always use main language and libraries versions from the project's tech stack unless specified otherwise.
- Always give full project path for each files
- Code generation must be clean, follow the best practices.
- Do not comment the code.
- Always provide full code, never skip a part of it.
- Use very explicit components, functions, and variables names.
- Split files the more you can, each file must do only one thing.
- Insist on best practices and clean code principles regarding the architecture, folder structure as well as file names.
- Always give the full props and the full code, never use comments.

Project: We are working on "[project name]", focusing on "[project goals]".

Main languages used: "[[programming language with particular version or info]]"

From your knowledge base, get:
- Tech Stack versions
- Project Structure
- Mockups or pages design in order for you to understand the project, with fake data (if any)

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

### 2.1) Coding steps for a sub-task `:instructGetCodingSteps`

Ask the LLM to generate fully detailed ticket based on the user stories for an individual sub-task.

```text
Based on the project structure and given the following sub-task, fill this template (surrounded by "---") and output the result in a list grouped by sections:

[[sub task full description]]

Rules:
* Only focus on the sub-task scope.
* Review the sub-tasks to spot any prerequisites or missing configuration and details if necessary.
* Details steps must be detailed and should to be completed by any developer, regardless of their experience.
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

### Extract info from mockups `:instructImageExtractMockupInfo`

```text
Here is a mockup image of the feature I have to do as a developer.

First, can you detail everything you see on the image? Please group your answer by delimited sections.

Then, ask me the relevant questions about sections you did not understand.
```

### Detail coding steps from the image `:instructImageDetailCodingSteps`

```text
Based on the description you made from the image, can you provide me the coding steps to achieve the outcome?

Be as much detailed as possible, do not forget anything.

1. List my current tech stack and libraries for the frontend.
2. Propose new libraries if needed, only focus on frontend integration (no data-fetching).
3. Draw the full folder structure.
4. List components to create in their respective folders.
5. Define styling to use.
6. Create each components, always give the full props and the full code, never use comments.
```

### Create actions from image  `:instructImageCreateActions`

```text
Based on this image, can you identify actions?

Here are the actions I want you to identify:

[[List of actions to identify]]

1) Quickly detail what you understand from the actions in the image.
2) Remember the tech stack and libraries for the frontend.
3) Create components to execute the actions, in their respective folders, based on the image and the actions.
```

## Database

### SQL Schema Generation `:instructDBGenerateSchema`

```text
I need you to help me creating my SQL database schema.

Regarding the specifications, can you help me drawing my model?

Give me the full db schema, with the tables, the columns, the relations between the tables and the constraints from:

[[Entity list and relations between entities]]
```

### Plain Object Generation from Schema `:instructDBGeneratePO`

When you want to create the types from the SQL schema.

```text
I need you to help me creating my Plain Object from my SQL database schema.

1. For each entity, I want you to generate the corresponding type.
2. For each relation, I want you to generate the corresponding type.
3. No comment in code
4. Suffix the type name with "Entity"

Here is the SQL schema:

[[SQL schema]]
```

## Project structure

### Folder structure locations for types `:instructStructureWriteTypes`

```text
I want to split those types with only 1 type per file.

Based on the folder directory we made together, can you tell me where should put each of those?

Please generate a shell script to create those files and directories:

[[List of types]]
```

### Draw my folder structure from specifications `:instructStructureDrawNewFiles`

```text
Can you imagine the best folder structure for my features from the user-stories in my specifications?

Generate every needed files and directories in a shell script.
```

### Existing project structure acknowledgement `:instructStructureProjectAcknowledge`

In order to help the LLM to generate the best code possible in new and existing files.

- Generate project structure as a file (eg: `tree -I "node_modules" > project-structure.txt`)
- Upload it with the following prompt

```text
Here is the last up to update project structure, please keep it in my for the next instructions and code generation.
```

### Review project files structures `:instructStructureReviewFilesAndDirectories`

- 💡 **Description** : Before starting a refactoring, ask AI to review the project files structures and names.
- 🤖 **AI Agent to use**: [AI Senior Developer](../agents/senior-developer.md).
- ⚠️ **You must change the following template** surrounded by "---" delimiter with YOUR chosen code structure.
- 🗂️ **Project structure** to upload with the prompt (eg: `tree -I "node_modules" > project-structure.txt`).

```text
Here is an example of project file structure that I like, please get its content from this URL, I will refer it as a "template": "[[url of the gist of the project structure]]"

Based on this "template" feature based structure, I want to review my current files and directories names from my app (surrounded by "---" delimiter), and find the best places to organize them.

---
[[Copy and paste the project structure here]]
---

What I ask you to do is to:

1. List all the features you understood from my project structure
  - Format it with bullet points
  - If there is a hierarchy, please respect it.
  - Use existing names from my app
2. Remind my the "template" file structure you will use to compare with my current one.
3. List necessary steps to convert my current file structure to the new one, with the best practices and clean code principles. 
4. Identify files that:
  - Need to be merged together if they have close naming (like "user" and "users" or "category" and "categories", for example).
  - Need to be renamed if their name is not consistent.
  - Need to be moved to another directory if they are not in the right place.
4. Based on the features you listed from my app, apply the "template" file structure on my app file structure, generate a new file structure proposal with these rules:
  - Do not use comments
  - Do not indicate the kind of file
  - Provide the full path for each file
5. Check that every files from my app are existing in your new directory proposal
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

