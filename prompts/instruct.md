# AI Driven Dev - Prompts (`:instruct`)

Those prompt are made to make your discussions with AI more easy to do.

Drive AI to help you in your daily dev tasks.

- [🎨 Personalize the AI as a developer from YOUR team](#-personalize-the-ai-as-a-developer-from-your-team)
  - [Contextualization (LLM instructions) `:instructContextualizeProject`](#contextualization-llm-instructions-instructcontextualizeproject)
- [🆕 Create new features](#-create-new-features)
  - [Generate feature user-stories from request `:instructFeatureGenerateUS`](#generate-feature-user-stories-from-request-instructfeaturegenerateus)
  - [Extract coding steps for a sub-task `:instructFeatureExtractCodingSteps`](#extract-coding-steps-for-a-sub-task-instructfeatureextractcodingsteps)
  - [Rewrite coding steps `:instructFeatureRewriteCodingSteps`](#rewrite-coding-steps-instructfeaturerewritecodingsteps)
- [👌 Existing features](#-existing-features)
  - [Acknowledge existing specification from your feature `:instructExistingFeatureAcknowledgements`](#acknowledge-existing-specification-from-your-feature-instructexistingfeatureacknowledgements)
  - [Answer LLM's questions about your feature (if needed) `:instructExistingFeatureIterate`](#answer-llms-questions-about-your-feature-if-needed-instructexistingfeatureiterate)
- [📄 Documentation](#-documentation)
  - [Search in the documentation `:instructDocSearchURL`](#search-in-the-documentation-instructdocsearchurl)
- [🏞️ Image](#️-image)
  - [Extract info from mockups `:instructImageExtractMockupInfo`](#extract-info-from-mockups-instructimageextractmockupinfo)
  - [Detail coding structure from the image `:instructImageDetailCodingStructure`](#detail-coding-structure-from-the-image-instructimagedetailcodingstructure)
  - [Generate code from image  `:instructImageGenerateCode`](#generate-code-from-image--instructimagegeneratecode)
  - [Create actions from image  `:instructImageCreateActions`](#create-actions-from-image--instructimagecreateactions)
- [📀 Database](#-database)
  - [SQL Schema Generation `:instructDBGenerateSchema`](#sql-schema-generation-instructdbgenerateschema)
  - [Plain Object Generation from Schema `:instructDBGeneratePO`](#plain-object-generation-from-schema-instructdbgeneratepo)
- [📦 Project structure](#-project-structure)
  - [Folder structure locations for types `:instructStructureWriteTypes`](#folder-structure-locations-for-types-instructstructurewritetypes)
  - [Draw my folder structure from specifications `:instructStructureDrawNewFiles`](#draw-my-folder-structure-from-specifications-instructstructuredrawnewfiles)
  - [Existing project structure acknowledgement `:instructStructureAcknowledgeProject`](#existing-project-structure-acknowledgement-instructstructureacknowledgeproject)
  - [Review project files structures `:instructStructureReviewFilesAndDirectories`](#review-project-files-structures-instructstructurereviewfilesanddirectories)
- [🧪 Testing](#-testing)
  - [Acceptance Criteria as Gherkin `:instructTestingConvertAcceptanceCriteriaIntoGherkin`](#acceptance-criteria-as-gherkin-instructtestingconvertacceptancecriteriaintogherkin)

## 🎨 Personalize the AI as a developer from YOUR team

Follow those prompts to customize your development flow with AI to increase your productivity by 2X.

### Contextualization (LLM instructions) `:instructContextualizeProject`

This should help the LLM to act as you would expect it to do endorsing your own knowledge and experience.

> **This should be part of a custom agent, like [a personalized GPT](https://chat.openai.com/gpts).**

That way, every times you will use the AI, it will remember your preferences and your project config.

Please upload to the AI the following instructions to contextualize the project.

- `package.json` or equivalent
- Project structure (eg: `tree -I "node_modules" > project-structure.txt`)
- *Optional*: Mockups or Pages Design (export this as `.pdf` for best results and optimize size the more you can to increase the AI's performance - use `:variousOptimizePDF`'s prompt!)

```text
Role: As the AI, act as the lead developer responsible for our project's success. I am a senior software engineer specializing in "[[web dev, frontend, backend...]]". Our users are the application end-users.

Guidelines:
- Provide last to date info.
- Always be very concise in your answers.
- Enhance readability with bold, italic, and lists as needed.
- Adjust based on my feedback.
- When in doubt, ask me for more details.
- Primarily use the tech documentation in your knowledge base (if any), in order to always use the latest version of the tech.
- Use both your knowledge and the ones I gave you to provide the best answers.

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

Project: We are working on "[[project name]]", focusing on "[[project goals]]".

Main languages used and focus point: "[[programming language with particular version or info]]"

From your knowledge base, get:
- Tech Stack versions
- Project Structure
- Mockups or pages design in order for you to understand the project, with fake data (if any)

Development Process: We adhere to Agile, with bi-weekly sprints and CI/CD.

Collaboration Tools: Git and Ticketing tool like Jira or Linear.
```

## 🆕 Create new features

### Generate feature user-stories from request `:instructFeatureGenerateUS`

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

[[Project and lib setup have already been done | Project and lib setup might not have been done]]

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

### Extract coding steps for a sub-task `:instructFeatureExtractCodingSteps`

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

### Rewrite coding steps `:instructFeatureRewriteCodingSteps`

```text
Rewrite coding steps:

- [ ] Removing those you do not need
- [ ] Adding those you need (should not occur if the previous steps were detailed enough)
- [ ] Give details about coding implementations (where, how, etc.)

```text
Please rewrite the coding steps that way:

[[Fixes from LLM's answer]]
```

## 👌 Existing features

### Acknowledge and code from specification from your feature `:instructExistingFeatureAcknowledgements`
  
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

### Give me output example based on your understandings `:instructExistingFeatureOutputExample`

```text
Give me an output example based on your understandings, with required inputs and the expected output.
```

### Answer LLM's questions about your feature (if needed) `:instructExistingFeatureIterate`

```text
Here are some answers about your previous questions.

Note that I cannot provide you with the full code, nor answer every details of the question.

Can you merge this new information together with the previous ones, and then:

- If there is not absolute need for more details, only give me the required development steps involved in coding the functionality?
- If you definitely need more details, please only ask me the crippling questions.

Here are my answers:

[[Your answers to the previous questions]]
```

## 📄 Documentation

### Search in the documentation `:instructDocSearchURL`

```text
I need you to read the following documentation.

"[[documentation url]]"

Based on that documentation, can you:

"[[want you want to do]]"

Please provide the best step by step way to it.

For each step, detail your explanation with the proper code.
```

## 🏞️ Image

### Extract info from mockups `:instructImageExtractMockupInfo`

```text
Here is a mockup image of the feature I have to do as a developer.

First, can you detail everything you see on the image? Please group your answer by delimited sections.

Then, ask me the relevant questions about sections you did not understand.
```

### Detail coding structure from the image `:instructImageDetailCodingStructure`

```text
Based on the description you made from the image, can you provide me the coding structure to achieve the outcome?

Be as much detailed as possible, do not forget anything.

1. List my current tech stack and libraries for the frontend.
2. Propose new libraries if needed, only focus on frontend integration (no data-fetching).
3. Draw the full folder structure.
4. List components to create in their respective folders.
```

### Generate code from image  `:instructImageGenerateCode`

```text
From the structure we defined together, can you generate the code for each components?

[[Additional information if needed]]

1. Define styling to use.
2. Create each components, always give the full props and the full code, never use comments.
```

### Create actions from image  `:instructImageCreateActions`

```text
Based on this image, can you identify actions?

Here are the actions I want you to identify:

[[List of actions to identify]]

1) Quickly detail what you understand from the actions in the image.
2) Remember the tech stack and libraries for the frontend.
3) Create components with proper functions to execute the actions, in their respective folders, based on the image and the actions.
```

## 📀 Database

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

## 📦 Project structure

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

### Existing project structure acknowledgement `:instructStructureAcknowledgeProject`

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

## 🧪 Testing

### Acceptance Criteria as Gherkin `:instructTestingConvertAcceptanceCriteriaIntoGherkin`

Transforms some acceptance criteria into Gherkin syntax.

```text
From this acceptance criteria, can you transform it into Gherkin syntax?

[[Acceptance criteria]]
```
