### Bibliothèque partagée

Même si vous pouvez uploader une ROM depuis l'application, RetroArch peut accéder à celle déjà sur votre serveur:
* Les jeux sont situés dans `/opt/yunohost/retroarch/assets/cores`. Un lien symbolique est créé vers `/home/yunohost.multimedia/share/Games` de façon à ce que vous puissiez les y mettre facilement.
* Les cores doivent être indexés pour fonctionner : le script `/opt/yunohost/retroarch/indexer.sh` tourne toutes les 5 minutes pour indexer tous les jeux dans `opt/yunohost/retroarch/assets/cores`

### Architectures supportées

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/retroarch%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/retroarch/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/retroarch%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/retroarch/)
* Jessie x86-64b - [![Build Status](https://ci-stretch.nohost.me/ci/logs/retroarch%20%28Apps%29.svg)](https://ci-stretch.nohost.me/ci/apps/retroarch/)

### Limitations

* On ne peut pas sauvegarder. En fait, on ne peut pas écrire dans les fichiers du tout, donc la configuration est perdue à chaque fois...
* Pas de gestion d'utilisateurs
* certains cores sont listés mais ne sont pas implémentés : ils ne fonctionnent donc pas, le problème vient de l'application elle même.
