# 🖥️ AI Driven Dev - "Bug fixing" Prompts (`:bug`)

This document provides you a list of prompt to detect and fix bugs in code.

- [🐛 Bug fixing](#-bug-fixing)
  - [Detect technical issues `:bugDetectTechnical`](#detect-technical-issues-bugdetecttechnical)
  - [Detect functional issue `:bugDetectFunctional`](#detect-functional-issue-bugdetectfunctional)
  - [Fix code from error log `:bugFixCodeFromErrorLog`](#fix-code-from-error-log-bugfixcodefromerrorlog)
  - [Detect code inconsistencies `:bugCodeDetectInconsistencies`](#detect-code-inconsistencies-bugcodedetectinconsistencies)
- [🔫 Debug](#-debug)
  - [Add logging to debug error `:bugDebugCodeSteps`](#add-logging-to-debug-error-bugdebugcodesteps)
  - [Add logging with emojis `:bugAddLoggingEmojis`](#add-logging-with-emojis-bugaddloggingemojis)

## 🐛 Bug fixing

### Detect technical issues `:bugDetectTechnical`

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

### Detect functional issue `:bugDetectFunctional`

```text
@workspace

Given: "[[State]]".
When: "[[Action]]".
Then: "[[Expected result]]".

Instead, I get the following:
---
[[Result, behavior, errors... or your analysis]]
---

Analyze the given code, then list potentials issues and steps to fix the code, sorted by relevance.

Note that the issue might be induced by another part of the code, so you might need to check the whole #codebase.

#file
```

### Fix code from error log `:bugFixCodeFromErrorLog`

**Description:**

- Find the issues in the doc.
- Give AI instructions about how to fix those.

**Prompt:**

```text
@workspace

Fix the following issues in the code using the error logs.

---
[[Copy/Paste errors from logs]]
---
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
