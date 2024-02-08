# AI Driven Dev - Prompts (Instruct)

Those prompt are made to make your discussions with AI more easy to do.

- [AI Driven Dev - Prompts (Instruct)](#ai-driven-dev---prompts-instruct)
  - [Who am I? `:prtsme`](#who-am-i-prtsme)
  - [My project configuration `:prproject`](#my-project-configuration-prproject)
  - [Acknowledge new feature `:prackfeat`](#acknowledge-new-feature-prackfeat)
  - [Acknowledge new feature `:prdrivefeat`](#acknowledge-new-feature-prdrivefeat)
  - [Help to summarize a feature `:prsumfeat`](#help-to-summarize-a-feature-prsumfeat)
  - [Ask for a feature `:prfeat`](#ask-for-a-feature-prfeat)
  - [Code the feature `:prcode`](#code-the-feature-prcode)
  - [Recode the feature `:prrecode`](#recode-the-feature-prrecode)
  - [Debug issue `:prdebug`](#debug-issue-prdebug)
  - [Fix my error `:prfix`](#fix-my-error-prfix)
  - [Test my feature `:prpretest`](#test-my-feature-prpretest)
  - [Test my feature `:prunittests`](#test-my-feature-prunittests)
  - [Search in the documentation `:prsearchdoc`](#search-in-the-documentation-prsearchdoc)

## Who am I? `:prtsme`

```text
I am a senior software engineer on JavaScript but I prefer to use TypeScript.

The libraries I am using are: React, NextJS, Zod, React-Hook-Form, Tailwind.

I need help to write 100% working and clean code.
```

## My project configuration `:prproject`

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

## Acknowledge new feature `:prackfeat`

```text
I need to code this feature, as a developer.

1. Please acknowledge it
2. Reformulate in bullet point grouped by section to show me that you understood what to do
3. Draw me the development steps to code, grouped by sections

Here is the feature:

[[feature to build]]
```

## Acknowledge new feature `:prdrivefeat`

```text
Please help me step by step to write the code for "[[step to do]]".
```

## Help to summarize a feature `:prsumfeat`

```text
I need your help about a feature I am trying to make.

Can you summarize the following specifications?

I need to clear my mind about it, I want to have some very clear statements about what the feature is about and its goal, the problem it is trying to solve.

Reduce irrelevant information from the specifications I gave you and reply as clear as possible to make it understandable by every one.

Use a bullet list grouped by sections (if necessary), you do not need that much details, just give the required information.

"[[feature to summarize]]"
```

## Ask for a feature `:prfeat`

```text
I am building a new feature for my project.

Goal of the feature: [[context]]
Incoming parameters are: [[params]]
Expected result is: [[result]]

Please give me every detailed steps to do in order to achieve my goal.
```

↺ Discuss with the AI until it understood **what you really mean**.

## Code the feature `:prcode`

```text
You did understand the feature I want to code.
Now, I need your to write the code following my projects requirements (both technical and from a user view).

You should:

* Spit files (only if needed, respecting clean code principles and other good practices)
* Not put into comment
* Function / Variables names must be short, in english and really matching the expected outcome
```

## Recode the feature `:prrecode`

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

## Debug issue `:prdebug`

```text
For this bugfix I am responsible of, here his the context of what I want to do:

[[The context of what I wanted]]

This is producing this strange behavior, the bug is causing:

[[What the bug is doing]]

Can you give me a list 3 clues regarding my issue in order to find the root cause and then, fix it?

Please sort them with the more probable first.
```

## Fix my error `:prfix`

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

## Test my feature `:prpretest`

```text
I want you to write a test for the this feature:

[[feature you talked about previously]]

Give me a list of tests that need to be done in order to secure the feature delivery in production.

It must be 100% bullet proof since I cannot afford to have bug in the feature, this is vital to me.

Every test cases must be covered.
```

## Test my feature `:prunittests`

```text
For the following list of test cases:

[[your test cases and the ones gave by AI]]

Can you generate the corresponding code to test the following file:

"[[copy paste your component here]]"

Remember, you test must be 100% working.
```

## Search in the documentation `:prsearchdoc`

```text
I need you to read the following documentation.

[[documentation url]]

Based on that documentation, can you:

[[want you want to do]]

Please provide the best step by step way to it. For each step, detail your explanation with the proper code.
```