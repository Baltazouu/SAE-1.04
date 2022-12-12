# Requêtes Base de Donnée Sociétée **ABAM**

* Dudonné Baptiste
* Alexandre Agostinho
* Alexandre Picard
* Girardet Maxence

## Requête 1 

Recherche des d'articles jamais loués

```sql
SELECT  idVehicule
FROM    Vehicule
WHERE   etat = 'indisponible';
```

## Requête 2 

Afficher des réductions si celles-ci sont disponibles

```sql
SELECT  nomReduction, pourcentageReduction
FROM    Reduction

WHERE   typeClient = 'professionnel';
```

## Requête 3

Lister les véhicules qui n'ont jamais été loués

```sql
SELECT  idVehicule
FROM    Vehicule
WHERE   nbLoc = 0;
```

## Requête 4

Recherche le montant des location par types de clients

* Clients de type **Particuliers**
```sql
SELECT  DATE_PART('day',dateRetour::timestamp-dateDepart::timestamp) * Fo.prixJour Total
FROM    Contrat Co, Formule Fo,Client C
WHERE   Co.numFormule=Fo.numFormule
    AND typeClient='particulier'
    AND C.idClient=Co.idClient;

```

* Clients de type **Professionnels**

```sql
SELECT  DATE_PART('day',dateRetour::timestamp-dateDepart::timestamp) * Fo.prixJour Total
FROM    Contrat Co, Formule Fo,Client C
WHERE   Co.numFormule=Fo.numFormule
    AND typeClient='professionnel'
    AND C.idClient=Co.idClient;

```
