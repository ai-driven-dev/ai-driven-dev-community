# AI Driven Dev - Prompts (Code `:code`)

Related to code interaction (eg: with Copilot).

- [Convert this type into `:codedtsconv`](#convert-this-type-into-codedtsconv)
- [Improve code readability `:codedopt`](#improve-code-readability-codedopt)
- [Log every steps of this code `:codedstepslog`](#log-every-steps-of-this-code-codedstepslog)
- [Log analyzer `:codedexplainlog`](#log-analyzer-codedexplainlog)
- [Translation `:codedtrans`](#translation-codedtrans)

## Convert this type into `:codedtsconv`

```text
Here is my JSON object:

"[[code]]"

Convert it to a TypeScript Type.
```

## Improve code readability `:codedopt`

```text
Please optimize the following code for readability.
It must produce the same output, behavior must not change.

[[code]]
```

## Log every steps of this code `:codedstepslog`

```text
Add logging on every steps in order to identify bugs.
```

## Log analyzer `:codedexplainlog`

```text
Analyze the following logs.

"[[code]]"

Give me a list of top 5 possibilities that explain why:

[[cause]]
```

## Translation `:codedtrans`

```text
I need you to translate the following text:

[[text]]

It should be translated into the following langage, keep the tone.

[[languages]]
```
