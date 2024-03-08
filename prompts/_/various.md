# Various side prompts (`:various`)

Some prompt we can use sometimes, tech related, or not :)

- [Copywriting](#copywriting)
  - [Benefits of a method `:variousSituationsAndBenefitsListing`](#benefits-of-a-method-varioussituationsandbenefitslisting)
- [Entrepreneurship](#entrepreneurship)
  - [Self criticize 🇫🇷 `:variousCriticizeAnswer`](#self-criticize--variouscriticizeanswer)
- [Images](#images)
  - [PDF optimization with ghostscript `:variousOptimizePDF`](#pdf-optimization-with-ghostscript-variousoptimizepdf)
  - [MidJourney realistic picture `:variousCreateMidJourneyRealisticPicture`](#midjourney-realistic-picture-variouscreatemidjourneyrealisticpicture)
- [Coming Soon](#coming-soon)

## Copywriting

### Benefits of a method `:variousSituationsAndBenefitsListing`

```text
Dans ma formation Coder avec l'IA, j'ai créé un module "[[nom du module]]".

Le but de ce module est d'apprendre aux développeurs à "[[objectif du module]]".

J'aimerais faire le parallèle entre "avant l'IA" où les développeurs n'avaient pas d'autocomplétion précises ni de génération de code etc, et maintenant, "après ia", où l'IA nous aide énormément à coder plus vite et mieux.
Le but est de montrer que pour les développeurs, nous sommes bien mieux à utiliser l'IA au quotidien pour développer.

Voici les éléments déjà identifiés:

Avant IA:
[[Liste des éléments avant IA]]

Après IA:
[[Liste des éléments après IA]]

Merci de reformuler ces éléments pour les rendre plus percutants et de rajouter des éléments qui n'existent pas déjà.
```

## Entrepreneurship

### Self criticize 🇫🇷 `:variousCriticizeAnswer`

```text
Merci, peux-tu faire l'autocritique de ta réponse ?

1) Évalue ton propre travail. Dresse la liste de ses points forts et de ses points faibles.
2) Attribue-lui une note comprise entre 0 et 20. Justifie ta note en fonction des règles que tu devais respecter.
3) Fais-toi une liste de suggestions qui te permettront d'atteindre la note 20, toujours par rapport à ces règles. Numérote chaque proposition.
4) Réécris ton travail en suivant les recommandations du point 3).
5) Demande-moi si je veux répéter le processus. Nous le ferons jusqu'à ce que votre travail soit noté 20/20.
```

## Images

### PDF optimization with ghostscript `:variousOptimizePDF`

```text
# replace output.pdf and input.pdf with the correct file names
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile="[[output.pdf]]" "[[input.pdf]]"
```

### MidJourney realistic picture `:variousCreateMidJourneyRealisticPicture`

```text

At the end of you image generated prompt.

```text
Use a high-resolution 16k camera with a 16:9 aspect ratio, a raw style, and a quality setting of 2 to capture this atmospheric scene. –ar 16:9 –v 6 –style raw.
```