/**
    REQUETE 2

    Regarder si une reduction est disponible.
    Retourne le montant de la reduction
*/

SELECT  nomReduction, pourcentageReduction
FROM    Reduction

WHERE   typeClient = 'entreprise'
;