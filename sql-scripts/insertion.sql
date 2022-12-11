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

