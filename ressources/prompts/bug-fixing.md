# 🖥️ AI Driven Dev - "Bug fixing" Prompts (`:fix`)

- [🐛 Bug fixing](#-bug-fixing)
  - [List potential issues `:fixListPotentialIssues`](#list-potential-issues-fixlistpotentialissues)
  - [Find functional issue `:fixFindFunctionalIssue`](#find-functional-issue-fixfindfunctionalissue)
  - [Find issues and fix `:fixFindIssuesAndFix`](#find-issues-and-fix-fixfindissuesandfix)
  - [Detect code inconsistencies `:bugCodeDetectInconsistencies`](#detect-code-inconsistencies-bugcodedetectinconsistencies)
- [🔫 Debug](#-debug)
  - [Add logging to debug error `:fixAddErrorLogging`](#add-logging-to-debug-error-fixadderrorlogging)
  - [Add logging with emojis `:fixAddLoggingEmojis`](#add-logging-with-emojis-fixaddloggingemojis)

## 🐛 Bug fixing

### List potential issues `:fixListPotentialIssues`

```text
I have this error in my code (surrounded by "---" delimiters):

---
[[Error message]]
---

Context (what I was trying to do): "[[Context]]"

Potential issues: 
[[Potential issues]]

Please list all potential solutions and steps to fix the code, sorted by relevance.

#editor
```

### Find functional issue `:fixFindFunctionalIssue`

```text
In my application, when I do: "[[Action]]"
I expect: "[[Expectation]]"
But I get that issue (surrounded by "---" delimiters):
---
[[Result including errors and your analysis if you do have]]
---

Please list potentials issues and steps to fix the code, sorted by relevance.

#editor

[[More code context if needed]]
```

### Find issues and fix `:fixFindIssuesAndFix`

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
I need you to detect inconsistencies in the code.

Check for variable names, function names, and other inconsistencies in the code.
```

## 🔫 Debug

### Add logging to debug error `:fixAddErrorLogging`

```text
Add logging at each steps of the code to debug errors.
```

### Add logging with emojis `:fixAddLoggingEmojis`

```text
Add beautiful logging steps with emojis at each steps to debug errors.
```
