##ON GOING DEVELOPMENT - DO NOT USE

# RetroArch Web Player for YunoHost

[![Integration level](https://dash.yunohost.org/integration/retroarch.svg)](https://dash.yunohost.org/appci/app/retroarch)  
[![Install RetroArch with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=retroarch)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allow you to install RetroArch quickly and simply on a YunoHost server.  
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview
The RetroArch Web Player is RetroArch compiled through [Emscripten](http://kripken.github.io/emscripten-site/). RetroArch is the reference frontend for the libretro API.
Popular examples of implementations for this API includes video game system emulators and game engines as well as more generalized 3D programs.
These programs are instantiated as dynamic libraries. We refer to these as "libretro cores". In our case, these cores are emulators

* cannot save game, in fact, cannot write at all... so configuration is lost each time you start again
* no user management
* some core are listed but not implemented : they do not work, the issue is from the upstream app.
* Games are located in `/opt/yunohost/retroarch/assets/cores`. A symbolic link is created to this folder in `/home/yunohost.multimedia/share/Games`, so that you can place your games from here
* cores have to be indexed to work : script `/opt/yunohost/retroarch/indexer.sh` run every 5 minutes to index all games in `opt/yunohost/retroarch/assets/cores`

**Shipped version:** 1.9.1

## Screenshots

![](https://github.com/libretro/RetroArch/blob/master/docs/ozone-main-menu.jpg)

## Demo

* [Official demo](https://web.libretro.com/)

## Configuration

How to configure this app: by an admin panel, a plain file with SSH, or any other way.

## Documentation

 * Official documentation: Link to the official documentation of this app
 * YunoHost documentation: If specific documentation is needed, feel free to contribute.

## YunoHost specific features

#### Multi-users support

Are LDAP and HTTP auth supported?
Can the app be used by multiple users?

#### Supported architectures

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/retroarch%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/retroarch/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/retroarch%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/retroarch/)

## Limitations

* Any known limitations.



## Additional information

* Other information you would add about this application

**More information on the documentation page:**  
https://yunohost.org/packaging_apps

## Links

 * Report a bug: https://github.com/YunoHost-Apps/retroarch_ynh/issues
 * App website: Link to the official website of this app
 * Upstream app repository: Link to the official repository of the upstream app
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



