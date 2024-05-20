# 🖥️ AI Driven Dev - "entre" Prompts

Some prompt we can use sometimes, tech related, or not :)

- [🖋️ Copywriting](#️-copywriting)
  - [LinkedIn profile optimization `:copyLinkedInProfileOptimization`](#linkedin-profile-optimization-copylinkedinprofileoptimization)
  - [Benefits of a method `:copySituationsAndBenefitsListing`](#benefits-of-a-method-copysituationsandbenefitslisting)
- [👔 Entrepreneurship](#-entrepreneurship)
  - [Self criticize 🇫🇷 `:entreCriticizeAnswer`](#self-criticize--entrecriticizeanswer)
- [🌄 Images](#-images)
  - [MidJourney realistic picture `:entreCreateMidJourneyRealisticPicture`](#midjourney-realistic-picture-entrecreatemidjourneyrealisticpicture)
- [💽 LLM](#-llm)
  - [Prompt evaluation `:llmPromptImprove`](#prompt-evaluation-llmpromptimprove)
  - [Answer evaluation with iteration `:llmAnswerEvaluate`](#answer-evaluation-with-iteration-llmanswerevaluate)

## 🖋️ Copywriting

### LinkedIn profile optimization `:copyLinkedInProfileOptimization`

```text
"Act like a Marketing manager expert in LinkedIn and give me tips for an engaging summary, effective use of keywords, and strategies for showcasing my accomplishments. Also, advise on increasing meaningful connections and engaging with industry-related content to boost my profile's reach."
```

### Benefits of a method `:copySituationsAndBenefitsListing`

```text
Dans ma formation Coder avec l'IA, j'ai créé un module "[[nom du module]]".

Le but de ce module est d'apprendre aux développeurs à "[[objectif du module]]".

J'aimerais faire le parallèle entre "avant l'IA" où les développeurs n'avaient pas d'autocomplétion précises ni de génération de code etc, et maintenant, "après ia", où l'IA nous aide énormément à coder plus vite et mieux.
Le but est de montrer que pour les développeurs, nous sommes bien mieux à utiliser l'IA au quotidien pour développer.

Sous forme de liste à puce, liste nos problèmes sans IA.
Sous forme de liste à puce, liste les bénéfices / avantages de l'IA.
```

## 👔 Entrepreneurship

### Self criticize 🇫🇷 `:entreCriticizeAnswer`

```text
Merci, peux-tu faire l'autocritique de ta réponse ?

1) Évalue ton propre travail. Dresse la liste de ses points forts et de ses points faibles.
2) Attribue-lui une note comprise entre 0 et 20. Justifie ta note en fonction des règles que tu devais respecter.
3) Fais-toi une liste de suggestions qui te permettront d'atteindre la note 20, toujours par rapport à ces règles. Numérote chaque proposition.
4) Réécris ton travail en suivant les recommandations du point 3).
5) Demande-moi si je veux répéter le processus. Nous le ferons jusqu'à ce que votre travail soit noté 20/20.
```

## 🌄 Images

### MidJourney realistic picture `:entreCreateMidJourneyRealisticPicture`

At the end of you image generated prompt.

```text
Use a high-resolution 16k camera with a 16:9 aspect ratio, a raw style, and a quality setting of 2 to capture this atmospheric scene. –ar 16:9 –v 6 –style raw.
```

## 💽 LLM

### Prompt evaluation `:llmPromptImprove`

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

### Answer evaluation with iteration `:llmAnswerEvaluate`

```text
Can you be self-critical of your answer?

1) Evaluate your own work. List its strengths and weaknesses.
2) Give it a mark between 0 and 20. Justify your score in terms of the rules you had to respect.
3) Make a list of suggestions that will enable you to achieve a score of 20, again in relation to these rules. Number each suggestion.
4) Rewrite your work following the recommendations in point 3).
5) Ask me if I'd like to repeat the process. We'll do this until your work is marked 20/20.

Thank you for you professionalism.
```
