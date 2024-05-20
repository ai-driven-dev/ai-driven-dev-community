# 🖥️ AI Driven Dev - "Database" Prompts (`:db`)

- [📀 Database](#-database)
  - [SQL Schema Generation `:dbGenerateSchema`](#sql-schema-generation-dbgenerateschema)
  - [Plain Object Generation from Schema `:dbGeneratePO`](#plain-object-generation-from-schema-dbgeneratepo)

## 📀 Database

### SQL Schema Generation `:dbGenerateSchema`

```text
I need you to help me creating my SQL database schema.

Regarding the specifications, can you help me drawing my model?

Give me the full db schema, with the tables, the columns, the relations between the tables and the constraints from:

[[Entity list and relations between entities]]
```

### Plain Object Generation from Schema `:dbGeneratePO`

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
