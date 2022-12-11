/**
    REQUETE 3

    Liste les vehicules qui n'ont jamais ete loue.
*/

SELECT  COUNT(idVehicule), idVehicule
FROM    Vehicule
EXCEPT
SELECT  idVehicule
FROM    Vehicule
WHERE   nb_loc > 0
;



SELECT  COUNT(idVehicule), idVehicule
FROM    Vehicule
WHERE   nb_loc <= 0
;



SELECT  COUNT(idVehicule), idVehicule
FROM    Vehicule
WHERE   nb_loc NOT IN(SELECT idVehicule
                      FROM   Vehicule
                      WHERE  nb_loc > 0)
;



SELECT  COUNT(idVehicule), idVehicule
FROM    Vehicule
MINUS
SELECT  idVehicule
FROM    Vehicule
WHERE   nb_loc > 0
;
