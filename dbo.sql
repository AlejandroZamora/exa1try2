/*
 Navicat Premium Data Transfer

 Source Server         : SQLServer
 Source Server Type    : SQL Server
 Source Server Version : 15002104
 Source Host           : localhost:1433
 Source Catalog        : dbexamen
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002104
 File Encoding         : 65001

 Date: 22/03/2024 19:24:00
*/


-- ----------------------------
-- Table structure for Categories
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type IN ('U'))
	DROP TABLE [dbo].[Categories]
GO

CREATE TABLE [dbo].[Categories] (
  [CategoryId] int  IDENTITY(1,1) NOT NULL,
  [CategoryName] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Description] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [picture] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Categories] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Products
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type IN ('U'))
	DROP TABLE [dbo].[Products]
GO

CREATE TABLE [dbo].[Products] (
  [ProductId] int  IDENTITY(1,1) NOT NULL,
  [ProductName] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SupplierId] int  NULL,
  [CategoryId] int  NULL,
  [QuantityPerUnit] int  NULL,
  [UnitPrice] decimal(9,2)  NULL,
  [UnitsInStock] int  NULL,
  [UnitsOnOrder] int  NULL,
  [ReorderLevel] int  NULL,
  [Discounted] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Products] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Suppliers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Suppliers]') AND type IN ('U'))
	DROP TABLE [dbo].[Suppliers]
GO

CREATE TABLE [dbo].[Suppliers] (
  [SupplierId] int  IDENTITY(1,1) NOT NULL,
  [CompanyName] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ContactName] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ContactTitle] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Address] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [City] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Region] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PostalCode] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Country] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Phone] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Fax] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [HomePage] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Suppliers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Auto increment value for Categories
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Categories]', RESEED, 12)
GO


-- ----------------------------
-- Primary Key structure for table Categories
-- ----------------------------
ALTER TABLE [dbo].[Categories] ADD CONSTRAINT [PK__Categori__19093A0B3C5A754E] PRIMARY KEY CLUSTERED ([CategoryId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Products
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Products]', RESEED, 4)
GO


-- ----------------------------
-- Primary Key structure for table Products
-- ----------------------------
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [PK__Products__B40CC6CDA1E90F8F] PRIMARY KEY CLUSTERED ([ProductId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Suppliers
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Suppliers]', RESEED, 1002)
GO


-- ----------------------------
-- Primary Key structure for table Suppliers
-- ----------------------------
ALTER TABLE [dbo].[Suppliers] ADD CONSTRAINT [PK__Supplier__4BE666B49E7FB0B4] PRIMARY KEY CLUSTERED ([SupplierId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table Products
-- ----------------------------
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK__Products__Suppli__2B3F6F97] FOREIGN KEY ([SupplierId]) REFERENCES [dbo].[Suppliers] ([SupplierId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK__Products__Catego__2C3393D0] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([CategoryId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

