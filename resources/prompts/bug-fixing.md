# 🖥️ AI Driven Dev - "Bug fixing" Prompts (`:bug`)

In progress...

- [🐛 Bug fixing](#-bug-fixing)
  - [List potential issues `:bugListTechnicalIssues`](#list-potential-issues-buglisttechnicalissues)
  - [Find functional issue `:bugFindFunctionalIssue`](#find-functional-issue-bugfindfunctionalissue)
  - [Find technical issue `:bugFindTechnicalIssue`](#find-technical-issue-bugfindtechnicalissue)
  - [Find issues and fix `:bugFindIssuesAndFix`](#find-issues-and-fix-bugfindissuesandfix)
  - [Detect code inconsistencies `:bugCodeDetectInconsistencies`](#detect-code-inconsistencies-bugcodedetectinconsistencies)
- [🔫 Debug](#-debug)
  - [Add logging to debug error `:bugDebugCodeSteps`](#add-logging-to-debug-error-bugdebugcodesteps)
  - [Add logging with emojis `:bugAddLoggingEmojis`](#add-logging-with-emojis-bugaddloggingemojis)

## 🐛 Bug fixing

### List potential issues `:bugListTechnicalIssues`

```text
@workspace

I have this error in my code (surrounded by "---" delimiters):

---
[[Error message]]
---

Context (what I was trying to do): "[[Context]]".

My Analysis: 
[[Potential issues you target or things that you can assert is not the issue]]

Please list all potential solutions and steps to fix the code, sorted by relevance.

Analyze the following code to find the issue: 
#file
```

Follow-up prompt:

```text
Check all those hypothesis by proposing code change to fix the issue.

---
[[hypothesis]]
---

- put comment to describe what you are doing
- add logging to debug the issue if necessary

#file
```

### Find functional issue `:bugFindFunctionalIssue`

```text
@workspace

In my application, when I do: "[[Action]]"
I expect: "[[Expectation]]"
But I get that issue (surrounded by "---" delimiters):
---
[[Result including errors and your analysis if you do have]]
---

Please list potentials issues and steps to fix the code, sorted by relevance.

Note that the issue might be induced by another part of the code, so you might need to check the whole code.

#file

[[More code context if needed]]
```

### Find technical issue `:bugFindTechnicalIssue`

```text
I do have this issue on my project, can you help me figure it out?

When I: "[[do]]".
I do expect: "[[that]]".
But instead I get that issue: "[[error]]".

Notes: [[more notes if any]]

Please list potentials issues and steps to fix the code, sorted by relevance, in bullet points.

For each potential issue, propose some code to change for debugging or logging in order to help determine the root cause.

#file
```

### Find issues and fix `:bugFindIssuesAndFix`

**Description:**

- Find the issues in the doc
- Give AI instructions about how to fix those

**Prompt:**

```text
Fix the following issues in the code #selection:

[[Copy/Paste errors from logs]]

#editor
```

### Detect code inconsistencies `:bugCodeDetectInconsistencies`

```text
I need you to detect all inconsistencies.

Check for variable names, function names, etc.

Make sure that the code is consistent and it doing what it is supposed to do.

Do not point out correct code, only the issues.

For each issue, provide the best possible solution following code pattern.
```

## 🔫 Debug

### Add logging to debug error `:bugDebugCodeSteps`

```text
Add logging at each steps of the code to debug errors.
```

### Add logging with emojis `:bugAddLoggingEmojis`

```text
Add logging messages at each important steps of this code, including inner function.
Use appropriate emojis at the beginning of the logging message.
This will help use to debug errors.
```
