/**
    REQUETE 3

    Liste les vehicules qui n'ont jamais ete loue.
*/

SELECT  idVehicule
FROM    Vehicule
WHERE   nbLoc = 0
;
