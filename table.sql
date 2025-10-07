
CREATE DATABASE bd_eurocoasters_jkialengel;

USE bd_eurocoasters_jkialengel;

1.Création de la table pays
CREATE TABLE pays (
pays_id INT AUTO_INCREMENT PRIMARY KEY,
nom VARCHAR(30) NOT NULL
);

2.Création de la table villes :
CREATE TABLE villes (
ville_id INT AUTO_INCREMENT PRIMARY KEY,
nom VARCHAR(30),
fk_pays_id INT DEFAULT NULL REFERENCES pays (pays_id)
ON DELETE SET NULL
ON UPDATE CASCADE
);

-- 3.Création de la table parcs :
CREATE TABLE parcs(
    parc_id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    fk_ville_id INT REFERENCES villes(ville_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    date_ouverture INT,
    superficie INT 
);

--4.Création de la table fréquentation :
CREATE TABLE frequentation(
    annee YEAR PRIMARY KEY,
    fk_parc_id INT REFERENCES parcs(parc_id) PRIMARY KEY
        ON DELETE CASCADE
        ON UPDATE CASCADE,
        nombre_visiteur INT,
        PRIMARY KEY (fk_parc_id,annee)
);

--5.Création de la table constructeurs :
CREATE TABLE constructeurs(
    constructeur_id INT PRIMARY KEY,
    nom VARCHAR(30),
    fk_ville_id INT REFERENCES villes(ville_id)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
    adresse VARCHAR(100),
    url_site_web VARCHAR(100),
    url_facebook VARCHAR(100),
    url_instagram VARCHAR(100),
    url_linked_in VARCHAR(100),
    date_creation YEAR 
);
--6.Création de la table elements:
CREATE TABLE elements(
    element_id INT PRIMARY KEY ,
    nom VARCHAR(50)
);

--7.Création de la table rollercoasters :
CREATE TABLE rollercoasters(
    rollercoaster_id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50),
    structure ENUM('acier', 'bois') NOT NULL,
    type ENUM('sit down','stand up','inverted','suspended','wing','bobsled','flying') DEFAULT NULL,
    date_ouverture YEAR,
    hauteur DECIMAL(4,1),
    fk_constructeur_id INT REFERENCES constructeurs(constructeur_id)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
    fk_parc_id INT REFERENCES parcs(parc_id)
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

--8Création de la table compositions
CREATE TABLE composition(
    fk_rollercoaster_id INT REFERENCES rollercoasters(rollercoaster_id) 
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    fk_element_id INT REFERENCES elements(element_id) 
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
    PRIMARY KEY (fk_rollercoaster_id,fk_element_id),
    nombre INT
); 