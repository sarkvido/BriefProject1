


#  Préparation aux Environnements Business Intelligence # 


 
## Introduction ##

Dans le cadre du Brief Projet 1, Nous avions eu l'opportunité de nous familiariser avec les outils et environnements liés à la `Business Intelligence (MSBI)`, en particulier avec `SQL Server` et ses composants associés. Ce projet avait pour objectif de nous permettre de maîtriser l'installation et la configuration des outils MSBI, ainsi que de manipuler une base de données à travers des requêtes SQL et des processus de restauration.

Tout au long de ce projet, Nous avons acquis des compétences techniques essentielles, telles que l'installation de SQL Server 2019, la gestion des bases de données via `SQL Server Management Studio (SSMS)`, et l'importation de bases de données comme `AdventureWorks`. Nous avons également eu l'occasion d'explorer les outils d'analyse de données comme `Power BI`, de créer des tables, de réaliser des requêtes SQL et de manipuler des données en vue d'analyses précises.

Ce rapport présente en détail les différentes étapes du projet, les défis rencontrés lors de l'installation et de l'importation des données, ainsi que les solutions apportées pour surmonter ces obstacles.

## Compétences développées ##

Installation et configuration des outils : 

 - `SQL Server 2019`.
 - `SQL Server Management Studio (SSMS)`.
 - `Visual Studio` et `Data Tools (SSIS, SSAS, SSRS)`.
 - `Power BI` et `Git Bash`.


Manipulation de bases de données

- Création de la base de données `Vente` et des tables (`Clients` , `Factures`) sur SSMS.
  
   <img width="585" alt="diagVente" src="https://github.com/user-attachments/assets/4e06981b-f3e6-4af7-90ee-9ab5c116c23b">


 - Importation de AdventureWorksDW2016.
   * Exécution de requêtes (ventes par région, produits listés, etc.).

     ```bash
       USE AdventureWorksDW2016;

      --Affichage des montants de vente sur internet pour la France
     
      SELECT f.SalesAmount, d.SalesTerritoryCountry
      FROM FactInternetSales f
      INNER JOIN DimSalesTerritory d
      ON f.SalesTerritoryKey = d.SalesTerritoryKey
      WHERE d.SalesTerritoryCountry = 'France';
      ```
     <img width="167" alt="JOININGQUERY" src="https://github.com/user-attachments/assets/f264168f-b6b6-453d-99d3-071fc9751a7e">

     
     ```bash
     --Afficher la table DimProduct
     SELECT * FROM DimProduct;
     
     --Afficher la liste de tous les noms de produits de maniere unique 
     SELECT DISTINCT EnglishProductName FROM DimProduct;
       ```
    <img width="529" alt="QUERYDIMPRODUCT" src="https://github.com/user-attachments/assets/274df348-9832-4b3e-b42e-312fecb2b4db">

     <img width="138" alt="UNIKPRODUCTNAME" src="https://github.com/user-attachments/assets/c940a71b-7bd2-4d83-a5c2-ad7e0139df4b">


## Déroulement et livrables ##

### Explication de la structure de mon dépôt git :

1. **Branche `master`** :
   - Contient les fichiers SQL :
     - `AdvWorkQuery.sql` qui contient les requêtes
     - `VenteV1.sql` qui crée la base de données `Vente` et ses tables `Clients` et `Factures`

2. **Branche `main`** :
   - Contient le fichier `README.md`.

## Challenges et solutions ##

### Problème d'installation de SQL Server ### 
L'un des premiers défis que j'ai rencontrés a été l'installation de SQL Server. En effet, durant l'installation, j'ai rencontré un problème lié à la certification. Ce souci a été résolu en cochant la case **"Trust to review certificate"**, ce qui m'a permis de poursuivre l'installation sans autres complications.

###  Difficulté avec le processus de restauration de la base AdventureWorksDW2016 ### 
Une autre difficulté est survenue lors de l'importation de la base de données `AdventureWorksDW2016` . En tentant de restaurer la base, j'ai rencontré des erreurs. Après plusieurs essais, j'ai finalement résolu ce problème en déplaçant le fichier de sauvegarde `.bak` dans le dossier Backup de SQL Server, ce qui a permis à la restauration de se dérouler correctement.

## Conclusion ##


