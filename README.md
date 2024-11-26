


#  Préparation aux Environnements Business Intelligence # 


 
## Introduction ##
   

## Compétences développées ##

Installation et configuration des outils : 

 - SQL Server 2019/2022.
 - SQL Server Management Studio (SSMS).
 - Visual Studio et Data Tools (SSIS, SSAS, SSRS).
 - Power BI et Git Bash.


Manipulation de bases de données

 - Création de la base de données **Vente** et des tables (**Clients** et **Factures**) sur SSMS.
 - Rédaction de scripts SQL pour gérer les données.
Importation de AdventureWorksDW2016.
Exécution de requêtes (ventes par région, produits listés, etc.).
Utilisation de Git et GitHub :
Création d’un dépôt, gestion de versions, et publication de livrables.

## Déroulement et livrables ##

Dépôt Git
│
├── Branche master
│   ├── clients.sql
│   └── factures.sql
│
└── Branche main
    └── README.md

## Challenges et solutions ##

1. Problème d'installation de SQL Server
L'un des premiers défis que j'ai rencontrés a été l'installation de SQL Server. En effet, durant l'installation, j'ai rencontré un problème lié à la certification. Ce souci a été résolu en cochant la case "Trust to review certificate", ce qui m'a permis de poursuivre l'installation sans autres complications.

2. Difficulté avec le processus de restauration de la base AdventureWorks
Une autre difficulté est survenue lors de l'importation de la base de données AdventureWorks. En tentant de restaurer la base, j'ai rencontré des erreurs. Après plusieurs essais, j'ai finalement résolu ce problème en déplaçant le fichier de sauvegarde .bak dans le dossier Backup de SQL Server, ce qui a permis à la restauration de se dérouler correctement.

## Conclusion ##


