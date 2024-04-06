# 🏁 AI Driven Dev - Prompts (`:instruct`)

Those prompt are made to make your discussions with AI more easy to do.

Drive AI to help you in your daily dev tasks.

- [🆕 Create new features](#-create-new-features)
  - [Generate feature user-stories from request `:instructFeatureGenerateUS`](#generate-feature-user-stories-from-request-instructfeaturegenerateus)
  - [Extract coding steps for a sub-task `:instructFeatureExtractCodingSteps`](#extract-coding-steps-for-a-sub-task-instructfeatureextractcodingsteps)
  - [Create coding steps from development steps `:instructFeatureCreateCodingSteps`](#create-coding-steps-from-development-steps-instructfeaturecreatecodingsteps)
- [👌 Existing features](#-existing-features)
  - [Acknowledge specs and code from specification from your feature `:instructExistingFeatureAcknowledgements`](#acknowledge-specs-and-code-from-specification-from-your-feature-instructexistingfeatureacknowledgements)
  - [Give me output example based on your understandings `:instructExistingFeatureOutputExample`](#give-me-output-example-based-on-your-understandings-instructexistingfeatureoutputexample)
  - [Answer LLM's questions about your feature (if needed) `:instructExistingFeatureIterate`](#answer-llms-questions-about-your-feature-if-needed-instructexistingfeatureiterate)
- [📄 Documentation](#-documentation)
  - [Search in the documentation from URL `:instructDocSearchURL`](#search-in-the-documentation-from-url-instructdocsearchurl)
- [🏞️ Image](#️-image)
  - [Extract details from image `:instructImageDetail`](#extract-details-from-image-instructimagedetail)
  - [Identify image section actions `:instructImageIdentifyActions`](#identify-image-section-actions-instructimageidentifyactions)
  - [Match existing code from knowledge base `:instructImageCheckMatchingCode`](#match-existing-code-from-knowledge-base-instructimagecheckmatchingcode)
  - [Define methods to use `:instructImageDefineMethods`](#define-methods-to-use-instructimagedefinemethods)
  - [Match existing UI components in image `:instructImageCheckExistingUIComponents`](#match-existing-ui-components-in-image-instructimagecheckexistinguicomponents)
  - [Generate code for image section `:instructImageSectionGenerateCode`](#generate-code-for-image-section-instructimagesectiongeneratecode)
  - [Implement image section design `:instructImageSectionImplementDesign`](#implement-image-section-design-instructimagesectionimplementdesign)
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
  - [Functional tests listing from user-stories `:instructTestingListFunctionalTests`](#functional-tests-listing-from-user-stories-instructtestinglistfunctionaltests)
  - [Unit test prompt generation `:instructTestingGenerateUnitTestPrompt` (WIP 🚧)](#unit-test-prompt-generation-instructtestinggenerateunittestprompt-wip-)
- [🛠️ Project setup](#️-project-setup)
  - [Good practices setup `:instructSetupGoodPractices`](#good-practices-setup-instructsetupgoodpractices)
  - [Readme for project setup `:instructReadmeProjectSetup`](#readme-for-project-setup-instructreadmeprojectsetup)
  - [New lib setup `:instructSetupNewLib`](#new-lib-setup-instructsetupnewlib)

## 🆕 Create new features

### Generate feature user-stories from request `:instructFeatureGenerateUS`

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

### Extract coding steps for a sub-task `:instructFeatureExtractCodingSteps`

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

### Create coding steps from development steps `:instructFeatureCreateCodingSteps`

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

### Acknowledge specs and code from specification from your feature `:instructExistingFeatureAcknowledgements`
  
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

### Search in the documentation from URL `:instructDocSearchURL`

```text
I need you to read the following documentation.

"[[documentation url]]"

Based on that documentation, can you:

"[[want you want to do]]"

Please provide the best step by step way to it.

For each step, detail your explanation with the proper code.
```

## 🏞️ Image

### Extract details from image `:instructImageDetail`

> ⚠️ For best result you MUST re-upload the image in question before using this prompt.

```text
Here is an image of my "[[the image you describe]]" for a feature I have to code.

Identify main sections in the page.

For each section, give a detailed breakdown of the children elements.
```

### Identify image section actions `:instructImageIdentifyActions`

From the image sections identified, group them.

```text
Identify image section actions, I need you to focus only on this image section I have to code (surrounded by "---" delimiters):

---
[[image section with title and description]]
---

Every time I refer to the image, we will focus on this section.

Determine every actions in a bullet list:

1. Identify: simple text, changing state and actions that must be handled by functions.
2. Describe those with a few word.

Note for you:
- If you are not sure about what you identified, ask me the relevant questions.
- For actions and states, we will get the info from the existing codebase afterward.
```

### Match existing code from knowledge base `:instructImageCheckMatchingCode`

> ⚠️ For best result you MUST re-upload `documentation.md` before using this prompt.

Once you specified the wanted outcome:

```text
Match existing code (variables and functions) from knowledge base in "documentation.md" file.

Here is the image section "[[section's name]]" I have to code (surrounded by "---" delimiters):
---
[[Section's description with your outcomes]]
---

For each elements, provide "[[number (default should be 2)]]" existing functions or variables (with their paths) that can fill the needs, sorted by relevance.
```

### Define methods to use `:instructImageDefineMethods`

```text
In order to code the feature, I assert the following methods to use, defined here (surrounded by "---" delimiters):
---
[[Variables and functions to use]]
---

Do nothing, just reply "ok" if you understood.
```

### Match existing UI components in image `:instructImageCheckExistingUIComponents`

```text
Match existing UI components in image section:

1. Check the "documentation.md" file in the knowledge base.
2. Locate global UI components directory from "documentation.md" in the knowledge base (containing Button, Table etc), and give the path.
3. Identify needed elements, what kind of components are they? (Title, button, paragraph, etc)
4. Same basic elements (like paragraph, headings, links) might not required a component but rather a simple HTML tag, list them.
5. Based on the elements that need components, check if there is a match of potential use with the existing components from global UI components dir.
```

### Generate code for image section `:instructImageSectionGenerateCode`

```text
Generate the code for this component:

1. Based on project structure in "documentation.md", propose a new file path.
2. List existing full paths for functions, variables and UI components defined earlier to use.
3. Create a single component (unless it is necessary to create more) with the following rules:
- No HTML classes
- No comments
- Use only libraries listed in our project dependencies.
- Fill every function with the needed logic defined earlier.
- If you put links in the component, check that path is correct from project structure.
[[More rules specific to your project]]
```

### Implement image section design `:instructImageSectionImplementDesign`

```text
Implement the design from the image section "[[section's name]]" using [[Tailwind CSS | Only CSS | Material UI]].

1. Extract positions and sizes for each UI elements in the image, look for padding, margin, alignment, font size, etc.
2. Update the code implementation with the design from the image following the rules below:
- Use container, row, column, flexbox, grid, etc if needed.
- Use only libraries listed in our project dependencies.
- No explanation needed, only code.
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

### Functional tests listing from user-stories `:instructTestingListFunctionalTests`

**Description**:

List functional tests for a feature based on a user-story.

The idea is to have an exhaustive list of tests to be done.

**Prompt**:

```text
From our user-story, I need you to list all the functional tests that we need to do. 
```

### Unit test prompt generation `:instructTestingGenerateUnitTestPrompt` (WIP 🚧)

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

## 🛠️ Project setup

### Good practices setup `:instructSetupGoodPractices`

```text
Regarding my used project technologie, can you help me to enforce the following good practices in my application?

- Code format
- Linting
- Tests before commit
- Build before push
- Force good commit convention from conventional commit (or equivalent)
- SemVer version management
- Major updates notice (in CI)
- Minor and security updates automatically install

Then, for each steps, detail the step by step things to setup those improvements regarding my project's config.

Use the latest version of tools unless I do specify otherwise.
```

### Readme for project setup `:instructReadmeProjectSetup`

```text
I need a perfect Readme.md file for the other developers within the project.

1. Can you bullet point list every required steps to start the project based on our discussion?
2. Please include steps like git clone, dependencies installation, .env configuration, authentication, run locally...
3. Suggest improvements regarding the Readme.md you just made
```

### New lib setup `:instructSetupNewLib`

```text
Regarding my project stack, help me setup "[[lib to setup]]” for my current project.
```
