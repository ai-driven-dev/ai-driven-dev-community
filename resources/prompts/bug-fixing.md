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

### Find technical issue `:fixFindTechnicalIssue`

```text
@workspace

When I: "click on the ButtonIcon passing a buttonInfo in the component, it is providing a tooltip" I do expect: "the button to be still clickable" But instead I get that issue: "i click, the state changed but the dropdown is not shown"

Maybe it cancel my focus which trigger the state to be set to false.
Notes: Every components are using Radix internally

Please list potentials issues and steps to fix the code, sorted by relevance, in bullet points.

For each potential issue, propose some code to change for debugging or logging in order to help determine the root cause.

#file
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
I need you to detect all inconsistencies.

Check for variable names, function names, etc.

Make sure that the code is consistent and it doing what it is supposed to do.

Do not point out correct code, only the issues.

For each issue, provide the best possible solution following code pattern.
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
