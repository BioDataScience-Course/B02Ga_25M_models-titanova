# Modélisation de données librement choisies

## Avant-propos

Ce projet s'étale sur plusieurs modules du cours de Science des Données Biologiques 2. Il nécessite d'avoir assimilé l'ensemble des notions des modules 1 à 4. Il correspond au dépôt GitHub <https://github.com/BioDataScience-Course/B02Ga_models>.

## Objectifs

Ce projet est libre et sera réalisé par groupe de quatre étudiants. Répartissez-vous le travail. Il permettra de démontrer que vous avez acquis les compétences suivantes :

-   trouver des données qui se prêtent à la modélisation linéaire

-   décrire les données (graphiques et tableaux)

-   réaliser différents modèles linéaires pertinents (régression linéaire simple, régression linéaire multiple, régression linéaire polynomiale, modèle linéaire, modèle linéaire généralisé, modèle linéaire mixte...)

-   analyser les modèles réalisés (analyse du résumé, analyse des résidus) et les paramétrer

## Consignes

Ce projet sera complété en cinq étapes qu'il faut finaliser dans l'ordre.

### Étape 1 (module 2)

Vous allez rechercher des données sur Internet qui se prêtent au type d'analyse que nous allons faire. Cette étape est cruciale pour le bon déroulement de la suite. Vos données doivent être sous la forme d'un tableau de données.

-   avec au **minimum 50 lignes**
-   avec au moins cinq variables quantitatives continues
-   avec au moins deux variables qualitatives
    -   au minimum une variable à deux niveaux
    -   au minimum une variable à plusieurs niveaux

Vous devez être particulièrement vigilant sur la qualité des données et des métadonnées.

-   Avez-vous assez d'information pour comprendre l'objectif de l'acquisition de ces données ?
-   Avez-vous assez d'information pour comprendre chaque colonne du tableau ?
-   Assurez-vous d'avoir au moins 30 lignes sans valeur manquantes
-   Assurez-vous pour les variables facteurs que le nombre d'occurrences par niveau de la variable est relativement homogène.

Voici plusieurs sites que vous pouvez utiliser pour rechercher vos données :

-   [Zenodo](https://zenodo.org/)

-   [Dryad](https://datadryad.org/)

-   [Free and open access to biodiversity data](https://www.gbif.org/)

-   [The Knowledge Network for Biocomplexity](https://knb.ecoinformatics.org/data)

-   [EDI Data Portal](https://portal.edirepository.org/nis/home.jsp)

Vous suivrez les instructions du fichier `data/README.md` pour récupérer vos données depuis une URL de téléchargement directe avec mise en cache dans `data/cache`.

Effectuez une première description grossière des données pour vérifier, notamment, s'il n'y a pas trop de valeurs manquantes et consultez un enseignant pour qu'il valide votre choix avant de passer à l'étape suivante. Les différentes étapes sont à réaliser dans le script R `import.R`.

### Étape 2 (module 2)

-   Rédigez une courte introduction et un but à votre carnet de notes nommé `models_notebook.qmd`.
-   Complétez la section relative aux régressions linéaires simples, polynomiales et multiples.

### Étape 3 (module 3)

-   Complétez la section relative aux modèles linéaires.

### Étape 4 (module 4)

-   Complétez la section relative aux modèles linéaires généralisés et/ou mixtes.

### Étape 5 (modules 4 et 5)

-   Sélectionnez vos deux modèles les plus pertinents et rédigez un rapport complet dans `models_report.qmd`.

Utilisez un style et une présentation de l'information adéquats par rapport à ce type de document (donc pas un simple copier-coller du bloc-notes). Ajoutez des légendes aux figures et aux tables, numérotez-les et citez-les dans le texte à l'aide de la syntaxe adéquate des documents Quarto (voir <https://quarto.org/docs/authoring/cross-references.html>). Citez également vos références dans le texte (voir <https://quarto.org/docs/authoring/footnotes-and-citations.html>).

**Vous devriez vous inspirer de l'exemple de rapport dans le projet `B02Ia_achatina`, voir <https://github.com/BioDataScience-Course/B02Ia_achatina/tree/main>.**

## Important

Faites des commit - pull - push réguliers et gérez les conflits éventuels immédiatement.

Effectuez un 'Rendu' des documents finaux en HTML et assurez-vous que ce rendu se fait sans erreurs à la fin de votre travail (c'est très important car c'est en effet ce document final que l'on souhaite obtenir en éditant un fichier Quarto) !

À la fin, vérifiez que le dernier commit soit bien pris en compte dans votre dépôt sur GitHub. Vos enseignants ne voient que la version GitHub et c'est cette dernière qui sera corrigée et évaluée. Il est donc crucial que vos dépôts locaux soient bien synchronisés avec GitHub à la fin de votre travail.
