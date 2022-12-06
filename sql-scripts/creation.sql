DROP TABLE Zone;
DROP TABLE Parc;
DROP TABLE Client;

CREATE TABLE Zone(
    idZone      char(5)  CONSTRAINT cp_Zone PRIMARY KEY,
    nomZone     varchar(20) CONSTRAINT nomZone NOT NULL,
    addresseZone varchar(50) CONSTRAINT addrZone NOT NULL
);

CREATE TABLE Parc(
    idParc      char(5)  CONSTRAINT cp_Parc PRIMARY KEY,
    idZone      char(5)  CONSTRAINT ce_Zone REFERENCES Zone,
    addresseParc varchar(50) CONSTRAINT addrParc NOT NULL,
    nomParc     varchar(20) CONSTRAINT nomParc NOT NULL,
);

CREATE TABLE Client(
    idClient    char(10) CONSTRAINT cp_Client PRIMARY KEY,
    nomClient   varchar(20) CONSTRAINT nomClient NOT NULL,
    ageClient numeric(3) CONSTRAINT ageClient NOT NULL,
    sexeClient char(1) CONSTRAINT sexeClient CHECK(sexeClient IN ('M','F')) NOT NULL,
    addrDomicile varchar(50) CONSTRAINT addrClient NOT NULL,
    numTel CHAR (10) CONSTRAINT Tel_Client
        CHECK (Telephone LIKELIKE ('[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')),
    mailClient VARCHAR(30) CONSTRAINT mailClient NOT NULL
);



CREATE TABLE Modele(

    numModel char(5) CONSTRAINT cp_Modele PRIMARY KEY,
    puissance numeric(3) CONSTRAINT puissance NOT NULL,
    nbPlaces numeric(1) CONSTRAINT nombrePlaces NOT NULL,
    nbPortes numeric(1) CONSTRAINT nombrePortes NOT NULL,
    longueur float (2) CONSTRAINT longueurModele NOT NULL,
    hauteur float (2) CONSTRAINT hauteurModele NOT NULL
)

CREATE TABLE Fournisseur(

    numFournisseur char(5) CONSTRAINT numeroFournisseur PRIMARY KEY,
    addrFournisseur varchar(50) CONSTRAINT addrresseFournisseur NOT NULL,
    nomFournisseur varchar(20) CONSTRAINT nomFournisseur NOT NULL
)

CREATE TABLE Type (

    numType char(5) CONSTRAINT cp_Type PRIMARY KEY,
    longMoy float(3) CONSTRAINT longueur_Moy NOT NULL,
    hautMoy float(3) CONSTRAINT hauteur_Moy NOT NULL,
    nbPlaces numeric(1) CONSTRAINT nombrePlaces NOT NULL,
    nbPortes numeric(1) CONSTRAINT nombrePortes NOT NULL,
    TypeMotorisation varchar(10) CONSTRAINT Motorisation CHECK(TypeMotorisation IN ('Hybride','Thermique','Electrique')) NOT NULL,
    TypeBoiteVitesse varchar(10) CONSTRAINT BoiteVitesse CHECK(TypeBoiteVitesse IN ('Mecanique','Automatique')) 
);


CREATE TABLE Formule (
    idParc char(5) CONSTRAINT cp_Formule PRIMARY KEY,
    prixJour float(6) CONSTRAINT prix_jour NOT NULL,
    tempReserv numeric(2) CONSTRAINT temp_reserv NOT NULL,
    Kilometremax numeric(3) CONSTRAINT km_max NOT NULL,
    optCarburant varchar(30) CONSTRAINT opt_carbu NOT NULL,
    optAssurance varchar(40) CONSTRAINT opt_assurance NOT NULL

);