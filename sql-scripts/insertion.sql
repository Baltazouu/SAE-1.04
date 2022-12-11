--- INSERT zones ---

INSERT INTO Zone VALUES('0NORD', 'Nord_Ouest');
INSERT INTO Zone VALUES('PARIS', 'Région_Parisienne');
INSERT INTO Zone VALUES('0LYON', 'Région_Lyonnaise');


--- INSERT parcs ---

INSERT INTO Parc VALUES('PAR01', 'PARIS', '17 Rue de Créteil 75000 Paris', 'ABAM PARIS 15eme');
INSERT INTO Parc VALUES('PAR02', 'PARIS', '14 Avenue des Champs élysées 75000 Paris', 'ABAM PARIS 1er');
INSERT INTO Parc VALUES('PAR03', 'PARIS', '17 Rue de Clichy 75009 Paris', 'ABAM Paris 9eme');
INSERT INTO Parc VALUES('LYON1', '0LYON', '1 Avenue Victor Hugo 69001 Lyon', 'ABAM Lyon 1er');
INSERT INTO Parc VALUES('LYON2', '0LYON', '17 Rue de Créteil 69002 Lyon', 'ABAM Lyon Pardieu');
INSERT INTO Parc VALUES('NORD1', '0NORD', '8 Rue Nicolas Oresme 14000 Caen', 'ABAM Caen');


--- INSERT Modeles ---

INSERT INTO Modele  VALUES('011', 'BMW S1', 023, 4.318, 1.434);
INSERT INTO Modele  VALUES('013', 'BMW M8', 055, 5.098, 1.420);
INSERT INTO Modele  VALUES('021', 'MERCEDES CA', 008, 4.549, 1.411);
INSERT INTO Modele  VALUES('028', 'MERCEDES CC', 010, 4.751 ,1.437);
INSERT INTO Modele  VALUES('042', 'FIAT 500', 004, 3.571, 1.488);
INSERT INTO Modele  VALUES('065', 'RENAULT CLIO', 005, 4.050, 1.440);
INSERT INTO Modele  VALUES('068', 'RENAULT MEGANE', 005, 4.626, 1.457);


--- INSERT Type ---

INSERT INTO Type VALUES('A', 70, 3.5, 1.3, 4, 4, 'thermique', 'mecanique');
INSERT INTO Type VALUES('B', 100, 4, 1.4, 5, 5, 'thermique', 'mecanique');
INSERT INTO Type VALUES('C', 170, 5, 1.4, 5, 5, 'thermique', 'mecanique');
INSERT INTO Type VALUES('E', 100, 3.5, 1.3, 4, 4, 'electrique', 'automatique');
INSERT INTO Type VALUES('F', 150, 5, 1.4, 5, 5, 'hybride', 'automatique');

--- INSERT Appartenir ---

INSERT INTO Appartenir VALUES('C', '011');
INSERT INTO Appartenir VALUES('F', '013');
INSERT INTO Appartenir VALUES('F', '021');
INSERT INTO Appartenir VALUES('C', '028');
INSERT INTO Appartenir VALUES('A', '042');
INSERT INTO Appartenir VALUES('E', '065');
INSERT INTO Appartenir VALUES('B', '068');


--- INSERT Formule ---

INSERT INTO Formule VALUES('AJOU1', 'A', 60, 1, 200, 'N', 'N');
INSERT INTO Formule VALUES('AVCA7', 'A', 70, 7, 2000, 'O', 'O');
INSERT INTO Formule VALUES('BJOA2', 'B', 90, 2, 500, 'O', 'N');
INSERT INTO Formule VALUES('CJOU1', 'C', 120, 1, 300, 'N', 'N');
INSERT INTO Formule VALUES('CJOA1', 'C', 150, 1, 300, 'N', 'O');
INSERT INTO Formule VALUES('EJOU1', 'E', 75, 1, 200, 'N', 'N');
INSERT INTO Formule VALUES('FSEA4', 'F', 125, 4, 1000, 'N', 'O');


--- INSERT Reduction ---


INSERT INTO Reduction   VALUES('professionnel', 'entreprise-20', 20);
INSERT INTO Reduction   VALUES('particulier', 'particulier-20', 5);

--- INSERT Client ---

