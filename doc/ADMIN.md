### Use Shared ROMs library

Although you can upload a ROM at runtime, retroarch may have access to the ROMs you already have on your server:

* Games are located in `/opt/yunohost/retroarch/assets/cores`. A symbolic link is created to this folder in `/home/yunohost.multimedia/share/Games`, so that you can place your games from here
* cores have to be indexed to work : script `/opt/yunohost/retroarch/indexer.sh` run every 5 minutes to index all games in `opt/yunohost/retroarch/assets/cores`

### Limitations

* Cannot save game, in fact, cannot write at all... so configuration is lost each time you start again
* No user management
* Some core are listed but not implemented : they do not work, the issue is from the upstream app.
