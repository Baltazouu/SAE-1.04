DROP TABLE Zone;
DROP TABLE Parc;
DROP TABLE Client;

CREATE TABLE Zone(
    idZone      varchar(5)  CONSTRAINT cp_Zone PRIMARY KEY,
    nomZone     varchar(20) CONSTRAINT nomZone NOT NULL,
    addresseZone varchar(50) CONSTRAINT addrZone NOT NULL
);

CREATE TABLE Parc(
    idParc      varchar(5)  CONSTRAINT cp_Parc PRIMARY KEY,
    idZone      varchar(5)  CONSTRAINT ce_Zone REFERENCES Zone,
    addresseParc varchar(50) CONSTRAINT addrParc NOT NULL,
    nomParc     varchar(20) CONSTRAINT nomParc NOT NULL,
);

CREATE TABLE Client(
    idClient    varchar(10) CONSTRAINT cp_Client PRIMARY KEY,
    nomClient   varchar(20) 
)
