DROP TABLE Livraison;
DROP TABLE Date;
DROP TABLE Appartenir;
DROP TABLE Vehicule;
DROP TABLE Formule;
DROP TABLE Type;
DROP TABLE Fournisseur;
DROP TABLE Modele;
DROP TABLE Client;
DROP TABLE Reduction;
DROP TABLE Parc;
DROP TABLE Zone;



CREATE TABLE Zone(

    idZone      CHAR(5)  CONSTRAINT cp_Zone PRIMARY KEY,
    nomZone     VARCHAR(20) CONSTRAINT nomZone NOT NULL,
);

CREATE TABLE Parc(

    idParc      CHAR(5)  CONSTRAINT cp_Parc PRIMARY KEY,
    idZone      CHAR(5)  CONSTRAINT ce_Zone REFERENCES Zone,
    addresseParc VARCHAR(50) CONSTRAINT addrParc NOT NULL,
    nomParc     VARCHAR(20) CONSTRAINT nomParc NOT NULL
);



CREATE TABLE Reduction(

    typeClient VARCHAR(11) CONSTRAINT typeClient CHECK (typeClient IN('particulier','professionnel')) PRIMARY KEY,
    NomReduction VARCHAR(15) CONSTRAINT NomReduction NOT NULL,
    PourcentageReduction NUMERIC(20) CONSTRAINT PourcentageReduction CHECK(PourcentageReduction>0) NOT NULL
);




CREATE TABLE Client(

    idClient    CHAR(10) CONSTRAINT cp_Client PRIMARY KEY,
    nomClient   VARCHAR(20) CONSTRAINT nomClient NOT NULL,
    ageClient NUMERIC(3) CONSTRAINT ageClient NOT NULL,
    sexeClient CHAR(1) CONSTRAINT sexeClient CHECK(sexeClient IN ('M','F')) NOT NULL,
    addrDomicile VARCHAR(50) CONSTRAINT addrClient NOT NULL,
    numTel CHAR (10) CONSTRAINT Tel_Client
        CHECK (numTel LIKE ('[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')),
    mailClient VARCHAR(30) CONSTRAINT mailClient NOT NULL,
    typeClient VARCHAR(11) CONSTRAINT typeClient CHECK (typeClient IN('particulier','professionnel'))
    
);



CREATE TABLE Modele(

    numModel CHAR(3) CONSTRAINT cp_Modele PRIMARY KEY,

    puissance NUMERIC(3) CONSTRAINT puissance NOT NULL,
    longueur float (2) CONSTRAINT longueurModele NOT NULL,
    hauteur float (2) CONSTRAINT hauteurModele NOT NULL
);

CREATE TABLE Fournisseur(

    numFournisseur CHAR(5) CONSTRAINT numeroFournisseur PRIMARY KEY,
    addrFournisseur VARCHAR(50) CONSTRAINT addrresseFournisseur NOT NULL,
    nomFournisseur VARCHAR(20) CONSTRAINT nomFournisseur NOT NULL
);

CREATE TABLE Type(

    numType CHAR(5) CONSTRAINT cp_Type PRIMARY KEY,
    puissanceMoy NUMERIC(3) CONSTRAINT puissanceMoy NOT NULL,
    longMoy float(3) CONSTRAINT longueur_Moy NOT NULL,
    hautMoy float(3) CONSTRAINT hauteur_Moy NOT NULL,
    nbPlaces NUMERIC(1) CONSTRAINT nombrePlaces NOT NULL,
    nbPortes NUMERIC(1) CONSTRAINT nombrePortes NOT NULL,
    TypeMotorisation VARCHAR(10) CONSTRAINT Motorisation CHECK(TypeMotorisation IN ('hybride','thermique','electrique')) NOT NULL,
    TypeBoiteVitesse VARCHAR(10) CONSTRAINT BoiteVitesse CHECK(TypeBoiteVitesse IN ('mecanique','automatique')) 
);


CREATE TABLE Formule(

    idParc CHAR(5) CONSTRAINT cp_Formule PRIMARY KEY,
    prixJour float(6) CONSTRAINT prix_jour NOT NULL,
    tempReserv NUMERIC(2) CONSTRAINT temp_reserv NOT NULL,
    Kilometremax NUMERIC(3) CONSTRAINT km_max NOT NULL,
    optCarburant VARCHAR(30) CONSTRAINT opt_carbu NOT NULL,
    optAssurance VARCHAR(40) CONSTRAINT opt_assurance NOT NULL

);

CREATE TABLE Vehicule(

    idVehicule CHAR(5) CONSTRAINT cp_Vehicule PRIMARY KEY,
    tempReserv DATE CONSTRAINT tempreserv NOT NULL,
    Kilometrage NUMERIC(7) CONSTRAINT kilometre NOT NULL,
    nivCarburant FLOAT(4) CONSTRAINT niv_carbu NOT NULL,
    nbLocation NUMERIC(4) CONSTRAINT nb_loc NOT NULL,
    Etat VARCHAR (12) CONSTRAINT etat CHECK(etat IN ('disponible','indisponible')) NOT NULL,
    Imatriculation VARCHAR(10) CONSTRAINT immatriculation NOT NULL

);

CREATE TABLE Appartenir(

    numType CHAR(5) CONSTRAINT ce_Type REFERENCES Type,
    numModel CHAR(5) CONSTRAINT ce_Modele REFERENCES Modele,

    PRIMARY KEY (numType,numModel)
);

CREATE TABLE Date(

    dateLivraison DATE CONSTRAINT CP_DateLivraison PRIMARY KEY
);

CREATE TABLE Livraison(

    numFournisseur CHAR(5) CONSTRAINT CE_Fournisseur REFERENCES Fournisseur
    dateLivraison DATE CONSTRAINT CE_DateLivraison REFERENCES Date,
    numVehicule CHAR(5) CONSTRAINT Ce_NumVehicule REFERENCES Vehicule
    PRIMARY KEY(numFournisseur,dateLivraison,numVehicule)
);
