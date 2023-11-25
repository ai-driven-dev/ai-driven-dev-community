# Developer's prompts

**Every good software engineer needs a good prompt!**

This repo is filled of **amazing prompt for developers**, mapped with my favorite text expander, [Espanso](https://espanso.org).

👉 *You are not forced to use a text expander tool but this is highly recommended!*

DO NOT USE CHATGPT!

* Prefer using CodeGPT FR (in you are francophone) 🇫🇷
* Or the International version CodeGPT Global 🌎

## Table of Contents

Quick jump into the section you want.

* [Table of Contents](#table-of-contents)
* [Text expansion](#text-expansion)
  * [Installation](#installation)
  * [Usage](#usage)
* [Contribution](#contribution)
* [Prompts list](#prompts-list)
  * [Global dev prompts `:pr`](#global-dev-prompts-pr)
    * [Who am I? `:prtsme`](#who-am-i-prtsme)
    * [My project configuration `:prproject`](#my-project-configuration-prproject)
    * [Ask for a feature `:prfeat`](#ask-for-a-feature-prfeat)
    * [Code the feature `:prcode`](#code-the-feature-prcode)
    * [Recode the feature `:prrecode`](#recode-the-feature-prrecode)
    * [Debug issue `:prdebug`](#debug-issue-prdebug)
    * [Fix my error `:prfix`](#fix-my-error-prfix)
  * [Code related prompts `:cd`](#code-related-prompts-cd)
    * [Convert this type into `:cdtsconv`](#convert-this-type-into-cdtsconv)
* [Bonus](#bonus)
  * [ChatGPT Prompt for Code-GPT](#chatgpt-prompt-for-code-gpt)

## Text expansion

### Installation

Follow the [Espanso installation guide here](https://espanso.org/install/) for your operating system.

```shell
espanso install prompts-dev --git git@github.com:alexsoyes/prompts-dev.git --external
```

### Usage

In combination with ChatGPT (or another generative AI).

Use this timeline to find and fix bugs.

* Either by using a keyboard shortcut (like `:cd...`)
* Or by using the dialog box (`OPT+SPACE`)

## Contribution

* Community prompt list, so create a PR with your needs ❤️
* Report prompting issues / improvements at [hello@alexsoyes.com](mailto:hello@alexsoyes.com)

## Prompts list

I tried to respect the following convention.

* `:{group}` : Either code related or prompt related.
* `{optionalLanguageShort}` : Like `ts` for TypeScript related things.
* `{action}` : A verb, a wish or an actions suite.

### Global dev prompts `:pr`

Related to prompts chatting.

#### Who am I? `:prtsme`

```text
I am a senior software engineer on JavaScript but I prefer to use TypeScript.

The libraries I am using are: React, NextJS, Zod, React-Hook-Form, Tailwind.

I need help to write 100% working and clean code.
```

#### My project configuration `:prproject`

```text
I need help for my current project and I need you to help me as an experimented mentor, developer and agile coach.

My project is about:

[[Fully detailed explanation]]

This only project I will refer to you within this conversation is only about this one.

Technically speaking, here are the libs we are using for our project:
[[package.json or equivalent]]
```

#### Ask for a feature `:prfeat`

```text
I am building a new feature for my project.

Goal of the feature: [[context]]
Incoming parameters are: [[params]]
Expected result is: [[result]]

Please give me every detailed steps to do in order to achieve my goal.
```

↺ Discuss with the AI until it understood **what you really mean**.

#### Code the feature `:prcode`

```text
You did understand the feature I want to code.
Now, I need your to write the code following my projects requirements (both technical and from a user view).

You should:

* Spit files (only if needed, respecting clean code principles and other good practices)
* Not put into comment
* Function / Variables names must be short, in english and really matching the expected outcome
```

#### Recode the feature `:prrecode`

```text
Your code does not work as excepted.

[[Explanation why it is failing]]

Can you auto-evaluate your own work?

1) Remind you the goal and try another way to code it.
2) Keep in mind that the code needs to be errorless and get the proper result I asked you about.
3) Can you remind me the goal, the entry parameters and the expect output?
4) Then provide the steps in order to fix the code you wrote.
5) Lastly, check for the generated code in order to be sure that it fits my needs.

Thank you for you professionalism.
```

#### Debug issue `:prdebug`

```text
For this bugfix I am responsible of, here his the context of what I want to do:

[[The context of what I wanted]]

This is producing this strange behavior, the bug is causing:

[[What the bug is doing]]

Can you give me a list 3 clues regarding my issue in order to find the root cause and then, fix it?

Please sort them with the more probable first.
```

#### Fix my error `:prfix`

```text
The following code is not working the way I want it to.

[[code]]

This technical error is:

[[error]]

When I try to:

[[action]]

Please, try to understand the error and then propose the 2 best ways to fix it.

Do not hesitate to ask me if you have need more information to understand the issue.
```

### Code related prompts `:cd`

Related to code interaction (eg: with Copilot).

#### Convert this type into `:cdtsconv`

```
Here is my JSON object:

[[code]]

Convert it to a TypeScript Type.
```

## Bonus

### ChatGPT Prompt for Code-GPT

French version:

```text
I am seeking assistance as a software developer and require your expertise. You are a highly skilled developer, well-versed in a wide range of programming books and technologies.

Assume the role of an AI Software Engineer Assistant.

Harness the power of OpenAI to:

Solve complex engineering challenges,
Create functional and efficient software solutions,
Investigate the latest advancements in software engineering.
Start by introducing yourself as a Software Engineer and demonstrate your expertise in addressing software development-related queries and challenges.

Engage in discussions on topics like system design, architecture, scalability, optimization, or any other facets of software engineering that you find intriguing.

Here are some specifics for tailoring your assistance:

Focus on the latest version of the programming langage you know.
Use your knowledge from every programming book you read, try to write the best possible clean code you can.
Provide solutions for web development, mobile apps, or embedded systems.
Address problems related to tests, clean code, algorithms, debugging, code optimization, system architecture.
Tailor your responses for expert level understanding.
Always consider performance, security, accessibility in your solutions.
This task is crucial to my career, and I greatly value your in-depth analysis.

Respond in French, unless I ask otherwise.

When providing code:

Only include the code itself without explanations.
Do not add comments within the code.
Refrain from giving package installation instructions.
Use two spaces for indentation.

Please ask me if you are wondering how to respond, ask me if you need an info you do not have or a request that is not clear enough to provide de best results.
```
