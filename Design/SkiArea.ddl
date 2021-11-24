-- *********************************************
-- * Standard SQL generation                   
-- *--------------------------------------------
-- * DB-MAIN version: 11.0.2              
-- * Generator date: Sep 14 2021              
-- * Generation date: Wed Nov 24 14:57:11 2021 
-- * LUN file: C:\Users\azamm\Desktop\repos\SkiArea\Design\SkiArea.lun 
-- * Schema: SkiArea/Logico 
-- ********************************************* 


-- Database Section
-- ________________ 

create database SkiAreaDB;


-- DBSpace Section
-- _______________


-- Tables Section
-- _____________ 

create table APPARTENENZA (
     IDImpianto char(16) not null,
     IDComprensorio char(16) not null,
     constraint IDAPPARTENENZA primary key (IDComprensorio, IDImpianto));

create table COMPRENSORIO (
     IDComprensorio char(16) not null,
     NomeComprensorio char(16) not null,
     PrezzoGiornaliero numeric(16) not null,
     constraint IDCOMPRENSORIO primary key (IDComprensorio));

create table COPERTURA (
     IDComprensorio char(16) not null,
     IDSkipass char(16) not null,
     constraint IDCOPERTURA primary key (IDSkipass, IDComprensorio));

create table IMPIANTO (
     IDImpianto char(16) not null,
     NomeImpianto char(16) not null,
     Durata numeric(16) not null,
     Lunghezza numeric(16) not null,
     Posti char(16) not null,
     Tipologia char(16) not null,
     constraint IDIMPIANTO primary key (IDImpianto));

create table NODO (
     IDNodo char(16) not null,
     NomeNodo char(16) not null,
     Altitudine numeric(16) not null,
     constraint IDNODO primary key (IDNodo));

create table PERCORRENZA (
     IDPista char(16) not null,
     IDPercorso char(16) not null,
     constraint IDPERCORRENZA primary key (IDPista, IDPercorso));

create table PERCORSO (
     IDPercorso char(16) not null,
     NomePercorso char(16) not null,
     Durata numeric(16) not null,
     Dislivello numeric(16) not null,
     Lunghezza numeric(16) not null,
     IDUtente char(16) not null,
     constraint IDPERCORSO primary key (IDPercorso));

create table PISTA (
     IDPista char(16) not null,
     NomePista char(16) not null,
     Difficolta numeric(16) not null,
     Lunghezza numeric(16) not null,
     Arrivo char(16) not null,
     Partenza char(16) not null,
     constraint IDPISTA primary key (IDPista));

create table SKIPASS (
     IDSkipass char(16) not null,
     Durata numeric(16) not null,
     IDUtente char(16) not null,
     constraint IDSKIPASS primary key (IDSkipass));

create table STAZIONE (
     IDStazione char(16) not null,
     NomeStazione char(16) not null,
     IDNodo char(16) not null,
     IDImpianto char(16) not null,
     constraint IDSTAZIONE_SCI primary key (IDStazione));

create table UTENTE (
     IDUtente char(16) not null,
     Nome char(16) not null,
     Cognome char(16) not null,
     Livello numeric(16) not null,
     Posizione char(16) not null,
     constraint IDUTENTE primary key (IDUtente));

create table UTILIZZO (
     IDStazione char(16) not null,
     IDPercorso char(16) not null,
     constraint IDUTILIZZO primary key (IDStazione, IDPercorso));


-- Constraints Section
-- ___________________ 

alter table APPARTENENZA add constraint FKAPP_COM
     foreign key (IDComprensorio)
     references COMPRENSORIO;

alter table APPARTENENZA add constraint FKAPP_IMP
     foreign key (IDImpianto)
     references IMPIANTO;

alter table COPERTURA add constraint FKCOP_SKI
     foreign key (IDSkipass)
     references SKIPASS;

alter table COPERTURA add constraint FKCOP_COM
     foreign key (IDComprensorio)
     references COMPRENSORIO;

alter table PERCORRENZA add constraint FKPER_PER
     foreign key (IDPercorso)
     references PERCORSO;

alter table PERCORRENZA add constraint FKPER_PIS
     foreign key (IDPista)
     references PISTA;

alter table PERCORSO add constraint FKEFFETTUAZIONE
     foreign key (IDUtente)
     references UTENTE;

alter table PISTA add constraint FKARRIVO_PISTA
     foreign key (Arrivo)
     references NODO;

alter table PISTA add constraint FKPARTENZA_PISTA
     foreign key (Partenza)
     references NODO;

alter table SKIPASS add constraint FKACQUISTO
     foreign key (IDUtente)
     references UTENTE;

alter table STAZIONE add constraint FKCOLLOCAZIONE
     foreign key (IDNodo)
     references NODO;

alter table STAZIONE add constraint FKCOLLEGAMENTO
     foreign key (IDImpianto)
     references IMPIANTO;

alter table UTENTE add constraint FKPOSIZIONE
     foreign key (Posizione)
     references NODO;

alter table UTILIZZO add constraint FKUTI_PER
     foreign key (IDPercorso)
     references PERCORSO;

alter table UTILIZZO add constraint FKUTI_STA
     foreign key (IDStazione)
     references STAZIONE;


-- Index Section
-- _____________ 

