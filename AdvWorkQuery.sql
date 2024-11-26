
USE AdventureWorksDW2016;

--Affichage des montants de vente sur internet pour la France
SELECT f.SalesAmount, d.SalesTerritoryCountry
FROM FactInternetSales f
INNER JOIN DimSalesTerritory d
ON f.SalesTerritoryKey = d.SalesTerritoryKey
WHERE d.SalesTerritoryCountry = 'France';

--Afficher la table DimProduct
SELECT * FROM DimProduct;

--Afficher la liste des tous les noms de produits de maniere unique 
SELECT DISTINCT EnglishProductName FROM DimProduct;


