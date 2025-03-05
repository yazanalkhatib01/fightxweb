
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/05/2025 23:52:05
-- Generated from EDMX file: E:\desktop old\fightxweb\fightxweb\DAL\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [dbMyOnlineShopping];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__tbl_cart__produc__36B12243]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tbl_Cart] DROP CONSTRAINT [FK__tbl_cart__produc__36B12243];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_produ__Categ__286302EC]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tbl_Product] DROP CONSTRAINT [FK__tbl_produ__Categ__286302EC];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_shipp__Membe__30F848ED]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tbl_ShippingDetails] DROP CONSTRAINT [FK__tbl_shipp__Membe__30F848ED];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Tbl_Cart]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbl_Cart];
GO
IF OBJECT_ID(N'[dbo].[Tbl_CartStatus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbl_CartStatus];
GO
IF OBJECT_ID(N'[dbo].[Tbl_Category]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbl_Category];
GO
IF OBJECT_ID(N'[dbo].[Tbl_MemberRole]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbl_MemberRole];
GO
IF OBJECT_ID(N'[dbo].[Tbl_Members]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbl_Members];
GO
IF OBJECT_ID(N'[dbo].[Tbl_Product]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbl_Product];
GO
IF OBJECT_ID(N'[dbo].[Tbl_Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbl_Roles];
GO
IF OBJECT_ID(N'[dbo].[Tbl_ShippingDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbl_ShippingDetails];
GO
IF OBJECT_ID(N'[dbo].[Tbl_SlideImage]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tbl_SlideImage];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Tbl_Cart'
CREATE TABLE [dbo].[Tbl_Cart] (
    [cartID] int IDENTITY(1,1) NOT NULL,
    [productID] int  NULL,
    [MemberID] int  NULL,
    [CartStatusID] int  NULL
);
GO

-- Creating table 'Tbl_CartStatus'
CREATE TABLE [dbo].[Tbl_CartStatus] (
    [cartStatusID] int IDENTITY(1,1) NOT NULL,
    [cartStatus] varchar(500)  NULL
);
GO

-- Creating table 'Tbl_Category'
CREATE TABLE [dbo].[Tbl_Category] (
    [categoryID] int IDENTITY(1,1) NOT NULL,
    [categoryName] varchar(500)  NULL,
    [IsActive] bit  NULL,
    [IsDelete] bit  NULL
);
GO

-- Creating table 'Tbl_MemberRole'
CREATE TABLE [dbo].[Tbl_MemberRole] (
    [MemberRoleID] int IDENTITY(1,1) NOT NULL,
    [memberID] int  NULL,
    [RoleID] int  NULL
);
GO

-- Creating table 'Tbl_Members'
CREATE TABLE [dbo].[Tbl_Members] (
    [MemberID] int IDENTITY(1,1) NOT NULL,
    [FirstName] varchar(200)  NULL,
    [LastName] varchar(200)  NULL,
    [EmailID] varchar(200)  NULL,
    [Password] varchar(500)  NULL,
    [IsActive] bit  NULL,
    [IsDelete] bit  NULL,
    [CreatedOn] datetime  NULL,
    [ModifiedOn] datetime  NULL
);
GO

-- Creating table 'Tbl_Product'
CREATE TABLE [dbo].[Tbl_Product] (
    [productID] int IDENTITY(1,1) NOT NULL,
    [productName] varchar(500)  NULL,
    [CategoryID] int  NULL,
    [IsActive] bit  NULL,
    [IsDelete] bit  NULL,
    [CreateDate] datetime  NULL,
    [ModifiedDate] datetime  NULL,
    [Description] varchar(500)  NULL,
    [productImage] varchar(max)  NULL,
    [isFeatured] bit  NULL,
    [Quantity] int  NULL,
    [Price] decimal(18,0)  NULL
);
GO

-- Creating table 'Tbl_Roles'
CREATE TABLE [dbo].[Tbl_Roles] (
    [roleID] int IDENTITY(1,1) NOT NULL,
    [RoleName] varchar(200)  NULL
);
GO

-- Creating table 'Tbl_ShippingDetails'
CREATE TABLE [dbo].[Tbl_ShippingDetails] (
    [shippingDetailID] int IDENTITY(1,1) NOT NULL,
    [MemberID] int  NULL,
    [Address] varchar(500)  NULL,
    [City] varchar(500)  NULL,
    [State] varchar(500)  NULL,
    [Country] varchar(50)  NULL,
    [ZipCode] varchar(50)  NULL,
    [OrderID] int  NULL,
    [AmountPaid] decimal(18,0)  NULL,
    [PaymentType] varchar(50)  NULL
);
GO

-- Creating table 'Tbl_SlideImage'
CREATE TABLE [dbo].[Tbl_SlideImage] (
    [SlideID] int IDENTITY(1,1) NOT NULL,
    [SlideTitle] varchar(500)  NULL,
    [SlideImage] varchar(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [cartID] in table 'Tbl_Cart'
ALTER TABLE [dbo].[Tbl_Cart]
ADD CONSTRAINT [PK_Tbl_Cart]
    PRIMARY KEY CLUSTERED ([cartID] ASC);
GO

-- Creating primary key on [cartStatusID] in table 'Tbl_CartStatus'
ALTER TABLE [dbo].[Tbl_CartStatus]
ADD CONSTRAINT [PK_Tbl_CartStatus]
    PRIMARY KEY CLUSTERED ([cartStatusID] ASC);
GO

-- Creating primary key on [categoryID] in table 'Tbl_Category'
ALTER TABLE [dbo].[Tbl_Category]
ADD CONSTRAINT [PK_Tbl_Category]
    PRIMARY KEY CLUSTERED ([categoryID] ASC);
GO

-- Creating primary key on [MemberRoleID] in table 'Tbl_MemberRole'
ALTER TABLE [dbo].[Tbl_MemberRole]
ADD CONSTRAINT [PK_Tbl_MemberRole]
    PRIMARY KEY CLUSTERED ([MemberRoleID] ASC);
GO

-- Creating primary key on [MemberID] in table 'Tbl_Members'
ALTER TABLE [dbo].[Tbl_Members]
ADD CONSTRAINT [PK_Tbl_Members]
    PRIMARY KEY CLUSTERED ([MemberID] ASC);
GO

-- Creating primary key on [productID] in table 'Tbl_Product'
ALTER TABLE [dbo].[Tbl_Product]
ADD CONSTRAINT [PK_Tbl_Product]
    PRIMARY KEY CLUSTERED ([productID] ASC);
GO

-- Creating primary key on [roleID] in table 'Tbl_Roles'
ALTER TABLE [dbo].[Tbl_Roles]
ADD CONSTRAINT [PK_Tbl_Roles]
    PRIMARY KEY CLUSTERED ([roleID] ASC);
GO

-- Creating primary key on [shippingDetailID] in table 'Tbl_ShippingDetails'
ALTER TABLE [dbo].[Tbl_ShippingDetails]
ADD CONSTRAINT [PK_Tbl_ShippingDetails]
    PRIMARY KEY CLUSTERED ([shippingDetailID] ASC);
GO

-- Creating primary key on [SlideID] in table 'Tbl_SlideImage'
ALTER TABLE [dbo].[Tbl_SlideImage]
ADD CONSTRAINT [PK_Tbl_SlideImage]
    PRIMARY KEY CLUSTERED ([SlideID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [productID] in table 'Tbl_Cart'
ALTER TABLE [dbo].[Tbl_Cart]
ADD CONSTRAINT [FK__tbl_cart__produc__36B12243]
    FOREIGN KEY ([productID])
    REFERENCES [dbo].[Tbl_Product]
        ([productID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tbl_cart__produc__36B12243'
CREATE INDEX [IX_FK__tbl_cart__produc__36B12243]
ON [dbo].[Tbl_Cart]
    ([productID]);
GO

-- Creating foreign key on [CategoryID] in table 'Tbl_Product'
ALTER TABLE [dbo].[Tbl_Product]
ADD CONSTRAINT [FK__tbl_produ__Categ__286302EC]
    FOREIGN KEY ([CategoryID])
    REFERENCES [dbo].[Tbl_Category]
        ([categoryID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tbl_produ__Categ__286302EC'
CREATE INDEX [IX_FK__tbl_produ__Categ__286302EC]
ON [dbo].[Tbl_Product]
    ([CategoryID]);
GO

-- Creating foreign key on [MemberID] in table 'Tbl_ShippingDetails'
ALTER TABLE [dbo].[Tbl_ShippingDetails]
ADD CONSTRAINT [FK__tbl_shipp__Membe__30F848ED]
    FOREIGN KEY ([MemberID])
    REFERENCES [dbo].[Tbl_Members]
        ([MemberID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tbl_shipp__Membe__30F848ED'
CREATE INDEX [IX_FK__tbl_shipp__Membe__30F848ED]
ON [dbo].[Tbl_ShippingDetails]
    ([MemberID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------