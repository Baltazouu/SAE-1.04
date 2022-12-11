/**
    REQUETE 1

    Recherche d'articles jamais loue.
*/

SELECT  idVehicule
FROM    Vehicule

WHERE   etat = 'disponible';