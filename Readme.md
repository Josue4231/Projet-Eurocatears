# 🎢 Eurocoasters — Projet SQL & Modélisation de Base de Données

**Eurocoasters** est un projet de conception et d’implémentation d’une **base de données relationnelle** dédiée aux **montagnes russes et parcs d’attractions européens**.  
Il couvre l’ensemble du cycle de vie d’une base de données : **analyse, modélisation (MCD / MLD / MPD) et implémentation SQL sous MariaDB**.

---

## 👨‍💻 Profil du projet

- **Type** : Projet académique / Portfolio
- **Spécialité** : Bases de données relationnelles
- **SGBD** : MariaDB
- **Langage** : SQL
- **Outils** : PlantUML, DBeaver, Visual Studio Code
- **Objectif** : Démontrer une maîtrise complète de la modélisation et du SQL

---

## 🧠 Problématique

Comment structurer efficacement des données complexes liées à :
- des **parcs d’attractions européens**,
- leurs **rollercoasters**,
- les **constructeurs**,
- les **éléments techniques**,
- la **localisation géographique**,
- et les **données de fréquentation annuelle** ?

La solution repose sur une **base relationnelle normalisée**, cohérente et évolutive.

---

## 🗂️ Modélisation des données

### 📐 Modélisation Conceptuelle (MCD)
- Identification des entités métier :
  - Pays, Villes
  - Parcs d’attractions
  - Rollercoasters
  - Constructeurs
  - Éléments techniques
  - Fréquentation
- Définition des relations et cardinalités
- Diagramme UML réalisé avec **PlantUML**

📷 *Aperçu du MCD*  
<img width="636" height="566" alt="image" src="https://github.com/user-attachments/assets/96326c71-e27e-444d-bbfb-bd9430d63b9d" />


---

### 🔗 Modélisation Logique (MLD)
- Transformation du MCD en **schéma relationnel**
- Définition des **clés primaires et étrangères**
- Respect des règles de normalisation

📷 *Schéma relationnel*  
<img width="636" height="469" alt="image" src="https://github.com/user-attachments/assets/6501652e-bfa6-4e3f-9295-6de4472347c7" />


---

### 🛢️ Modélisation Physique (MPD)
- Implémentation sous **MariaDB**
- Création des tables et contraintes d’intégrité
- Insertion de données réelles
- Visualisation du schéma avec **DBeaver**

📷 *Schéma physique (DBeaver)*  

---

## 🧪 Implémentation SQL

Le projet comprend :
- Création de la base de données
- Tables relationnelles avec clés primaires et étrangères
- Contraintes d’intégrité référentielle
- Relations **1–N** et **N–N**

📄 Exemple d’implémentation SQL :

```sql
CREATE DATABASE bd_eurocoasters_jkialengel;
USE bd_eurocoasters_jkialengel;

CREATE TABLE pays (
  pays_id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(30) NOT NULL
);

CREATE TABLE villes (
  ville_id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(30),
  fk_pays_id INT,
  FOREIGN KEY (fk_pays_id) REFERENCES pays(pays_id)
  ON DELETE SET NULL
  ON UPDATE CASCADE
);
```
👉 Le script complet est disponible dans le dépôt.

---

## 🧩 Compétences démontrées
##Bases de données & SQL

Analyse des besoins métier
Modélisation MCD / MLD / MPD
Normalisation des données
Gestion des clés et contraintes
Écriture de scripts SQL structurés

##Outils professionnels

PlantUML (diagrammes UML)
DBeaver (visualisation et gestion DB)
MariaDB
Visual Studio Code

##Méthodologie

Démarche rigoureuse et documentée
Passage de la théorie à l’implémentation
Organisation claire du projet

## 🎯 Objectifs du projet

Mettre en pratique la conception complète d’une base de données
Appliquer les bonnes pratiques SQL
Comprendre les enjeux d’un système relationnel réel
Présenter un projet structuré dans un portfolio data / back-end

## 🔮 Évolutions possibles

Ajout de vues et procédures stockées
Statistiques avancées de fréquentation
Historisation multi-années
Connexion à une application front-end
Migration vers PostgreSQL

## 📁 Dépôt GitHub

🔗 https://github.com/Josue4231/Projet-Eurocatears

## 📬 Contact

👤 Nom : Josue kialengela-tazi
📧 Email : josuekialengela@gmail.com
💼 Portfolio : https://josue4231.github.io/portfolio-de-Josue/
🐙 GitHub : https://github.com/Josue4231

Projet présenté dans un cadre académique et professionnel.