INSERT INTO Client VALUES('as86dfr14t','professionnel', 'Bernadete Hernandez', 58, 'F', '35 Rue Charcot 69110 Sainte-Foy-lès-Lyon', '0784376942','brenadette.Hernadez@gmail.com');
INSERT INTO Client VALUES('z4g56sa74d','professionnel', 'Alexandre Vim', 19, 'M','12 Rue Lesflot 69002 Lyon', '0632732665','Alex.vi@gmail.com');
INSERT INTO Client VALUES('sm5a657zd1','professionnel', 'Louis Prince', 32, 'M', '56 BD Lamarre 70123 Paris', '0499576310','Louis.prince@gmail.com');
INSERT INTO Client VALUES('z6d5q4ac5d','particulier', 'Baptiste Footix', 18, 'F', '23 Rue Mont-Dor 14800 Deauville', '0716346984','Baptiste.ff@gmail.com');
INSERT INTO Client VALUES('dbz4579as1','particulier', 'Alexandre Blablacar', 29, 'M', '20 Rue Paul Mirabelle 63000 Clermont-Ferrand', '0624787410','Alxander.blacar@gmail.com');
INSERT INTO Client VALUES('op65as5df4','particulier', 'Maxence Raison', 18, 'M', '2 BD Lassale 69350 Lyon', '0693467812','Maxence.skinul@gmail.com');
INSERT INTO Client VALUES('n7a5r9u6to','particulier', 'Paul Spiderman', 82, 'M', '25 Rue Lespsyco 14003 Caen', '0758323330','paul.spider@gmail.com');



-- INSERT Fournisseur ---

INSERT INTO Fournisseur VALUES('5z6s5', '12 Rue Saint-Nectar 75000 Paris', 'BMW');
INSERT INTO Fournisseur VALUES('666zz', '25 BD Hugo Decrypte 63100 Clermont-Ferrand', 'MERCEDES');
INSERT INTO Fournisseur VALUES('xbapx', '1 Rue Joefroid 69100 Lyon', 'FIAT');
INSERT INTO Fournisseur VALUES('f69rr', '12 Rue Paulito 75021 Paris', 'RENAULT');


--- INSERT Vehicule ---

INSERT INTO Vehicule VALUES('abc12', 'PAR01', 'PAR01', '011', '2021-12-04', 21754, 8, 'FRGF994QF', 14, 'disponible');
INSERT INTO Vehicule VALUES('abc13', 'PAR01', 'PAR01', '011', '2021-12-04', 20120, 7, 'FRGD851CP', 19, 'disponible');
INSERT INTO Vehicule VALUES('wxc34', 'PAR01', 'PAR02', '021', '2022-10-01', 4230, 6, 'FRFZ831XL', 3, 'disponible');
INSERT INTO Vehicule VALUES('23df2', 'LYON2', 'LYON2', '065', '2022-04-21', 10543, 1, 'FRFL831VQ', 21, 'disponible');
INSERT INTO Vehicule VALUES('23df3', 'LYON2', 'LYON2', '065', '2022-04-21', 7, 8, 'FRFR786LZ', 0, 'indisponible');
INSERT INTO Vehicule VALUES('lkj79', 'NORD1', 'LYON2', '068', '2021-11-02', 27342, 8, 'FRFZ003GS', 39, 'indisponible');
INSERT INTO Vehicule VALUES('3jd23', 'NORD1', 'NORD1', '013', '2022-02-02', 1020, 8, 'FRGH125YG', 4, 'indisponible');
INSERT INTO Vehicule VALUES('fgh49', 'LYON1', 'LYON1', '042', '2022-11-13', 3001, 8, 'FRFZ253DX', 12, 'indisponible');
INSERT INTO Vehicule VALUES('fgh50', 'LYON2', 'LYON1', '042', '2022-11-13', 3234, 8, 'FRFN732KY', 8, 'disponible');
INSERT INTO Vehicule VALUES('fgh51', 'LYON2', 'LYON2', '042', '2022-11-13', 6, 8, 'FRGF378XZ', 0, 'disponible');


--- INSERT Contrat ---

INSERT INTO Contrat VALUES(1234567, 'as86dfr14t', 'abc13', 'CJOA1', '2022-12-11', 17, '2022-12-12', 16);
INSERT INTO Contrat VALUES(9876544, 'z4g56sa74d', 'fgh49', 'AJOU1', '2022-12-10', 9, '2022-12-12', 15);
INSERT INTO Contrat VALUES(1357975, 'z6d5q4ac5d', 'fgh49', 'AVCA7', '2022-12-12', 16, , );
INSERT INTO Contrat VALUES(3180470, 'n7a5r9u6to', '3jd23', 'FSEA4', '2022-12-09', 6, '2022-12-13', 6);


--- INSERT Livraison ---

INSERT INTO Livraison VALUES('5z6s5', '2021-12-24', 'abc12');
INSERT INTO Livraison VALUES('5z6s5', '2021-12-24', 'abc13');
INSERT INTO Livraison VALUES('666zz', '2022-11-25', 'wxc34');
INSERT INTO Livraison VALUES('f69rr', '2022-11-02', '23df2');
INSERT INTO Livraison VALUES('f69rr', '2022-05-12', '23df3');
INSERT INTO Livraison VALUES('f69rr', '2022-05-12', 'lkj79');
INSERT INTO Livraison VALUES('5z6s5', '2022-05-17', '3jd23');
INSERT INTO Livraison VALUES('xbapx', '2022-12-09', 'fgh49');
INSERT INTO Livraison VALUES('xbapx', '2022-12-09', 'fgh50');
INSERT INTO Livraison VALUES('xbapx', '2022-12-09', 'fgh51');
