-- Créer la base de données Vente
CREATE DATABASE Vente;
GO

USE [Vente]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 2024-11-26 13:57:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[id_client] [int] NOT NULL,
	[nom_client] [varchar](100) NOT NULL,
	[telephone] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factures]    Script Date: 2024-11-26 13:57:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factures](
	[code_facture] [int] NOT NULL,
	[date_facture] [date] NOT NULL,
	[montant] [decimal](10, 2) NOT NULL,
	[id_client] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[code_facture] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Factures]  WITH CHECK ADD FOREIGN KEY([id_client])
REFERENCES [dbo].[Clients] ([id_client])
GO
