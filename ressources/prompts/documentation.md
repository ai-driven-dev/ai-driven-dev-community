
# 🖥️ AI Driven Dev - "Documentation" Prompts (`:doc`)

- [� Documentation](#-documentation)
  - [Search in the documentation from URL `:instructDocSearchURL`](#search-in-the-documentation-from-url-instructdocsearchurl)
- [💬 Comments](#-comments)
  - [Comments must match code actions `:docCommentCheckCodeIsMatching`](#comments-must-match-code-actions-doccommentcheckcodeismatching)
  - [Comment selection to make the hard part easier `:docCommentCommentHardParts`](#comment-selection-to-make-the-hard-part-easier-doccommentcommenthardparts)
  - [Comment full file `:docCommentCommentFullFile`](#comment-full-file-doccommentcommentfullfile)

## 📄 Documentation

### Search in the documentation from URL `:instructDocSearchURL`

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
Check that following function name (and comments if any) are matching code actions.

Do not explain why the code is wrong, just change accordingly.

- If not, update the comments to match the code with a concise and simple one.
    - Go to line on new sentence.
    - Check for comment params to match function's params (type it "unknown" if not sure).
- If so, just reply "OK ✅" without saying anything else.
```

### Comment selection to make the hard part easier `:docCommentCommentHardParts`

```text
Comment the code to make the hard parts easier to understand.
```

### Comment full file `:docCommentCommentFullFile`

```text
Add code documentation for this code.

- Add top file documentation to describe what the file is doing
- Add or update documentation for functions
- Add documentation within function if necessary
- Move comments to the right place if necessary
```
