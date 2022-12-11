	--- INSERT zones ---

INSERT INTO Zone('0NORD', 'Nord_Ouest');
INSERT INTO Zone('PARIS', 'Région_Parisienne');
INSERT INTO Zone('0LYON', 'Région_Lyonnaise');


--- INSERT parcs ---

INSERT INTO Parc('PAR01', 'PARIS', '17 Rue de Créteil 75000 Paris', 'ABAM PARIS 15eme');
INSERT INTO Parc('PAR02', 'PARIS', '14 Avenue des Champs élysées 75000 Paris', 'ABAM PARIS 1er');
INSERT INTO Parc('PAR03', 'PARIS', '17 Rue de Clichy 75009 Paris', 'ABAM Paris 9eme');
INSERT INTO Parc('LYON1', '0LYON', '1 Avenue Victor Hugo 69001 Lyon', 'ABAM Lyon 1er');
INSERT INTO Parc('LYON2', '0LYON', '17 Rue de Créteil 69002 Lyon', 'ABAM Lyon Pardieu');
INSERT INTO Parc('NORD1', '0NORD', '8 Rue Nicolas Oresme 14000 Caen', 'ABAM Caen');


--- INSERT Modeles ---

INSERT INTO Modele ('011', 'BMW S1', 023, 4.318, 1.434);
INSERT INTO Modele ('013', 'BMW M8', 055, 5.098, 1.420);
INSERT INTO Modele ('021', 'MERCEDES CA', 008, 4.549, 1.411);
INSERT INTO Modele ('028', 'MERCEDES CC', 010, 4.751 ,1.437);
INSERT INTO Modele ('042', 'FIAT 500', 004, 3.571, 1.488);
INSERT INTO Modele ('065', 'RENAULT CLIO', 005, 4.050, 1.440);
INSERT INTO Modele ('068', 'RENAULT MEGANE', 005, 4.626, 1.457);

--- INSERT Fournisseur ---

INSERT INTO Fournisseur('05169', '50 Av de Stalingrad 95100 Argenteuil', 'BMW drive');
INSERT INTO Fournisseur('08390', '29 Bd André-Georges Voisin 37540 Saint-Cyr-sur-Loire', 'Garage FIAT');
INSERT INTO Fournisseur('92968', '8 Rue Daydat 63000 Clermont-Ferrand', 'MERCEDES France');
INSERT INTO Fournisseur('18727','63 Bd Jean-Charle 38100 Isle Dabeau', 'RENAULT roule');

--- INSERT Type ---

INSERT INTO Type('A', 70, 3.5, 1.3, 4, 4, 'thermique', 'mecanique');
INSERT INTO Type('B', 100, 4, 1.4, 5, 5, 'thermique', 'mecanique');
INSERT INTO Type('C', 170, 5, 1.4, 5, 5, 'thermique', 'mecanique');
INSERT INTO Type('E', 100, 3.5, 1.3, 4, 4, 'electrique', 'automatique');
INSERT INTO Type('F', 150, 5, 1.4, 5, 5, 'hybride', 'automatique');

--- INSERT Appartenir ---

INSERT INTO Appartenir('C', '011');
INSERT INTO Appartenir('F', '013');
INSERT INTO Appartenir('F', '021');
INSERT INTO Appartenir('C', '028');
INSERT INTO Appartenir('A', '042');
INSERT INTO Appartenir('E', '065');
INSERT INTO Appartenir('B', '068');


--- INSERT Formule ---

INSERT INTO Formule('AJOU1', 'A', 60, 1, 200, 'N', 'N');
INSERT INTO Formule('AVCA7', 'A', 70, 7, 2000, 'O', 'O');
INSERT INTO Formule('BJOA2', 'B', 90, 2, 500, 'O', 'N');
INSERT INTO Formule('CJOU1', 'C', 120, 1, 300, 'N', 'N');
INSERT INTO Formule('CJOA1', 'C', 150, 1, 300, 'N', 'O');
INSERT INTO Formule('EJOU1', 'E', 75, 1, 200, 'N', 'N');
INSERT INTO Formule('FSEA4', 'F', 125, 4, 1000, 'N', 'O');


--- INSERT Reduction ---

INSERT INTO Reduction('professionnel', 'entreprise-20', 20);

--- INSERT Client ---

INSERT INTO Client('as86dfr14t', 'Bernadete', 58, 'F', '35 Rue Charcot 69110 Sainte-Foy-lès-Lyon', '0784376942');
INSERT INTO Client('z4g56sa74d', 'Alexandre Vim', 19, 'M','12 Rue Lesflot 69002 Lyon', '0632732665');
INSERT INTO Client('sm5a657zd1', 'Louis Prince', 32, 'M', '56 BD Lamarre 70123 Paris', '0499576310');
INSERT INTO Client('z6d5q4ac5d', 'Baptiste Footix', 18, 'F', '23 Rue Mont-Dor 14800 Deauville', '0716346984');
INSERT INTO Client('dbz4579as1', 'Alexandre Blablacar', 29, 'M', '20 Rue Paul Mirabelle 63000 Clermont-Ferrand', '0624787410');
INSERT INTO Client('op65as5df4', 'Maxence Raison', 18, 'M', '2 BD Lassale 69350 Lyon', '0693467812');
INSERT INTO Client('n7a5r9u6to', 'Paul Spiderman', 82, 'M', '25 Rue Lespsyco 14003 Caen', '0758323330');

--- INSERT Vehicule ---

INSERT INTO Vehicule('abc12', 'PAR01', 'PAR01', '011', '2021-12-04', 21754, 8, 'FRGF994QF', 14, 'disponible');
INSERT INTO Vehicule('abc13', 'PAR01', 'PAR01', '011', '2021-12-04', 20120, 7, 'FRGD851CP', 19, 'disponible');
INSERT INTO Vehicule('wxc34', 'PAR01', 'PAR02', '021', '2022-10-01', 4230, 6, 'FRFZ831XL', 3, 'disponible');
INSERT INTO Vehicule('23df2', 'LYON2', 'LYON2', '065', '2022-04-21', 10543, 1, 'FRFL831VQ', 21, 'disponible');
INSERT INTO Vehicule('23df3', 'LYON2', 'LYON2', '065', '2022-04-21', 7, 8, 'FRFR786LZ', 0, 'indisponible');
INSERT INTO Vehicule('lkj79', 'NORD1', 'LYON2', '068', '2021-11-02', 27342, 8, 'FRFZ003GS', 39, 'indisponible');
INSERT INTO Vehicule('3jd23', 'NORD1', 'NORD1', '013', '2022-02-02', 1020, 8, 'FRGH125YG', 4, 'indisponible');
INSERT INTO Vehicule('fgh49', 'LYON1', 'LYON1', '042', '2022-11-13', 3001, 8, 'FRFZ253DX', 12, 'disponible');
INSERT INTO Vehicule('fgh50', 'LYON2', 'LYON1', '042', '2022-11-13', 3234, 8, 'FRFN732KY', 8, 'disponible');
INSERT INTO Vehicule('fgh51', 'LYON2', 'LYON2', '042', '2022-11-13', 6, 8, 'FRGF378XZ', 0, 'disponible');
