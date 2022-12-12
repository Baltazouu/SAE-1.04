/**
    REQUETE 4

    Recherche le montant des location par types de clients
*/

SELECT  DATE_PART('day',dateRetour::timestamp-dateDepart::timestamp) * Fo.prixJour Total
FROM    Contrat Co, Formule Fo,Client C
WHERE   Co.numFormule=Fo.numFormule
    AND typeClient='particulier'
    AND C.idClient=Co.idClient;


SELECT  DATE_PART('day',dateRetour::timestamp-dateDepart::timestamp) * Fo.prixJour Total
FROM    Contrat Co, Formule Fo,Client C
WHERE   Co.numFormule=Fo.numFormule
    AND typeClient='professionnel'
    AND C.idClient=Co.idClient;
