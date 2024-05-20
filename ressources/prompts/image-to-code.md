# 🖥️ AI Driven Dev - "Image to code" Prompts (`:img`)

- [🏞️ Image](#️-image)
  - [Extract details from image `:imgDetail`](#extract-details-from-image-imgdetail)
  - [Identify image section actions `:imgIdentifyActions`](#identify-image-section-actions-imgidentifyactions)
  - [Match existing code from knowledge base `:imgCheckMatchingCode`](#match-existing-code-from-knowledge-base-imgcheckmatchingcode)
  - [Define methods to use `:imgDefineMethods`](#define-methods-to-use-imgdefinemethods)
  - [Match existing UI components in image `:imgCheckExistingUIComponents`](#match-existing-ui-components-in-image-imgcheckexistinguicomponents)
  - [Generate code for image section `:imgSectionGenerateCode`](#generate-code-for-image-section-imgsectiongeneratecode)
  - [Implement image section design `:imgSectionImplementDesign`](#implement-image-section-design-imgsectionimplementdesign)

## 🏞️ Image

### Extract details from image `:imgDetail`

> ⚠️ For best result you MUST re-upload the image in question before using this prompt.

```text
Here is an image of my "[[the image you describe]]" for a feature I have to code.

Identify main sections.

For each section, give a detailed breakdown of the children elements.
```

### Identify image section actions `:imgIdentifyActions`

From the image sections identified, group them.

```text
Identify image section actions, I need you to focus only on this image section I have to code (surrounded by "---" delimiters):

---
[[image section with title and description]]
---

Every time I refer to the image, we will focus on this section.

Determine every actions in a bullet list:

1. Identify: simple text, changing state and actions that must be handled by functions.
2. Describe those with a few word.

Note for you:
- If you are not sure about what you identified, ask me the relevant questions.
- For actions and states, we will get the info from the existing codebase afterward.
```

### Match existing code from knowledge base `:imgCheckMatchingCode`

> ⚠️ For best result you MUST re-upload `documentation.md` before using this prompt.

Once you specified the wanted outcome:

```text
Match existing code (variables and functions) from knowledge base in "documentation.md" file.

Here is the image section "[[section's name]]" I have to code (surrounded by "---" delimiters):
---
[[Section's description with your outcomes]]
---

For each elements, provide "[[number (default should be 2)]]" existing functions or variables (with their paths) that can fill the needs, sorted by relevance.
```

### Define methods to use `:imgDefineMethods`

```text
In order to code the feature, I assert the following methods to use, defined here (surrounded by "---" delimiters):
---
[[Variables and functions to use]]
---

Do nothing, just reply "ok" if you understood.
```

### Match existing UI components in image `:imgCheckExistingUIComponents`

```text
Match existing UI components in image section:

1. Check the "[[documentation.md]]" file in the knowledge base.
2. Locate global UI components directory from "[[documentation.md]]" in the knowledge base (containing Button, Table etc), and give the path.
3. Identify needed elements, what kind of components are they? (Title, button, paragraph, etc)
4. Same basic elements (like paragraph, headings, links) might not required a component but rather a simple HTML tag, list them.
5. Based on the elements that need components, check if there is a match of potential use with the existing components from global UI components dir.
```

### Generate code for image section `:imgSectionGenerateCode`

```text
Generate the code for this component:

1. Based on project structure in "[[documentation.md]]", propose a new file path.
2. List existing full paths for functions, variables and UI components defined earlier to use.
3. Create a single component (unless it is necessary to create more) with the following rules:
- No HTML classes
- No comments
- Use only libraries listed in our project dependencies.
- Fill every function with the needed logic defined earlier.
- If you put links in the component, check that path is correct from project structure.
[[More rules specific to your project]]
```

### Implement image section design `:imgSectionImplementDesign`

```text
Implement the design from the image section "[[section's name]]" using "[[Your stack, eg: Tailwind CSS, Only CSS, Material UI]]".

1. Extract positions and sizes for each UI elements in the image, look for padding, margin, alignment, font size, etc.
2. Update the code implementation with the design from the image following the rules below:
- Use container, row, column, flexbox, grid, etc if needed.
- Use only libraries listed in our project dependencies.
- No explanation needed, only code.

[[Your code if not generated from above]]
```
