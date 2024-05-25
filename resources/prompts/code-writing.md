# 🖥️ AI Driven Dev - "Code Writing" Prompts (`:code`)

Related to code interaction (eg: with Copilot).

- [🧑‍💻 Code](#-code)
  - [Change code without import `:codeChangeCodeWithoutImport`](#change-code-without-import-codechangecodewithoutimport)
  - [Create a function from specs `:codeCreateFunctionFromSpecs`](#create-a-function-from-specs-codecreatefunctionfromspecs)
  - [Merge file with almost same content `:codeMergeFileWithAlmostSameContent`](#merge-file-with-almost-same-content-codemergefilewithalmostsamecontent)
  - [Base on file, update file `:codeUpdateFile`](#base-on-file-update-file-codeupdatefile)
  - [Base on file, create a new similar file `:codeCreateNewSimilarFile`](#base-on-file-create-a-new-similar-file-codecreatenewsimilarfile)
  - [Convert type into another type `:codeConvertType`](#convert-type-into-another-type-codeconverttype)
  - [Help me thinking `:codeHelpThinking`](#help-me-thinking-codehelpthinking)
  - [Improve code readability `:codeImproveReadability` (WIP 🚧)](#improve-code-readability-codeimprovereadability-wip-)
  - [Give me an example of the usage of this function `:codeProvideExampleUsage` (WIP 🚧)](#give-me-an-example-of-the-usage-of-this-function-codeprovideexampleusage-wip-)
- [🚀 Generation](#-generation)
  - [Generate type hinting `:codeGenerateTypeHinting`](#generate-type-hinting-codegeneratetypehinting)

## 🧑‍💻 Code

### Change code without import `:codeChangeCodeWithoutImport`

**Description**:

Sometimes some AIs like GitHub Copilot are inserting import statements aside to the code. This prompt is to avoid that.

**Prompt**:

```text
Do not import, just change the code to make it work.
```

## Create a function from another function `:codeCreateFunctionFromAnotherFunction`

**Description**:

Create a new function from another function with similar logic but different parameters.

**Prompt**:

```text
Based on the code below (surrounded by "---" delimiters):

---
[[Code of the existing function]]
---

Create a new similar function that takes a different parameters.

The new function should have the following signature:
[[New function signature]]

#file
```

### Create a function from specs `:codeCreateFunctionFromSpecs`

**Description**:

Create a function from specs.

**Prompt**:

```text
Based on those specs (see below), create a function that returns "[[what you want to return]]".

---
Verify that creating a tip defaults its status to "draft".
Ensure that a draft tip cannot be voted on.
Verify that once a tip is "scheduled", it cannot receive any more votes.
Check that "archived" tips cannot be voted on.
---
```

### Merge file with almost same content `:codeMergeFileWithAlmostSameContent`

**Description**:

Merge two files with almost the same content.

**Prompt**:

```text
Based on those two file names "[[filename 1]]" and "[[filename 2]]", merge logic to reduce code duplication.
```

### Base on file, update file `:codeUpdateFile`

**Description**:

Update a file based on another file.

**Prompt**:

```text
Based on file: #file
Update the file: #file

Adapt the content to match the structure.
```

### Base on file, create a new similar file `:codeCreateNewSimilarFile`

**Description**:

Create a new file based on a current file.

```text
Based on file: #file
Create a similar file structure for: #file
Adapt the content to the new file using: #file
```

### Convert type into another type `:codeConvertType`

**Description**:

Convert a type into another type.

**How to use the prompt**:

| Usage                   | Context                                                  |
|-------------------------|----------------------------------------------------------|
| 🔁 **Follow-up prompt** | None                                                     |
| 🗂️ **Requirements**     | None                                                     |
| 🔍 **Context**          | None                                                     |
| 📌 **Annotations**      | Optional `@workspace` if you decide to convert from paths|
| ✅ **Variables needed** | Yes                                                      |

**Prompt**:

```text
Your goal is to code a convert function to transform a type into another.

Type to convert is:
[[Type to convert or path]]

Type to convert into is:
[[Type to convert into or path]]

For each property of the type to convert, find the corresponding property in the type to convert into.

Please provide the following code.
```

### Help me thinking `:codeHelpThinking`

```text
I need you to help me think about the best way to implement this new functionality:
[[new functionality]]

Please provide the best coding steps regarding my existing code.
```

### Improve code readability `:codeImproveReadability` (WIP 🚧)

```text
I need you to improve the readability of the following code.

Result should remain the same, but the code should be easier to read and understand.
```

### Give me an example of the usage of this function `:codeProvideExampleUsage` (WIP 🚧)

```text
Provide an example of the usage of this function, input and output.
```

## 🚀 Generation

### Generate type hinting `:codeGenerateTypeHinting`

```text
Type hints all necessary variables in this code.

Import types if necessary.

Assert that types match return values.

Do not type "any" if possible.
```
