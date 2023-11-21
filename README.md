# Developer's prompts

Every good software engineer needs a good prompt!

This repo is filled of amazing prompt for developers, mapped with my favorite text expander.

## Installation

Follow the [Espanso installation guide here](https://espanso.org/install/).

```shell
espanso install prompts-dev --git git@github.com:alexsoyes/prompts-dev.git --external
```

# Usage

In combination with ChatGPT (or another generative AI).

Use this timeline to find and fix bugs.

* Either by using a keyboard shortcut (like `:cd...`)
* Or by using the dialog box (`OPT+SPACE`)

## Good practices

* 1 opened conversation / project
* Report prompting issues / improvements at [mailtohello@alexsoyes.com](hello@alexsoyes.com)

# Prompts list

- [Developer's prompts](#developers-prompts)
  - [Installation](#installation)
- [Usage](#usage)
  - [Good practices](#good-practices)
- [Prompts list](#prompts-list)
  - [`:cd`](#cd)
    - [Convert this type into `:cdtsconv`](#convert-this-type-into-cdtsconv)
  - [`:pr`](#pr)
    - [Act as a developer `:prspec`](#act-as-a-developer-prspec)
    - [My project configuration `:prproject`](#my-project-configuration-prproject)
    - [Ask for a feature : `:prfeat`](#ask-for-a-feature--prfeat)
    - [Code the feature : `:prcode`](#code-the-feature--prcode)
    - [Code the feature : `:prrecode`](#code-the-feature--prrecode)
    - [Debug the feature : `:prdebug`](#debug-the-feature--prdebug)
    - [Fix the the : `:prfix`](#fix-the-the--prfix)

## `:cd`

Related to code interaction (eg: with Copilot).

### Convert this type into `:cdtsconv`

```
Here is my JSON object:


Convert it to a TypeScript Type.
```

## `:pr`

Related to prompts chatting.

### Act as a developer `:prspec`

```
Act like a senior software engineer on JavaScript.
You are a very good programmer and you always write the best code.
Your specialization are React and TypeScript, you know everything of those technologies because you read all the doc.
You do follow good practices.


Do you need anything else?
```


### My project configuration `:prproject`

```
I need help for my current project and I need you to help me as an experimented mentor.

The project I will refer to is the only one I need help on.

Here are the libs I am using for my project:

(copy/paste package.json or equivalent)
```

### Ask for a feature : `:prfeat`

```
I am building a new feature for my project.

Goal of the feature:
Incoming parameters are:
Expected result is:

Please give me the steps to od in order to acheive my goal.
```

Discuss with the AI until it understood **what you really meant**.

### Code the feature : `:prcode`

```
You did understand the feature I want to code, now, can you generate to me the needed code?

You are allowed to:
- Spit files (only if needed, respecting clean code principles and other good practices)
- Do not put any comment
- Function / Variables names must be short, in english and really matching the expected outcome
```

### Code the feature : `:prrecode`

```
Your code does not work as excepted.

Please remind you the goal and try another way to code it.

The code needs to be errorless and get the result I want to.
```

### Debug the feature : `:prdebug`

```
For this bugfix I am responsible of, here his the context:

This is producing this strange bug which:

Can you give me a list of possibilities (at least 2) in order to find the issue and then fix it?

You should order the list of possibles fixes by the order of the best probable of fixing the bug first.
```

### Fix the the : `:prfix`

````
The following code is not working the way I want it to.

This error is:

When I try to:

Please, fix the error. 
Do not hesitate to ask I you have need more information to understand the issue.
```

# ChatGPT Prompt for conversion

In order to make this readme up-to-date, I did gave Chat-GPT this prompt in order to transform this readme into a `yml` based file structure.

```
WIP
```