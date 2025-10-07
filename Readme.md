# 🎢 Eurocoasters – Mini-Projet de Base de Données

## 📖 Description du projet
**Eurocoasters** est un mini-projet visant à concevoir, modéliser et implémenter une base de données relationnelle autour du thème des **montagnes russes européennes**.  
L’objectif est de passer par toutes les étapes classiques de conception d’une base de données — de l’étude conceptuelle à la modélisation physique — en utilisant des outils modernes tels que **PlantUML**, **MariaDB** et **DBeaver**.

---

## 🎯 Objectifs pédagogiques
- Comprendre les différentes étapes de la conception d’une base de données :
  - **Modélisation conceptuelle (MCD)**
  - **Modélisation logique (MLD)**
  - **Modélisation physique (MPD)**
- Découvrir l’outil **PlantUML** pour la représentation graphique.
- Utiliser un **SGBD MariaDB** pour créer, tester et manipuler des données.
- Mettre en pratique les notions de **clés primaires**, **clés étrangères**, **cardinalités**, et **contraintes d’intégrité**.

---

## 🧱 Structure du projet
Le projet se décompose en plusieurs étapes :

### 1. Modélisation conceptuelle (MCD)
- Identification des **entités** : pays, villes, parcs, constructeurs, rollercoasters, éléments, fréquentations, etc.
- Définition des **attributs** et des **types de données**.
- Création des **relations** et des **cardinalités** via un diagramme UML avec **PlantUML**.

### 2. Modélisation logique (MLD)
- Transformation du MCD en **schéma relationnel**.
- Création de **tables associatives** pour les relations `many-to-many`.
- Définition des **clés primaires** et **clés étrangères**.

### 3. Modélisation physique (MPD)
- Implémentation du schéma dans **MariaDB** :
  - Création des tables avec `CREATE TABLE`
  - Définition des relations et des contraintes (`ON DELETE`, `ON UPDATE`)
  - Insertion des données avec `INSERT INTO`

### 4. Visualisation et tests
- Connexion à la base via **DBeaver** pour afficher le **diagramme entité-relation (ER)**.
- Vérification du bon fonctionnement du modèle à travers des **requêtes SQL**.

---

## 🧩 Technologies et outils utilisés
| Outil | Utilisation |
|-------|--------------|
| **PlantUML** | Conception des diagrammes UML (MCD et MLD) |
| **Visual Studio Code** | Rédaction du code PlantUML et SQL |
| **MariaDB / MySQL** | Système de gestion de base de données |
| **DBeaver** | Visualisation graphique du schéma relationnel |
| **Linux Terminal** | Connexion et exécution des requêtes SQL |

---

## ⚙️ Installation et exécution
1. **Installer MariaDB ou MySQL** :
   ```bash
   sudo apt update
   sudo apt install mysql-client
