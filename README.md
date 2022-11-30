# SAE 1.04 - Création d'une base de données
Cette SAE porte sur l'étude et la création d'une base de données visant à répondre à un besoin client.  
Elle nous permet aussi d'étudier l'environnement économique de l'entreprise.



## Structure du projet

### Dossier [./rapport](rapports)
Dans ce dossier ce trouve les **rapports** demandés.

### Dossier [./sql-scripts](sql-scripts)
Dans ce dossier ce trouve les **scripts** concernant la *création* des tables, les *insertions* des divers éléments, l'*affichage* des tables et les *requêtes* demandées.

### Racine du dépot [./](./)
On pourra y retrouver :
  * le [sujet](./sae1.04_sujet.pdf) de cette SAE, 
  * ce [README](./README.md) *(qui contient certaines infos comme des liens utiles)*
  * un [.gitignore](./.gitignore) *(fichier contenant les fichiers à exclure du `git add .`)*
  * un [script](./start-psql.sh) de démarrage de **PSQL** *(-> plus d'informations [ici](#Script-start-psql.sh)))*



## Informations complémentaires

### Script [start-psql.sh](./start-psql.sh)[^1]
Ce script permet de lancer **PSQL** sur les machines de l'IUT. Il fonctionne de la manière suivante : 
```
  Usage : './start-psql.sh [-h|--help|-u|--usage] [-o|-L <output>] <login>' 
      <login> : le login de l'IUT                                           
      [-h|--help|-u|--usage] : affiche l'usage                              
      [-o|-L <output>] : écrit tout les retours de requêtes dans <output>    
```
> *De manière plus simple, executez `./start-psql <login>` dans la racine du projet, où *\<login>* est votre identifiant UCA.*



## Liens utiles

* [Lien Lucidchart - Modèle Entités-Associations](https://sg.app.lucidchart.com/uni/ls/click?upn=iVTT-2Fpq7gkkDxN5WGuJTwlaOJDS9CRXuWWJ-2FtluujEgs8B6mNvAhAsDkWK3ycsMwXx86xxiyPW4IzhUrR84FTJpWGReqSSd30yyKOkwCZ-2BqmKm2b9Vnta0dF6fGV6V0AESLlSg7nhwOYo9eXvmQpCpUqv0Wdn8PG1-2BFlDdrtEDUe8OzSUQYBYUT0q0UferZopFVP_nx1QKxP5K9TFoBZ-2Fz3K-2FiJoAJR6vcAtQAak936vqYU146GpopD274CJkrB08KsKh192jue7-2Fb3Sshha9Sk9BQDdKqik6zSLvF2ufo-2FyEUC68lP0jyftzf-2F7n91-2BZJhTv7EeI-2Fxb7Npu5vLp20-2BXmF57Xkv9yYHeRJmgeWc3YXXiZJq3oYHl-2Fn1dVdP3EtsEn9edl6npJXWmcuRqhdKrlbmWCJS3d13YbDYyq3fLGkx4ITydSLd-2BZCro8GLkwI9GfrtimE-2B-2B51XTGwUc0tDGCdoRBVBzak0w8WbkZjIv3MaO0zfgfR9lVW-2ByvGsXEVqu5U1KH5esX9FfRuikgvSrSSjS9UqeOdqZ5CyoGhPSvsjZBC22OdirJbi8RhQ7iwAJ6upLMHafWRv9ap56zi4oueYnyjAwbIZ-2FRPwshSLVAEONEsmQf8JBeq7wAke8K6B-2F1uJcmBhCiMhjcfZerf-2Biik1SYmplzuqBvR7aWt0sh936EAI-2Bxuyg3TXkNn1wkunUgII1OemooLm-2BdR3rZE7q8lGqkS8tpEpd-2FdPuyd0vT9S8dkZkEqYXOfeaF2kI5JINF9A8ZSXzHrZ1DIj5c2XF469S6QWbRah8ZCpwjFz3ER2swiIpZJVrpO8NYDECKjLVe
)



### Notes

[^1]: *Vous pouver réutiliser ce script ou le modifier pour le faire lancer votre propre serveur PSQL. Faites cependant attention à ne pas `push` les modifications de ce fichier. Cela pourrait modifier les fichiers de tout le monde et rendre inutilisable ce script.*