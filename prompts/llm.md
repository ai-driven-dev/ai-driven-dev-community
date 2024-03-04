# AI Driven Dev - Prompts (`:llm`)

- [Prompt evaluation `:llmImprovePrompt`](#prompt-evaluation-llmimproveprompt)
- [Answer evaluation with iteration `:llmEvalAnswer`](#answer-evaluation-with-iteration-llmevalanswer)

## Prompt evaluation `:llmImprovePrompt`

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

## Answer evaluation with iteration `:llmEvalAnswer`

```text
Can you be self-critical of your answer?

1) Evaluate your own work. List its strengths and weaknesses.
2) Give it a mark between 0 and 20. Justify your score in terms of the rules you had to respect.
3) Make a list of suggestions that will enable you to achieve a score of 20, again in relation to these rules. Number each suggestion.
4) Rewrite your work following the recommendations in point 3).
5) Ask me if I'd like to repeat the process. We'll do this until your work is marked 20/20.

Thank you for you professionalism.
```