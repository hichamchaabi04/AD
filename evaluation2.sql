-- Création des tables

CREATE TABLE personne(
    nump VARCHAR PRIMARY KEY,
    prenom VARCHAR,
    nom VARCHAR,
    datenaiss DATE,
    sexe VARCHAR,
    nationalite VARCHAR,
    adresse VARCHAR,
    telephone VARCHAR
);

CREATE TABLE films(
    numf VARCHAR PRIMARY KEY,
    titre VARCHAR,
    date DATE,
    longueur TIME,
    realisateur VARCHAR
);

CREATE TABLE acteur(
    numa VARCHAR PRIMARY KEY,
    agent VARCHAR,
    specialite VARCHAR,
    taille FLOAT,
    poids FLOAT
);

CREATE TABLE generique(
    film VARCHAR,      -- num film
    acteur VARCHAR,    -- num personne
    role VARCHAR,
    salaire FLOAT
);

CREATE TABLE cinema(
    numc VARCHAR PRIMARY KEY,
    nome VARCHAR,
    adresse VARCHAR,
    telephone VARCHAR,
    compagnie VARCHAR
);

CREATE TABLE passe(
    numc VARCHAR,  -- num cinema
    numf VARCHAR,  -- num film
    salle VARCHAR, -- num salle
    datedeb DATE,
    datefin DATE,
    horaire TIME,
    prix FLOAT
);

CREATE TABLE salle(
    nums VARCHAR PRIMARY KEY,
    numc VARCHAR,
    taille_ecran FLOAT,
    place INT,
    CONSTRAINT num_cine_fkey FOREIGN KEY (numc) REFERENCES cinema(numc)
);

-- Insertion des données

INSERT INTO personne VALUES
('p1','sq','tr','23/02/1990','M','t','oui','089765432'),
('p2','sq','tr','23/02/1990','M','t','oui','089765432'),
('p3','sq','tr','23/02/1990','M','t','oui','089765432');

INSERT INTO films VALUES
('f1','df','08/08/2020','02:14:00','p2'),
('f2','df','08/08/2020','02:14:00','p2'),
('f3','df','08/08/2020','02:14:00','p3');

INSERT INTO acteur VALUES
('p1','yt','rkj',1.85,80);

INSERT INTO generique VALUES
('f1','p1','cascadeur',45678);

INSERT INTO cinema VALUES
('c1','rgh','lkjnh','09876543','xs'),
('c2','rgh','lkjnh','09876543','xs');

INSERT INTO passe VALUES
('c1','f1','s1','20/01/2022','15/02/2022','10:15:00',80),
('c2','f2','s4','20/01/2022','15/02/2022','10:15:00',80);

INSERT INTO salle VALUES
('s1','c1',38,50);