# Qualité Code Source

Ce repository contient les cours, les exercices et les sources du module Qualité Code Source du Bachelor CSI.

Le support de cours est disponible dans le dossier `./doc/build/pdf` au format PDF.

## Programme

Les cours couvrent normalement le programme suivant :

1. Tests unitaires

    * Intégration des tests unitaires dans un projet
    * Assertions simples, interprétation des messages de retour
    * Gestion des exceptions
    * Tests utilisant des jeux de données

2. Bonnes pratiques

    * Formatage du code source (indentation, CamelCase)
    * Nomenclature du code
    * Génération de la documentation
    * Organisation du code d’un projet

3. Versionning (GIT)

    * Comprendre le versioning (dépôt, instantanés, fichiers à ignorer)
    * Commandes de base de GIT (annuler des actions, manipuler l’historique, les branches)
    * Gestion des dépôts de code source

4. Plateforme d’intégration et de livraisons continues

    * Mise en place d’un serveur d’intégration continue
    * Gestion de des tâches
    * Automatisation des tests unitaires et d’intégration
    * Génération et interprétation de rapports
    * Déploiement de la version validée

## Compétences

Ils permettent normalement d'acquérir les compétences suivantes :

* Maîtriser la création et l’exécution de tests unitaires avec un framework de tests unitaires
* Mettre en place une démarche d’amélioration de la qualité du code
* Utiliser une plateforme d’intégration et de livraison continue

## Installation

Pytest means Python, it's a framework to test Python using Python.
First create a virtual environment.

```bash
python3 -m venv venv
```

Then activate it.

```bash
source venv/bin/activate
```

Then install pytest and other dependencies of that project.

```bash
pip install -r requirements.txt
```

Running the tests.

```bash
pytest
```

## Embedded development testing

A piece of code can test another piece of code from the same project.
But testing can be performed through a more abstract protocol, radio, serial, etc
The goal of those tests is to discover a very cheap microcontroller, the ATMega328P,
and its development environment, the Arduino one.
It highlights the differences between the Arduino framework and its simple MCU
and our modern desktop environment looking at various aspects such as arithmetic precision
and memory management.

### Arduino

Development will be made under VSCode using Arduino plugin to access copilot
to easily develop the embedded software and Arduino IDE to have the full
options of the Arduino environment. See
the [IDE installation procedure on the Arduino website](https://support.arduino.cc/hc/en-us/articles/360019833020-Download-and-install-Arduino-IDE).

Open the `arduino/arduino.ino` file with Arduino IDE and upload it to the board.
At the point the test `test_arduino.py` should pass.

## Build the documentation

This README is just a help, the complete documentation is available in the `doc` folder as a LaTex source.
To build it to a PDF it required `LuaLaTex`.
Dependencies can be installed on Ubuntu with the following command :

```bash
sudo apt install texlive-luatex
```

Then build the PDF documentation :

```bash
lualatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=/home/chrichri/Documents/Campus-St-Michel-IT/qualite-code-source/doc/Qualité-Code-Source-L3-CSI.tex
```
