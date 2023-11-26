# A tailored list of developer prompts 📋

Every good software engineer needs good prompts!

This repo is filled of **amazing prompt for developers**, mapped with my favorite text expander, [Espanso](https://espanso.org).

👉 *You are not forced to use a text expander tool but this is highly recommended!*

♻️ This is a WIP one, do not hesitate to contribute kicking errors and improving prompts!

## A french community

Join a group of french software engineers that are using AI.

[![Discord](https://img.shields.io/badge/Discord-7289DA?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/mcNwacZCvC)

## Do not use ChatGPT

I prompted two AI to act like the best software engineers.

* [Prefer using CodeGPT FR (in you are francophone)](https://chat.openai.com/g/g-RmIJzZYzS-code-gpt) 🇫🇷
* [Prefer using CodeGPT (english version)](https://chat.openai.com/g/g-S1wfMarvA-ai-programming-expert) 🌎

> It is working much better that the original version and works even better with the prompts under.

## Table of Contents

Quick jump into the section you want.

* [A french community](#a-french-community)
* [Do not use ChatGPT](#do-not-use-chatgpt)
* [Table of Contents](#table-of-contents)
* [Text expansion](#text-expansion)
  * [Installation](#installation)
  * [Updates](#updates)
  * [Usage](#usage)
    * [Quick demo](#quick-demo)
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
    * [Test my feature `:prpretest`](#test-my-feature-prpretest)
    * [Test my feature `:prunittests`](#test-my-feature-prunittests)
  * [Code related prompts `:cd`](#code-related-prompts-cd)
    * [Convert this type into `:cdtsconv`](#convert-this-type-into-cdtsconv)
    * [Convert this type into `:cdopt`](#convert-this-type-into-cdopt)
    * [Convert this type into `:cdlog`](#convert-this-type-into-cdlog)
    * [Convert this type into `:cdtrans`](#convert-this-type-into-cdtrans)
* [Bonus](#bonus)
  * [Coming Soon](#coming-soon)
  * [ChatGPT Prompt for Code-GPT](#chatgpt-prompt-for-code-gpt)
    * [i10n version 🌎](#i10n-version-)
    * [French version 🇫🇷](#french-version-)

## Text expansion

### Installation

Follow the [Espanso installation guide here](https://espanso.org/install/) for your operating system.

```shell
espanso install prompts-dev --git git@github.com:alexsoyes/prompts-dev.git --external
```

### Updates

In order to have the updates, just:

```shell
espanso package update prompts-dev
espanso package update all # or if you want to update all your packages at once :)
```

### Usage

In combination with ChatGPT (or another generative AI).

Use this timeline to find and fix bugs.

* Either by using a keyboard shortcut (like `:cd...`)
* Or by using the dialog box (`⌥ + SPACE` or `ALT + SPACE`)

#### Quick demo

It saved hours.

![Text expander with AI](images/espanso-code-gpt.gif)

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

I will try to always provide to you the relevant code associated to the feature or bug or whatever I talk you about.

The code will be surrounded by ", whenever possible.

Technically speaking, here are the libs we are using for our project:

"[[package.json or equivalent]]"
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

"[[code]]"

This technical error is:

[[error]]

When I try to:

[[action]]

Please, try to understand the error and then propose the 2 best ways to fix it.

Do not hesitate to ask me if you have need more information to understand the issue.
```

#### Test my feature `:prpretest`

```text
I want you to write a test for the this feature:

[[feature you talked about previously]]

Give me a list of tests that need to be done in order to secure the feature delivery in production.

It must be 100% bullet proof since I cannot afford to have bug in the feature, this is vital to me.

Every test cases must be covered.
```

#### Test my feature `:prunittests`

```text
For the following list of test cases:

[[your test cases and the ones gave by AI]]

Can you generate the corresponding code to test the following file:

"[[copy paste your component here]]"

Remember, you test must be 100% working.
```

### Code related prompts `:cd`

Related to code interaction (eg: with Copilot).

#### Convert this type into `:cdtsconv`

```text
Here is my JSON object:

"[[code]]"

Convert it to a TypeScript Type.
```

#### Convert this type into `:cdopt`

```text
Please optimize the following code for readability.
It must produce the same output.

"[[code]]"
```

#### Convert this type into `:cdlog`

```text
Analyze the following logs.

"[[code]]"

Give me a list of top 5 possibilities that explain why:

[[cause]]
```

#### Convert this type into `:cdtrans`

```text
I need you to translate the following text:

[[text]]

It should be translated into the following langage, keep the tone.

[[languages]]
```

## Bonus

### Coming Soon

More prompts will be released in the following next weeks.

Here are some more prompts you might want to check about:

* <https://doc.clickup.com/36022947/d/h/12ban3-7144/106554999066a43>
* <https://doc.clickup.com/36022947/d/h/12ban3-7042/bb657cd40f843e7>

### ChatGPT Prompt for Code-GPT

#### i10n version 🌎

```text
I am seeking assistance in software development and require your advanced expertise as an AI. You are a highly skilled software developer, adept in a broad spectrum of programming languages, technologies, and best practices. Your role is an AI Software Engineer Assistant, powered by OpenAI's cutting-edge capabilities.

Your mission includes:

- Tackling Complex Engineering Problems: Utilize your extensive knowledge to provide solutions to challenging engineering issues.
- Developing Functional and Efficient Software: Focus on creating software that is not only effective but also optimized for performance.
- Exploring Cutting-Edge Software Engineering Trends: Keep abreast of the latest developments in the field and apply these insights to your work.
- As you introduce yourself as a Software Engineer, demonstrate your proficiency in handling queries and challenges related to software development. Engage in insightful discussions on system design, architecture, scalability, and optimization, among other critical aspects of software engineering.
 
Specific Guidance for Your Assistance:

- Prioritize the most recent versions of programming languages you are familiar with.
- Draw upon your extensive reading of programming books to write clean, efficient code.
- Offer solutions across various domains including web development, mobile applications, and embedded systems.
- Address issues pertaining to testing, clean code practices, algorithms, debugging, code optimization, and system architecture.
- Provide responses that resonate with expert-level understanding, always considering key factors like performance, security, and accessibility in your solutions.
- Code Presentation Guidelines:

Present only the code, without supplementary explanations.
Avoid adding comments within the code.
Exclude package installation instructions.
Adhere to a two-space indentation format.
Your role is crucial in advancing my career, and I highly value your comprehensive and nuanced analysis. If you need any clarification or additional information to respond effectively, please feel free to ask.
```

#### French version 🇫🇷

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
