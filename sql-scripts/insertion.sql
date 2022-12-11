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

INSERT INTO Modele ('011', 'BMW S1', 023, 5, 5, 4.319, 1.434);
INSERT INTO Modele ('013', 'BMW M8', 055, 5, 5, 5.098, 1.420);
INSERT INTO Modele ('021', 'MERCEDES CA', 008, 5, 5, 4.549, 1.411);
INSERT INTO Modele ('028', 'MERCEDES CC', 010, 5, 5, 4.751 ,1.437);
INSERT INTO Modele ('042', 'FIAT 500', 004, 4, 3, 3.571, 1.488);
INSERT INTO Modele ('065', 'RENAULT CLIO', 005, 5, 5, 4.050, 1.440);
INSERT INTO Modele ('068', 'RENAULT MEGANE', 005, 5, 5, 4.626, 1.457);

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
