# AI Driven Dev - Prompts (Code)

Related to code interaction (eg: with Copilot).

- [AI Driven Dev - Prompts (Code)](#ai-driven-dev---prompts-code)
  - [Convert this type into `:cdtsconv`](#convert-this-type-into-cdtsconv)
  - [Improve code readability `:cdopt`](#improve-code-readability-cdopt)
  - [Log every steps of this code `:cdstepslog`](#log-every-steps-of-this-code-cdstepslog)
  - [Log analyzer `:cdexplainlog`](#log-analyzer-cdexplainlog)
  - [Translation `:cdtrans`](#translation-cdtrans)

## Convert this type into `:cdtsconv`

```text
Here is my JSON object:

"[[code]]"

Convert it to a TypeScript Type.
```

## Improve code readability `:cdopt`

```text
Please optimize the following code for readability.
It must produce the same output, behavior must not change.

[[code]]
```

## Log every steps of this code `:cdstepslog`

```text
Add logging on every steps in order to identify bugs.
```

## Log analyzer `:cdexplainlog`

```text
Analyze the following logs.

"[[code]]"

Give me a list of top 5 possibilities that explain why:

[[cause]]
```

## Translation `:cdtrans`

```text
I need you to translate the following text:

[[text]]

It should be translated into the following langage, keep the tone.

[[languages]]
```
