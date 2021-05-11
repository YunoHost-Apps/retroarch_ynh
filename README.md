# RetroArch Web Player for YunoHost

[![Integration level](https://dash.yunohost.org/integration/retroarch.svg)](https://dash.yunohost.org/appci/app/retroarch)  
[![Install RetroArch with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=retroarch)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allow you to install RetroArch quickly and simply on a YunoHost server.  
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview
RetroArch is a frontend for emulators, game engines and media players.
It enables you to run classic games on a wide range of computers and consoles through its slick graphical interface. Settings are also unified so configuration is done once and for all.

The RetroArch Web Player is RetroArch compiled through [Emscripten](http://kripken.github.io/emscripten-site/).

**Shipped version:** 1.9.2

## Screenshots

![](https://github.com/libretro/RetroArch/blob/master/docs/ozone-main-menu.jpg)

## Demo

* [Official demo](https://web.libretro.com/)


## Documentation

 * [Official Website](https://www.retroarch.com/)
 * [Official web player documentation](https://github.com/libretro/RetroArch/tree/master/pkg/emscripten) (not much to see here...)
 * [Official documentation](https://docs.libretro.com/)
 
## YunoHost specific features

### Use Shared ROMs library

Although you can upload a ROM at runtime, retroarch may have access to the ROMs you already have on your server:

* Games are located in `/opt/yunohost/retroarch/assets/cores`. A symbolic link is created to this folder in `/home/yunohost.multimedia/share/Games`, so that you can place your games from here
* cores have to be indexed to work : script `/opt/yunohost/retroarch/indexer.sh` run every 5 minutes to index all games in `opt/yunohost/retroarch/assets/cores`


#### Supported architectures

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/retroarch%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/retroarch/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/retroarch%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/retroarch/)

## Limitations

* cannot save game, in fact, cannot write at all... so configuration is lost each time you start again
* no user management
* some core are listed but not implemented : they do not work, the issue is from the upstream app.

## Links

 * Report a bug: https://github.com/YunoHost-Apps/retroarch_ynh/issues
 * App website: [Official Website](https://www.retroarch.com/)
 * Upstream app repository: https://github.com/libretro/RetroArch/tree/master/pkg/emscripten
 * YunoHost website: https://yunohost.org/


---

Developers info
----------------

**Only if you want to use a testing branch for coding, instead of merging directly into master.**
Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/retroarch_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/retroarch_ynh/tree/testing --debug
or
sudo yunohost app upgrade retroarch -u https://github.com/YunoHost-Apps/retroarch_ynh/tree/testing --debug
```



