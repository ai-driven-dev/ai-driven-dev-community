
# 🖥️ AI Driven Dev - "Documentation" Prompts (`:doc`)

- [📄 Documentation](#-documentation)
  - [Search in the documentation from URL `:docSearchURL`](#search-in-the-documentation-from-url-docsearchurl)
- [💬 Comments](#-comments)
  - [Comments must match code actions `:docCommentCheckCodeIsMatching`](#comments-must-match-code-actions-doccommentcheckcodeismatching)
  - [Comment selection to make the hard part easier `:docCommentHardParts`](#comment-selection-to-make-the-hard-part-easier-doccommenthardparts)
  - [Comment full file `:docCommentFullFile`](#comment-full-file-doccommentfullfile)

## 📄 Documentation

### Search in the documentation from URL `:docSearchURL`

```text
I need you to read the following documentation.

"[[documentation url]]"

Based on that documentation, can you:

"[[want you want to do]]"

Please provide the best step by step way to it.

For each step, detail your explanation with the proper code.
```

## 💬 Comments

### Comments must match code actions `:docCommentCheckCodeIsMatching`

```text
Check that comments are matching code actions.

- If so, just reply "OK ✅" without saying anything else.
- If not, update the comments to match the code with a concise and simple one describing what the inner code is doing.

Rules:
  - Go to line on new sentence.
  - Check for comment params to match function's params.
  - Check if "TODO" are still relevant, if not, remove them. You must be very sure that they are not relevant to remove them.
```

### Comment selection to make the hard part easier `:docCommentHardParts`

```text
Comment the code to make the hard parts easier to understand.
```

### Comment full file `:docCommentFullFile`

```text
Add code documentation for this code.

- Add top file documentation to describe what the file is doing
- Add or update documentation for functions
- Add documentation within function if necessary
- Move comments to the right place if necessary
```
