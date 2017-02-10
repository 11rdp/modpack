<p align="center">
    <img src="http://i.imgur.com/3m40Uzd.png" width="480">
</p>

<p align="center">
    <a href="https://github.com/11rdp/modpack/releases/latest">
        <img src="https://img.shields.io/badge/Version-3.0.0-blue.svg?style=flat-square" alt="11RDP Version">
    </a>
    <a href="https://github.com/11rdp/modpack/issues">
        <img src="https://img.shields.io/github/issues-raw/11rdp/modpack.svg?style=flat-square&label=Issues" alt="11RDP Issues">
    </a>
    <a href="https://www.bistudio.com/community/licenses/arma-public-license">
        <img src="https://img.shields.io/badge/License-APL-red.svg?style=flat-square" alt="11RDP License">
    </a>
    <a href="https://travis-ci.org/11rdp/modpack">
        <img src="https://img.shields.io/travis/11rdp/modpack.svg?style=flat-square&label=Build" alt="11RDP Build Status">
    </a>
</p>

<p align="center">
    <sup><strong>Requiert les dernières versions de <a href="https://github.com/CBATeam/CBA_A3/releases">CBA A3</a> et <a href="https://github.com/acemod/ACE3/releases">ACE3</a>.<br/></strong></sup>
</p>

### Guides & instructions
Pour installer nos modules, téléchargez [la dernière version](https://github.com/11rdp/modpack/releases)
et copiez le contenu de l'archive dans le répertoire d'installation d'Arma 3 :
```
C:\Jeux\Steam\steamapps\commons\Arma 3\@11rdp
```

#### Contribuer
Vous pouvez aider au développement en reportant les bugs que vous pourriez rencontrer, ou en proposant vos idées pour de futures fonctionnalités.
- [Reporter un bug](https://github.com/11rdp/modpack/issues/new)
- [Proposer une nouvelle fonctionnalité](https://github.com/11rdp/modpack/issues/1)

N'hésitez pas à installer la version de développement du pack et tester les nouvelles fonctionnalités afin de faire remonter un maximum de bugs.

Si vous voulez aller encore plus loin, rien ne vous empêche de participer activement au développement : faites un simple fork du dépot et envoyez vos demandes de pull dès que vous jugez qu'elles sont prêtes à être intégrées. N'oubliez pas de vous créditer dans le fichier
[`AUTHORS.txt`](https://github.com/11rdp/modpack/blob/master/AUTHORS.txt).

Reportez vous à la section suivante pour mettre en place votre environnement de travail.

#### Compiler et tester une version de développement
Avant toute chose, vous devez avoir installé la dernière version en date de [CBA](https://github.com/CBATeam/CBA_A3/releases), et configuré l'environnement de développement [ACE3](https://github.com/acemod/ACE3/). En effet, notre projet est construit autour de ACE3, selon leur méthode de travail, et nécessite un accès direct à leur code source afin de pouvoir être compilé sans problème.
- [Configurer l'environnement de développement ACE3](http://ace3mod.com/wiki/development/setting-up-the-development-environment.html) - documentation en anglais.

Ceci fait, vous devriez déjà avoir toutes les dépendances et tous les outils nécessaires (Mikero's Tools, Python, ...) pour pouvoir configurer notre environnement de développement. Ouvrez une invite de commande et rendez-vous dans le dossier où vous souhaitez télécharger les sources :
```bat
cd /d "D:\Mods\"
git clone https://github.com/11rdp/modpack.git 11rdp
cd "11rdp\"
python "tools\setup.py"
```
Si vous recevez un message d'erreur, assurez vous d'avoir intallé Git sur votre machine — rien ne vous empêchera, plus tard, de passer par des logiciels comme [GitKraken](https://www.gitkraken.com/) ou [SourceTree](https://www.sourcetreeapp.com/) si vraiment vous n'aimez pas la ligne de commande.
- [Installer "Git for Windows"](https://git-scm.com/download/win)

Une fois que tout fonctionne, il vous suffit de faire un `python tools\build.py` afin de compiler la version de développement. Je vous invite à lire la documentation à l'attention des développeurs de ACE3 afin de vous renseigner notamment sur le File Patching et les conventions utilisées.
- [Activer le File Patching](https://ace3mod.com/wiki/development/setting-up-the-development-environment.html#file-patching)
- [Produire du code propre](https://ace3mod.com/wiki/development/coding-guidelines.html)
- [Toute la documentation développeur ACE3](https://ace3mod.com/wiki/development/)
