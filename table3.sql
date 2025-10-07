--Partie 3 REQUÊTES D’INTERROGATION DES DONNÉES

--Requête 1 : villes & pays
    -- Nous vous proposons une première requête exemple qui utilise une jointure de la table villes vers pays avec la correspondance de la clé étrangère fk_pays_id sur la clé primaire pays_id :
SELECT
villes.nom AS VILLE,
pays.nom AS PAYS
FROM
villes
INNER JOIN pays ON villes.fk_pays_id = pays.pays_id;

--Requête 2 : parcs avec villes & pays
    --En vous inspirant de la requête précédente (requête 2) :
        -- Lister TOUS les parcs avec leur ville et pays 

SELECT
    parcs.nom AS PARC,
    villes.nom AS VILLE,
    pays.nom AS PAYS
FROM
    parcs
INNER JOIN villes ON parcs.fk_ville_id = villes.ville_id
INNER JOIN pays ON villes.fk_pays_id = pays.pays_id;

--Requête 3 : parcs & fréquentations
    -- Réaliser une requête qui affiche l’ensemble des parcs avec leur fréquentation pour 2023 

SELECT
    parcs.nom AS PARC,
    frequentation.nombre_visiteur  AS "NOMBRE VISITEURS 2023"
FROM
    parcs
INNER JOIN frequentation ON parcs.parc_id = frequentation.fk_parc_id 


--Requête 4 : constructeurs avec villes & pays
        --Réaliser une requête qui affiche l’ensemble des constructeurs avec leur ville et leur pays
        --Remarque : Utiliser une jointure : LEFT JOIN sinon les constructeurs n’ayant pas de ville ou de pays ne sera pas affiché.

SELECT
    constructeurs.nom AS CONSTRUCTEUR,
    villes.nom AS VILLE,
    pays.nom AS PAYS
FROM
    constructeurs
LEFT JOIN villes ON constructeurs.fk_ville_id = villes.ville_id
LEFT JOIN pays ON villes.fk_pays_id = pays.pays_id;




--Requête 5 : rollercoasters avec constructeurs & parcs
 -- Réaliser une requête qui affiche l’ensemble des rollercoasters avec leurs constructeurs et leurs parcs :

SELECT
    rollercoasters.nom AS ROLLERCOASTER,
    constructeurs.nom AS CONSTRUCTEUR,
    parcs.nom AS PARC,
    villes.nom AS VILLE,
    pays.nom AS PAYS
FROM
    rollercoasters
LEFT JOIN constructeurs ON rollercoasters.fk_constructeur_id = constructeurs.constructeur_id
LEFT JOIN parcs ON rollercoasters.fk_parc_id = parcs.parc_id
LEFT JOIN villes ON parcs.fk_ville_id = villes.ville_id
LEFT JOIN pays ON villes.fk_pays_id = pays.pays_id;


-- Requête 6 : rollercoasters avec leurs elements
    --Réaliser une requête qui affiche l’ensemble des rollercoasters avec leurs elements 

SELECT
    rollercoasters.nom AS ROLLERCOASTER,
    elements.nom AS ELEMENT,
    composition.nombre AS "Nombre"
FROM
    rollercoasters
INNER JOIN composition ON rollercoasters.rollercoaster_id = composition.fk_rollercoaster_id
INNER JOIN elements ON composition.fk_element_id = elements.element_id
ORDER BY
    rollercoasters.nom;

