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

J'aimerais faire le parallèle entre "avant l'IA" où les développeurs n'avaient pas d'autocomplétion précises ni de génération de code etc, et maintenant, où l'IA nous aide énormément à coder plus vite et plus précisément.

Règles :

- Limite-toi uniquement au thème du module.
- Reformule les éléments déjà identifiés (dans AVANT IA et dans APRES IA) pour les rendre plus percutants.
- Rajoute également des éléments que tu penses pertinents pour AVANT IA et APRES IA (indique entre parenthèse "nouveau" pour ceux-ci).
- Utilise un copywriting simple et efficace pour rendre cet avant / après motivant, sans faire de métaphore, en te concentrant sur les bénéfices pour les développeurs.

Demande : Aide-moi à reformuler, trouver de nouveaux éléments et à les mettre en forme.

Voici les éléments déjà identifiés (entouré par des "---") :

Avant IA:
[[Liste des éléments avant IA]]

Après IA:
[[Liste des éléments après IA]]
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

## Coming Soon

More prompts will be released in the following next weeks.

Here are some more prompts you might want to check about:

- <https://doc.clickup.com/36022947/d/h/12ban3-7144/106554999066a43>
- <https://doc.clickup.com/36022947/d/h/12ban3-7042/bb657cd40f843e7>