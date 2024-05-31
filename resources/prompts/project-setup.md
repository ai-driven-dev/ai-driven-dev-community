
# 🖥️ AI Driven Dev - "Project setup" Prompts (`:setup`)

Setup prompts to kick-off your dev projects with ease.

- [🛠️ Project setup](#️-project-setup)
  - [Good practices setup `:setupGoodPractices`](#good-practices-setup-setupgoodpractices)
  - [README Generation `:setupReadme`](#readme-generation-setupreadme)
  - [Setup a new lib configuration `:setupLib`](#setup-a-new-lib-configuration-setuplib)

## 🛠️ Project setup

### Good practices setup `:setupGoodPractices`

**Description**:

When creating a new project, enforce good practices at the beginning to avoid future issues.

**How to use the prompt**:

> Note : Bold usages are required, others are optional.

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT                                                    |
| 🔍 **Context**          | Right after creating your project.                         |

**Prompt**:

```text
Regarding my used project technologies "[[your tech stack]]", can you help me to enforce the following good practices in my application?

- Code format.
- Linting.
- Tests before commit.
- Build before push.
- Force good commit convention from conventional commit (or equivalent).
- SemVer version management.
- Major updates notice (in CI).
- Minor and security updates automatically install.
- Security checks.
- Code coverage.
- Documentation.

Then, for each steps, detail the step by step things to setup those improvements regarding my project's config.

Use the latest version of tools unless I do specify otherwise.
```

### README Generation `:setupReadme`

**Description**:

Setup a quick an beautiful `README.md` file for your project.

**How to use the prompt**:

> Note : Bold usages are required, others are optional.

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT                                                    |
| 🔍 **Context**          | The second things to do after good practices setup.        |

**Prompt**:

```text
I need a perfect Readme.md file for the other developers within the project.

1. Can you bullet point list every required steps to start the project based on our discussion?
2. Please include steps like git clone, dependencies installation, .env configuration, database, authentication, run locally...
3. From my teck stack, advice about how to configure necessary libs.
4. Suggest improvements regarding the Readme.md you just made.

My full tech stack includes: #file:dependency-file
```

### Setup a new lib configuration `:setupLib`

**Description**:

A simple prompt to help you setup a new library configuration in your project.

**How to use the prompt**:

> Note : Bold usages are required, others are optional.

| Usage                   | Context                                                    |
|-------------------------|------------------------------------------------------------|
| 🚀 **Author**           | [@alexsoyes](https://beacons.ai/alexsoyes)                 |
| 🤖 **Tool**             | ChatGPT                                                    |
| 🔍 **Context**          | Setup a lib for your project based on your stack.          |

**Prompt**:

```text
Regarding my project stack "[[tech stack]]", help me setup "[[lib to setup]]” for my current project.
```
