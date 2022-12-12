DROP TABLE Contrat;
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
    nomZone     VARCHAR(20) CONSTRAINT nomZone NOT NULL
);

CREATE TABLE Parc(

    idParc      CHAR(5)  CONSTRAINT cp_Parc PRIMARY KEY,
    idZone      CHAR(5)  CONSTRAINT ce_Zone REFERENCES Zone,
    addresseParc VARCHAR(50) CONSTRAINT addrParc NOT NULL,
    nomParc     VARCHAR(20) CONSTRAINT nomParc NOT NULL
);



CREATE TABLE Reduction(

    typeClient VARCHAR(15) CONSTRAINT CP_typeClient CHECK (typeClient IN('particulier','professionnel')) PRIMARY KEY,
    NomReduction VARCHAR(15) CONSTRAINT NomReduction NOT NULL,
    PourcentageReduction NUMERIC(20) CONSTRAINT PourcentageReduction CHECK(PourcentageReduction>0) NOT NULL
);




CREATE TABLE Client(

    idClient    CHAR(10) CONSTRAINT cp_Client PRIMARY KEY,
    typeClient VARCHAR(15) CONSTRAINT Ce_typeClient REFERENCES Reduction,
    nomClient   VARCHAR(40) CONSTRAINT nomClient NOT NULL,
    ageClient NUMERIC(3) CONSTRAINT ageClient NOT NULL,
    sexeClient CHAR(1) CONSTRAINT sexeClient CHECK(sexeClient IN ('M','F')) NOT NULL,
    addrDomicile VARCHAR(50) CONSTRAINT addrClient NOT NULL,
    numTel NUMERIC (10) CONSTRAINT Tel_Client NOT NULL,
    mailClient VARCHAR(50) CONSTRAINT mailClient NOT NULL

);



CREATE TABLE Modele(

    numModel CHAR(3) CONSTRAINT cp_Modele PRIMARY KEY,
    nomModel VARCHAR(20) CONSTRAINT Nom_Modele NOT NULL,
    puissance NUMERIC(3) CONSTRAINT puissance NOT NULL,
    longueur FLOAT (4) CONSTRAINT longueurModele NOT NULL,
    hauteur FLOAT (4) CONSTRAINT hauteurModele NOT NULL
);

CREATE TABLE Fournisseur(

    numFournisseur CHAR(5) CONSTRAINT numeroFournisseur PRIMARY KEY,
    addrFournisseur VARCHAR(50) CONSTRAINT addrresseFournisseur NOT NULL,
    nomFournisseur VARCHAR(20) CONSTRAINT nomFournisseur NOT NULL
);

CREATE TABLE Type(

    numType CHAR(5) CONSTRAINT cp_Type PRIMARY KEY,
    puissanceMoy NUMERIC(3) CONSTRAINT puissanceMoy NOT NULL,
    longMoy FLOAT(4) CONSTRAINT longueur_Moy NOT NULL,
    hautMoy FLOAT(4) CONSTRAINT hauteur_Moy NOT NULL,
    nbPlaces NUMERIC(1) CONSTRAINT nombrePlaces NOT NULL,
    nbPortes NUMERIC(1) CONSTRAINT nombrePortes NOT NULL,
    TypeMotorisation VARCHAR(15) CONSTRAINT Motorisation CHECK(TypeMotorisation IN ('hybride','thermique','electrique')) NOT NULL,
    TypeBoiteVitesse VARCHAR(15) CONSTRAINT BoiteVitesse CHECK(TypeBoiteVitesse IN ('mecanique','automatique')) 
);


CREATE TABLE Formule(

    numFormule CHAR(5) CONSTRAINT CP_formule PRIMARY KEY,
    numType CHAR(5) CONSTRAINT Ce_type REFERENCES Type,
    prixJour FLOAT(4) CONSTRAINT prix_jour NOT NULL,
    tempReserv NUMERIC(2) CONSTRAINT temp_reserv NOT NULL,
    Kilometremax NUMERIC(4) CONSTRAINT km_max NOT NULL,
    optCarburant CHAR(1) CONSTRAINT opt_carbu CHECK(optCarburant IN ('O','N')) NOT NULL,
    optAssurance CHAR(1) CONSTRAINT opt_assurance CHECK(optAssurance IN ('O','N')) NOT NULL

);

CREATE TABLE Vehicule(

    idVehicule CHAR(5) CONSTRAINT cp_Vehicule PRIMARY KEY,
    idParcAppartenant CHAR(5) CONSTRAINT ce_idParcAppartenant REFERENCES Parc(idParc),
    idParcSitue CHAR(5) CONSTRAINT ce_idParcSitue REFERENCES Parc(idParc),
    numModel CHAR(3) CONSTRAINT Ce_numModel REFERENCES Modele,
    dateSortieUsine DATE NOT NULL,
    kilometrage NUMERIC(7),-- pas de not null car pas de carburant pour ve_electriques
    nivCarburant FLOAT(1) CONSTRAINT niv_carbu NOT NULL,
    imatriculation VARCHAR(10) CONSTRAINT immatriculation NOT NULL,
    nbLoc NUMERIC(4) CONSTRAINT nb_loc CHECK(nbLoc >=0) NOT NULL,
    etat VARCHAR (12) CONSTRAINT etat CHECK(etat IN ('disponible','indisponible')) NOT NULL
    

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

    numFournisseur CHAR(5) CONSTRAINT CE_Fournisseur REFERENCES Fournisseur,
    dateLivraison DATE CONSTRAINT CE_DateLivraison REFERENCES Date,
    numVehicule CHAR(5) CONSTRAINT Ce_NumVehicule REFERENCES Vehicule(idVehicule),
    PRIMARY KEY(numFournisseur,dateLivraison,numVehicule)
);

CREATE TABLE Contrat(

    numContrat NUMERIC(7) CONSTRAINT CP_Contrat PRIMARY KEY,
    idClient CHAR(10) CONSTRAINT Ce_Client REFERENCES Client,
    idVehicule CHAR(5) CONSTRAINT Ce_Vehicule REFERENCES Vehicule,
    numFormule CHAR(5) CONSTRAINT Ce_Formule REFERENCES Formule,
    dateDepart DATE CONSTRAINT dateDepart NOT NULL,
    heureDepart NUMERIC(2) CONSTRAINT heureDepart NOT NULL,
    dateRetour DATE,-- pas de non null car date retour inconnue
    heureRetour NUMERIC(2)-- pas de non null car date retour inconnue
);