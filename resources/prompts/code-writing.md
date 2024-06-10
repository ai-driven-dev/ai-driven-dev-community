# 🖥️ AI Driven Dev - "Code Writing" Prompts (`:code`)

Related to code interaction in your IDE with an embedded AI model (like GitHub Copilot).

- [🚛 Files](#-files)
  - [Base on code, generate new `:codeBasedGenerate`](#base-on-code-generate-new-codebasedgenerate)
  - [Base on file, create a new similar file `:codeFileCreate`](#base-on-file-create-a-new-similar-file-codefilecreate)
- [🚀 Generation](#-generation)
  - [Generate type hinting `:codeGenerateTypeHinting`](#generate-type-hinting-codegeneratetypehinting)
  - [Generate a new function from specs `:codeGenerateFunctionFromSpecs`](#generate-a-new-function-from-specs-codegeneratefunctionfromspecs)
  - [Generate transformer pattern `:codeGenerateTransformer`](#generate-transformer-pattern-codegeneratetransformer)
  - [Generate a new function with different parameters `:codeGenerateFunction`](#generate-a-new-function-with-different-parameters-codegeneratefunction)

## 🚛 Files

### Base on code, generate new `:codeBasedGenerate`

**Description**:

Generate some new code based on existing one.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | In your editor.                                            |

**Prompt**:

```text
Based on existing code (surrounded by "---" delimiters):
---
[[Code to be inspired on]]
---

Generate new similar code for #selection regarding "[[things you want to do]]".

Adapt the existing code with the new one regarding names.
```

### Base on file, create a new similar file `:codeFileCreate`

**Description**:

Create a new "same" file based on a current file.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | In your editor.                                            |

**Prompt**:

```text
Based on file: #file
Create a similar file structure for: #file
Adapt the content to the new file using: #file

You need to create a similar file structure adapting content and properties to new type.
```

## 🚀 Generation

### Generate type hinting `:codeGenerateTypeHinting`

**Description**:

Type hint all necessary variables / functions in this code.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | In your editor.                                            |

**Prompt**:

```text
Type hints all necessary variables and functions in this code: #selection

Import types if necessary.

Assert that types match return values.

Do not type "any" if possible.
```

### Generate a new function from specs `:codeGenerateFunctionFromSpecs`

**Description**:

Create a function from specs.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | In your editor.                                            |

**Prompt**:

```text
Based on those specs below, create a function with the following signature "[[Function signature]]".

---
[[Fully detailed specs]]
---

#codebase
```

### Generate transformer pattern `:codeGenerateTransformer`

**Description**:

Create a function to transform a type into another type (mapping properties).

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | In your editor.                                            |

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

### Generate a new function with different parameters `:codeGenerateFunction`

**Description**:

Create a new function from another function with similar logic but different parameters.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | Github Copilot                                             |
| 🔍 **Context**          | In your editor.                                            |

**Prompt**:

```text
Based on this code #selection, create a new similar function that takes a different parameters.

The new function should have the following signature (surrounded by a "---" delimiters):
---
[[New function signature]]
---

File to implement the function: #file
```
