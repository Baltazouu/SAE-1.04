DROP TABLE Zone;
DROP TABLE Parc;
DROP TABLE Client;

CREATE TABLE Zone(
    idZone      CHAR(5)  CONSTRAINT cp_Zone PRIMARY KEY,
    nomZone     VARCHAR(20) CONSTRAINT nomZone NOT NULL,
    addresseZone VARCHAR(50) CONSTRAINT addrZone NOT NULL
);

CREATE TABLE Parc(
    idParc      CHAR(5)  CONSTRAINT cp_Parc PRIMARY KEY,
    idZone      CHAR(5)  CONSTRAINT ce_Zone REFERENCES Zone,
    addresseParc VARCHAR(50) CONSTRAINT addrParc NOT NULL,
    nomParc     VARCHAR(20) CONSTRAINT nomParc NOT NULL,
);

CREATE TABLE Client(
    idClient    CHAR(10) CONSTRAINT cp_Client PRIMARY KEY,
    nomClient   VARCHAR(20) CONSTRAINT nomClient NOT NULL,
    ageClient NUMERIC(3) CONSTRAINT ageClient NOT NULL,
    sexeClient CHAR(1) CONSTRAINT sexeClient CHECK(sexeClient IN ('M','F')) NOT NULL,
    addrDomicile VARCHAR(50) CONSTRAINT addrClient NOT NULL,
    numTel CHAR (10) CONSTRAINT Tel_Client
        CHECK (Telephone LIKELIKE ('[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')),
    mailClient VARCHAR(30) CONSTRAINT mailClient NOT NULL,
    typeClient VARCHAR(11) CONSTRAINT typeClient CHECK (typeClient IN('particulier','professionnel'))
    
);



CREATE TABLE Modele(

    numModel CHAR(5) CONSTRAINT cp_Modele PRIMARY KEY,
    puissance NUMERIC(3) CONSTRAINT puissance NOT NULL,
    nbPlaces NUMERIC(1) CONSTRAINT nombrePlaces NOT NULL,
    nbPortes NUMERIC(1) CONSTRAINT nombrePortes NOT NULL,
    longueur float (2) CONSTRAINT longueurModele NOT NULL,
    hauteur float (2) CONSTRAINT hauteurModele NOT NULL
)

CREATE TABLE Fournisseur(

    numFournisseur CHAR(5) CONSTRAINT numeroFournisseur PRIMARY KEY,
    addrFournisseur VARCHAR(50) CONSTRAINT addrresseFournisseur NOT NULL,
    nomFournisseur VARCHAR(20) CONSTRAINT nomFournisseur NOT NULL
)

CREATE TABLE Type (

    numType CHAR(5) CONSTRAINT cp_Type PRIMARY KEY,
    longMoy float(3) CONSTRAINT longueur_Moy NOT NULL,
    hautMoy float(3) CONSTRAINT hauteur_Moy NOT NULL,
    nbPlaces NUMERIC(1) CONSTRAINT nombrePlaces NOT NULL,
    nbPortes NUMERIC(1) CONSTRAINT nombrePortes NOT NULL,
    TypeMotorisation VARCHAR(10) CONSTRAINT Motorisation CHECK(TypeMotorisation IN ('hybride','thermique','electrique')) NOT NULL,
    TypeBoiteVitesse VARCHAR(10) CONSTRAINT BoiteVitesse CHECK(TypeBoiteVitesse IN ('mecanique','automatique')) 
);


CREATE TABLE Formule (
    idParc CHAR(5) CONSTRAINT cp_Formule PRIMARY KEY,
    prixJour float(6) CONSTRAINT prix_jour NOT NULL,
    tempReserv NUMERIC(2) CONSTRAINT temp_reserv NOT NULL,
    Kilometremax NUMERIC(3) CONSTRAINT km_max NOT NULL,
    optCarburant VARCHAR(30) CONSTRAINT opt_carbu NOT NULL,
    optAssurance VARCHAR(40) CONSTRAINT opt_assurance NOT NULL

);

CREATE TABLE Vehicule (
    idVehicule CHAR(5) CONSTRAINT cp_Vehicule PRIMARY KEY,
    tempReserv DATE CONSTRAINT tempreserv VALUES ('YYYY-MM-DD') NOT NULL,
    Kilometrage NUMERIC(7) CONSTRAINT kilometre NOT NULL,
    nivCarburant FLOAT(4) CONSTRAINT niv_carbu NOT NULL,
    nbLocation NUMERIC(4) CONSTRAINT nb_loc NOT NULL,
    Etat VARCHAR (12) CONSTRAINT etat CHECK(etat IN ('disponible','indisponible')) NOT NULL,
    Imatriculation VARCHAR(10) CONSTRAINT immatriculation NOT NULL,

);

CREATE TABLE Appartenir (
    numType CHAR(5) CONSTRAINT ce_Type REFERENCES(Type),
    numModel CHAR(5) CONSTRAINT ce_Modele REFERENCES(Modele),

    PRIMARY KEY (numType,numModel)

);