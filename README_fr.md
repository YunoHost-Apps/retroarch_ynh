# RetroArch Web Player pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/retroarch.svg)](https://dash.yunohost.org/appci/app/retroarch)  
[![Installer retroarch avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=retroarch)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer retroarch rapidement et simplement sur un serveur Yunohost.  
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble
RetroArch est un frontend pour des émulateurs, des moteurs de jeux et des lecteurs média.
Il vous permet de rejouer à des classiques du jeu vidéo sur une large gamme d'ordinateur et de console grace à son interface graphique légère. Les réglages sont unifiés afin de n'avoir a effectuer les réglages qu'une seule fois.

Le Web Player Retroarch utilise RetroArch compilé grace à [Emscripten](http://kripken.github.io/emscripten-site/).


**Version incluse:** 1.9.6

## Captures d'écran

![](https://github.com/libretro/RetroArch/blob/master/docs/ozone-main-menu.jpg)

## Démo

* [Démo officielle](https://web.libretro.com/)


## Documentation

 * [Website officiel](https://www.retroarch.com/)
 * [Documentation officielle du web player](https://github.com/libretro/RetroArch/tree/master/pkg/emscripten) (c'est très très léger...)
 * [Documentation officielle](https://docs.libretro.com/)

## Caractéristiques spécifiques YunoHost

#### Bibliothèque partagée

Même si vous pouvez uploader une ROM depuis l'application, RetroArch peut accéder à celle déjà sur votre serveur:
* Les jeux sont situés dans `/opt/yunohost/retroarch/assets/cores`. Un lien symbolique est créé vers `/home/yunohost.multimedia/share/Games` de façon à ce que vous puissiez les y mettre facilement.
* Les cores doivent être indexés pour fonctionner : le script `/opt/yunohost/retroarch/indexer.sh` tourne toutes les 5 minutes pour indexer tous les jeux dans `opt/yunohost/retroarch/assets/cores`

#### Architectures supportées

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/retroarch%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/retroarch/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/retroarch%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/retroarch/)
* Jessie x86-64b - [![Build Status](https://ci-stretch.nohost.me/ci/logs/retroarch%20%28Apps%29.svg)](https://ci-stretch.nohost.me/ci/apps/retroarch/)

## Limitations

* On ne peut pas sauvegarder. En fait, on ne peut pas écrire dans les fichiers du tout, donc la configuration est perdue à chaque fois...
* Pas de gestion d'utilisateurs
* certains cores sont listés mais ne sont pas implémentés : ils ne fonctionnent donc pas, le problème vient de l'application elle même.

## Liens

 * Signaler un bug: https://github.com/YunoHost-Apps/retroarch_ynh/issues
 * Site de l'application: [Official Website](https://www.retroarch.com/)
 * Dépôt de l'application principale: https://github.com/libretro/RetroArch/tree/master/pkg/emscripten
 * Site web YunoHost: https://yunohost.org/

---

Informations pour les développeurs
----------------

**Seulement si vous voulez utiliser une branche de test pour le codage, au lieu de fusionner directement dans la banche principale.**
Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/retroarch_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/retroarch_ynh/tree/testing --debug
ou
sudo yunohost app upgrade retroarch -u https://github.com/YunoHost-Apps/retroarch_ynh/tree/testing --debug
```
