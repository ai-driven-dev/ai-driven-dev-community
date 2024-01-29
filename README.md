# A tailored list of developer prompts 📋

Every good software engineer needs good prompts!

This repo is filled of **amazing prompt for developers**, mapped with my favorite text expander, [Espanso](https://espanso.org).

👉 *You are not forced to use a text expander tool but this is highly recommended!*

♻️ This is a WIP one, do not hesitate to contribute kicking errors and improving prompts!

🚀 Contribution are welcomed, [check the guide](./contributing.md)

## A french community

Join a group of french software engineers that are using AI.

[![Discord](https://img.shields.io/badge/Discord-7289DA?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/mcNwacZCvC)

## Do not use ChatGPT standalone

I prompted two AI to act like the best software engineers.

* [AI programming expert](https://chat.openai.com/g/g-S1wfMarvA-ai-programming-expert) - [(source)](./agents/mentor-developer.md)
* [AI project manager](https://chat.openai.com/g/g-KbmBiVnyq-agile-gpt) - [(source)](./agents/agile.md)

> It is working much better that the original version and works even better with the prompts under.

## Table of Contents

Quick jump into the section you want.

* [A tailored list of developer prompts 📋](#a-tailored-list-of-developer-prompts-)
  * [A french community](#a-french-community)
  * [Do not use ChatGPT standalone](#do-not-use-chatgpt-standalone)
  * [Table of Contents](#table-of-contents)
  * [Text expansion](#text-expansion)
    * [Installation](#installation)
    * [Updates](#updates)
    * [Usage](#usage)
      * [Quick demo](#quick-demo)
  * [Contribution](#contribution)
  * [Prompts list](#prompts-list)
    * [Global prompts](#global-prompts)
      * [Prompt evaluation `:gprompteval`](#prompt-evaluation-gprompteval)
      * [Answer evaluation with iteration `:ganswereval`](#answer-evaluation-with-iteration-ganswereval)
    * [Global dev prompts](#global-dev-prompts)
      * [Who am I? `:prtsme`](#who-am-i-prtsme)
      * [My project configuration `:prproject`](#my-project-configuration-prproject)
      * [Help to summarize a feature `:prsumfeat`](#help-to-summarize-a-feature-prsumfeat)
      * [Ask for a feature `:prfeat`](#ask-for-a-feature-prfeat)
      * [Code the feature `:prcode`](#code-the-feature-prcode)
      * [Recode the feature `:prrecode`](#recode-the-feature-prrecode)
      * [Debug issue `:prdebug`](#debug-issue-prdebug)
      * [Fix my error `:prfix`](#fix-my-error-prfix)
      * [Test my feature `:prpretest`](#test-my-feature-prpretest)
      * [Test my feature `:prunittests`](#test-my-feature-prunittests)
      * [Search in the documentation `:prsearchdoc`](#search-in-the-documentation-prsearchdoc)
    * [Code related prompts](#code-related-prompts)
      * [Convert this type into `:cdtsconv`](#convert-this-type-into-cdtsconv)
      * [Convert this type into `:cdopt`](#convert-this-type-into-cdopt)
      * [Log every steps of this code `:cdstepslog`](#log-every-steps-of-this-code-cdstepslog)
      * [Convert this type into `:cdexplainlog`](#convert-this-type-into-cdexplainlog)
      * [Convert this type into `:cdtrans`](#convert-this-type-into-cdtrans)
  * [Bonus](#bonus)
    * [Coming Soon](#coming-soon)

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

![Text expander with AI](docs/images/espanso-code-gpt.gif)

## Contribution

* Community prompt list, so create a PR with your needs ❤️
* Report prompting issues / improvements at [hello@alexsoyes.com](mailto:hello@alexsoyes.com)

## Prompts list

I tried to respect the following convention.

* `:{group}` : Either code related or prompt related.
* `{optionalLanguageShort}` : Like `ts` for TypeScript related things.
* `{type}` : What we are talking about.
* `{action}` : A verb, a wish or an actions suite.

### Global prompts

#### Prompt evaluation `:gprompteval`

In order to improve and reduce prompt's size and improve efficiency.

```text
This is the prompt I made (surrounded with """) for an a generative artificial intelligence like ChatGPT.

I need you to help me to make it better in order for the AI to better understand what I am asking about.

"""[[Prompt you have made]]"""

Please reformulate it to be clearer for the AI, do not hesitate to change complexe words with easy ones.
Merge duplication and remove not necessary instructions.
Be clear and specific.
Avoid ambiguity.
Use good english, fix text mistakes.

Please also acknowledge that AI can access URL, documents and generate images.
```

#### Answer evaluation with iteration `:ganswereval`

```text
Can you be self-critical of your answer?

1) Evaluate your own work. List its strengths and weaknesses.
2) Give it a mark between 0 and 20. Justify your score in terms of the rules you had to respect.
3) Make a list of suggestions that will enable you to achieve a score of 20, again in relation to these rules. Number each suggestion.
4) Rewrite your work following the recommendations in point 3).
5) Ask me if I'd like to repeat the process. We'll do this until your work is marked 20/20.

Thank you for you professionalism.
```

### Global dev prompts

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

#### Acknowledge new feature `:prackfeat`

```text
Here is the feature that I want to code as a developer, can you acknowledge it?

Then, reformulate in bullet point grouped by section to show me that you understood what to do:

[[feature to build]]
```

#### Acknowledge new feature `:prdrivefeat`

```text
Please help me step by step to write the code for "[[step to do]]" with "[[tech]]".
```

#### Help to summarize a feature `:prsumfeat`

```text
I need your help about a feature I am trying to make.

Can you summarize the following specifications?

I need to clear my mind about it, I want to have some very clear statements about what the feature is about and its goal, the problem it is trying to solve.

Reduce irrelevant information from the specifications I gave you and reply as clear as possible to make it understandable by every one.

Use a bullet list grouped by sections (if necessary), you do not need that much details, just give the required information.

"[[feature to summarize]]"
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

#### Search in the documentation `:prsearchdoc`

```text
I need you to read the following documentation.

[[documentation url]]

Based on that documentation, can you:

[[want you want to do]]

Please provide the best step by step way to it. For each step, detail your explanation with the proper code.
```

### Code related prompts

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

#### Log every steps of this code `:cdstepslog`

```text
Add logging on every steps in order to identify bugs.
```

#### Convert this type into `:cdexplainlog`

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
