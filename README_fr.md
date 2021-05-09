##DEVELOPPEMENT EN COURS - NE PAS UTILISER!
# App exemple pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/retroarch.svg)](https://dash.yunohost.org/appci/app/retroarch)  
[![Installer retroarch avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=retroarch)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer retroarch rapidement et simplement sur un serveur Yunohost.  
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble
Le Web Player Retroarch utilise RetroArch compilé grace à [Emscripten](http://kripken.github.io/emscripten-site/).RetroArch est le frontend de référence pour l'API libretro.
Des exemple populaires d'implémentations de cette API incluent des émulateurs de jeux vidéos et de moteur de jeux ainsi que des programmes 3D plus généraux.
Ces programmes sont instanciés comme bibliothèques dynamiques, appelées "libretro cores".

* On ne peut pas sauvegarder. En fait, on ne peut pas écrire dans les fichiers du tout, donc la configuration est perdue à chaque fois
* Pas de gestion d'utilisateurs
* certains cores sont listés mais ne sont pas implémentés : ils ne fonctionnent donc pas, le problème vient de l'application elle même.
* Les jeux sont situés dans `/opt/yunohost/retroarch/assets/cores`. Un lien symbolique est créé vers `/home/yunohost.multimedia/share/Games` de façon à ce que vous puissiez les y mettre facilement.
* Les cores doivent être indexés pour fonctionner : le script `/opt/yunohost/retroarch/indexer.sh` tourne toutes les 5 minutes pour indexer tous les jeux dans `opt/yunohost/retroarch/assets/cores`



**Version incluse:** 1.9.1

## Captures d'écran

![](https://github.com/libretro/RetroArch/blob/master/docs/ozone-main-menu.jpg)

## Démo

* [Démo officielle](https://web.libretro.com/)

## Configuration

Comment configurer cette application: via le panneau d'administration, un fichier brut en SSH ou tout autre moyen.

## Documentation

 * Documentation officielle: Lien vers la documentation officielle de cette application
 * Documentation YunoHost: Si une documentation spécifique est nécessaire, n'hésitez pas à contribuer.

## Caractéristiques spécifiques YunoHost

#### Support multi-utilisateurs

L'authentification LDAP et HTTP est-elle prise en charge?
L'application peut-elle être utilisée par plusieurs utilisateurs?

#### Architectures supportées

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/retroarch%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/retroarch/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/retroarch%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/retroarch/)
* Jessie x86-64b - [![Build Status](https://ci-stretch.nohost.me/ci/logs/retroarch%20%28Apps%29.svg)](https://ci-stretch.nohost.me/ci/apps/retroarch/)

## Limitations

* Limitations connues.

## Informations additionnelles

* Autres informations à ajouter sur cette application

**Plus d'informations sur la page de documentation:**  
https://yunohost.org/packaging_apps

## Liens

 * Signaler un bug: https://github.com/YunoHost-Apps/retroarch_ynh/issues
 * Site de l'application: Lien vers le site officiel de cette application
 * Dépôt de l'application principale: Lien vers le dépôt officiel de l'application principale
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
