# 🖥️ AI Driven Dev - "Database" Prompts (`:db`)

A sample prompt for generating SQL schema from a list of entities and relations:

- [📀 Generation](#-generation)
  - [SQL Schema Generation `:dbGenerateSchema`](#sql-schema-generation-dbgenerateschema)
  - [Plain Object Generation from Schema `:dbGenerateObjects`](#plain-object-generation-from-schema-dbgenerateobjects)

## 📀 Generation

### SQL Schema Generation `:dbGenerateSchema`

**Description**:

Generate a full database schema base on the entities and relations between them.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT, [GPT RAG Dev](../llm-instructions/gpt-rag-developer.md) |
| 🔍 **Context**          | After having writing your specifications, think about the entities. |
| ✅ External files       | Specifications                                             |

**Prompt**:

```text
I need you to help me creating my SQL database schema.

Regarding the specifications, can you help me drawing my model?

Give me the full db schema, with the tables, the columns, the relations between the tables and the constraints from:

[[Entity list and relations between entities]]
```

### Plain Object Generation from Schema `:dbGenerateObjects`

**Description**:

When you want to create the types from the SQL schema.

**How to use the prompt**:

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT, [GPT RAG Dev](../llm-instructions/gpt-rag-developer.md) |
| 🔍 **Context**          | After having writing your specifications, think about the entities. |
| ✨ Required before      | Be sure that you generated an SQL database schema before.  |

**Prompt**:

```text
I need you to help me creating my "[[objects|types|interfaces]]" in "[[language]]" from my SQL database schema (surrounded by "---" delimiters):
---
[[SQL schema]]
---

1. For each entity, I want you to generate the corresponding type.
2. For each relation, I want you to generate the corresponding type.
3. No comment in code.
4. Suffix the type name with "Entity".
```
