### Bibliothèque partagée

Même si vous pouvez uploader une ROM depuis l'application, RetroArch peut accéder à celle déjà sur votre serveur:
* Les jeux sont situés dans `/opt/yunohost/retroarch/assets/cores`. Un lien symbolique est créé vers `/home/yunohost.multimedia/share/Games` de façon à ce que vous puissiez les y mettre facilement.
* Les cores doivent être indexés pour fonctionner : le script `/opt/yunohost/retroarch/indexer.sh` tourne toutes les 5 minutes pour indexer tous les jeux dans `opt/yunohost/retroarch/assets/cores`

### Limitations

* On ne peut pas sauvegarder. En fait, on ne peut pas écrire dans les fichiers du tout, donc la configuration est perdue à chaque fois...
* Pas de gestion d'utilisateurs
* Certains cores sont listés mais ne sont pas implémentés : ils ne fonctionnent donc pas, le problème vient de l'application elle même.
