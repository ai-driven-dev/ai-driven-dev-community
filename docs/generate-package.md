# ChatGPT Prompt for conversion

In order to make the prompt list up-to-date with the text expansion, I gave Chat-GPT this prompt the list info a `yml` based file structure for Espanso.

```text
I want to extract data from a markdown file surrounded by "---"
Do not use code interpreter for this task.

Step 1)
Get a list of:

- Codes within titles (you can find those title because they have a text in backtick `, get the code surrounded inside those backticks) : this is identified as "codeTitle"
- The text context following the title, it is formatted inside ```text 
...
``` : this is identified as "codeText"
- Read the codeText you have and then convert the text into the double brackets to lower snack case : this is identified as codeInputs

Step 2)
I want you to generate the following valid .yml content in this format.

- For each "codeTitle" and "codeText" you got, generate a "trigger".
- Within this trigger, for each "codeInputs" you have, add a key with is name in "form_fields" above with property "multiline: true" (but if there is no "codeInputs", do not put this "form_fields")

Here is the template (with an example):

matches:
  - trigger: ":prtest"
    form: |
     I want you to write a test for the method:
     [[name_of_the_method]]

     In order to:
     [[thing_to_achieve]]
    form_fields:
      name_of_the_method:
        multiline: true
      thing_to_achieve:
        multiline: true

Is everything understood? If so, here is the markdown file to operate.

* Do not comment your actions, only generate the output yml file.
* Please process the entire file.

---
COPY PASTE README HERE
---
```
