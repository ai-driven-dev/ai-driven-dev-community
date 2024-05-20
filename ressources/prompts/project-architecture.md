# 🖥️ AI Driven Dev - "Project structure" Prompts (`:struct`)

- [📦 Project structure](#-project-structure)
  - [Folder structure locations for types `:instructStructureWriteTypes`](#folder-structure-locations-for-types-instructstructurewritetypes)
  - [Draw my folder structure from specifications `:instructStructureDrawNewFiles`](#draw-my-folder-structure-from-specifications-instructstructuredrawnewfiles)
  - [Existing project structure acknowledgement `:instructStructureAcknowledgeProject`](#existing-project-structure-acknowledgement-instructstructureacknowledgeproject)
  - [Review project files structures `:instructStructureReviewFilesAndDirectories`](#review-project-files-structures-instructstructurereviewfilesanddirectories)

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
