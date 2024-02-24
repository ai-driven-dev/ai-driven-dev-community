# Various side prompts (`:various`)

Some prompt we can use sometimes, tech related, or not :)

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

J'aimerais faire le parallèle entre "avant l'IA" où les développeurs n'avaient pas d'autocomplétion précises ni de génération de code et maintenant, où l'IA nous aide énormément à coder plus vite et plus précisément.

Règles :

- Limite-toi uniquement au thème du module.
- Repropose moi des éléments déjà listé en les améliorant
- Trouve de nouveaux éléments

1. Peux-tu lister les situations d'avant, où les développeurs devaient coder sans IA (par ordre d'importance) ?

Voici une liste des éléments que j'ai déjà identifiés (délimité par des "---"):

---
[[Liste des situations]]
---

2. Peux-tu lister les bénéfices que les développeurs ont maintenant grâce à l'IA (par ordre d'importance) ?

Voici une liste des éléments que j'ai déjà identifiés (délimité par des "---"):

---
[[Liste des bénéfices]]
---
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