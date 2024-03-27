# AI Driven Dev - Prompts (`:instruct`)

Those prompt are made to make your discussions with AI more easy to do.

Drive AI to help you in your daily dev tasks.

- [🆕 Create new features](#-create-new-features)
  - [Generate feature user-stories from request `:instructFeatureGenerateUS`](#generate-feature-user-stories-from-request-instructfeaturegenerateus)
  - [Extract coding steps for a sub-task `:instructFeatureExtractCodingSteps`](#extract-coding-steps-for-a-sub-task-instructfeatureextractcodingsteps)
  - [Create coding steps from development steps `:instructFeatureCreateCodingSteps`](#create-coding-steps-from-development-steps-instructfeaturecreatecodingsteps)
- [👌 Existing features](#-existing-features)
  - [Acknowledge specs and code from specification from your feature `:instructExistingFeatureAcknowledgements`](#acknowledge-specs-and-code-from-specification-from-your-feature-instructexistingfeatureacknowledgements)
  - [Give me output example based on your understandings `:instructExistingFeatureOutputExample` WIP](#give-me-output-example-based-on-your-understandings-instructexistingfeatureoutputexample-wip)
  - [Answer LLM's questions about your feature (if needed) `:instructExistingFeatureIterate`](#answer-llms-questions-about-your-feature-if-needed-instructexistingfeatureiterate)
- [💽 RAG](#-rag)
  - [Search in RAG knowledge base `:instructRAGKnowledgeBase`](#search-in-rag-knowledge-base-instructragknowledgebase)
- [📄 Documentation](#-documentation)
  - [Search in the documentation from URL `:instructDocSearchURL`](#search-in-the-documentation-from-url-instructdocsearchurl)
- [🏞️ Image](#️-image)
  - [Extract details from image `:instructImageDetail`](#extract-details-from-image-instructimagedetail)
  - [Identify image section actions `:instructImageIdentifyActions`](#identify-image-section-actions-instructimageidentifyactions)
  - [Match existing code from knowledge base `:instructImageCheckMatchingCode`](#match-existing-code-from-knowledge-base-instructimagecheckmatchingcode)
  - [Match existing UI components in image `:instructImageCheckExistingUIComponents`](#match-existing-ui-components-in-image-instructimagecheckexistinguicomponents)
  - [Generate code for image section `:instructImageSectionGenerateCode`](#generate-code-for-image-section-instructimagesectiongeneratecode)
  - [Create template layout from image `:instructImageCreateTemplate`](#create-template-layout-from-image-instructimagecreatetemplate)
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
Given the coding task detailed below:

"""
[[sub task full description]]
"""

0. For each question, search into knowledge base.
1. Recall name, tech stack and libraries from [[package.json | composer.json | requirements.txt]] in the knowledge base.
2. Concentrate solely on the task at hand.
3. Identify any potential missing sub-tasks.
4. Reformulate tasks in one line.
5. Remind the project structure from you knowledge.
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

### Give me output example based on your understandings `:instructExistingFeatureOutputExample` WIP

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

## 💽 RAG

Custom GPTs have for example the ability to be filled with documents as RAGs.

### Search in RAG knowledge base `:instructRAGKnowledgeBase`

```text
Search your knowledge to find: [[what you are looking for]].
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

```text
Here is an image of the feature I have to code.

Identify sections in bullet points (group the more you can).
```

### Identify image section actions `:instructImageIdentifyActions`

```text
Identify image section actions, I need you to focus only on this image section I have to code (surrounded by "---" delimiters):

---
[[image section with title and description]]
---

Every time I refer to the image, we will focus on this section.

Determine every actions in a bullet list:

1. Identify: simple text, state that need to be dynamic and actions.
2. Describe those with a few word.

Note for you:
- If you are not sure about what you identified, ask me the relevant questions.
- For actions and states, we will get the info from the existing codebase afterward.
```

### Match existing code from knowledge base `:instructImageCheckMatchingCode`

```text
Match existing code from knowledge base based on those actions and states:

1. Check the documentation.md file in the knowledge base
2. For each actions and states: look up for existing code that can be re-used (find the more relevant using: variable and function names, file names, files paths etc).

Note for you:
- If you find a match: provide the function path.
- If you do not find a match or if you are not sure: find the 3 closest possible code.
```

### Match existing UI components in image `:instructImageCheckExistingUIComponents`

```text
Match existing UI components in image:

1. Check the documentation.md file in the knowledge base
2. Locate global UI components directory from documentation.md in the knowledge base (containing Button, Table etc), and give the path.
3. Identify needed elements, what kind of components are they? (Title, button, paragraph, etc)
4. Same basic elements (like paragraph, headings, links) might not required a component but rather a simple HTML tag, list them.
5. Based on the elements that need components, check if there is a match of potential use with the existing components from global UI components dir.
```

### Generate code for image section `:instructImageSectionGenerateCode`

```text
Prepare to code:
- Check the documentation.md file in the knowledge base
- From the documentation, suggest the best place to create the new files.
- Do not create components that are not reusable.
- Identity states and props.
- Remind the actions and functions you identified.
- Remind the existing UI components to use and the ones we need to create.

Code the feature from the image with the following rules:
- Never suggest code from libs not listed in [[package.json | requirements.txt | composer.json]].
- Remember our tech stack.
- Use the best practices and clean code principles.
- Provide the full code, never skip a part of it.
```

### Create template layout from image `:instructImageCreateTemplate`

```text
Use [[Tailwind CSS | Only CSS | Material UI]], create the template layout only (with no content) using the [[flexbox | grid]] layout.
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
