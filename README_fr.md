# Retroarch Web Player pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/retroarch.svg)](https://dash.yunohost.org/appci/app/retroarch) ![](https://ci-apps.yunohost.org/ci/badges/retroarch.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/retroarch.maintain.svg)  
[![Installer Retroarch Web Player avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=retroarch)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer Retroarch Web Player rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

Emulez des consoles de jeux et jouer à ces jeux vidéos dans votre explorateur web... Et beaucoup plus!

**Version incluse :** 1.9.6~ynh1



## Captures d'écran

![](./doc/screenshots/XMB-main-menu.jpg)
![](./doc/screenshots/rgui-main-menu.jpg)
![](./doc/screenshots/ozone-main-menu.jpg)

## Avertissements / informations importantes

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

## Documentations et ressources

* Documentation YunoHost pour cette app : https://yunohost.org/app_retroarch
* Signaler un bug : https://github.com/YunoHost-Apps/retroarch_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/retroarch_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/retroarch_ynh/tree/testing --debug
ou
sudo yunohost app upgrade retroarch -u https://github.com/YunoHost-Apps/retroarch_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** https://yunohost.org/packaging_apps