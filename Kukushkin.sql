USE [master]
GO
/****** Object:  Database [FurnitureFactoryKukushkin]    Script Date: 09.01.2022 0:15:55 ******/
CREATE DATABASE [FurnitureFactoryKukushkin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FurnitureFactoryKukushkin', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FurnitureFactoryKukushkin.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FurnitureFactoryKukushkin_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FurnitureFactoryKukushkin_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FurnitureFactoryKukushkin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET ARITHABORT OFF 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET  MULTI_USER 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET QUERY_STORE = OFF
GO
USE [FurnitureFactoryKukushkin]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 09.01.2022 0:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductTypeID] [int] NOT NULL,
	[Label] [nvarchar](50) NULL,
	[StorageID] [int] NOT NULL,
	[Count] [nvarchar](50) NULL,
	[CountInPackage] [nvarchar](50) NULL,
	[Price] [nvarchar](50) NULL,
	[Notes] [nvarchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 09.01.2022 0:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Lable] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 09.01.2022 0:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Label] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Storage]    Script Date: 09.01.2022 0:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Storage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Label] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Adress] [nvarchar](50) NULL,
 CONSTRAINT [PK_Storage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 09.01.2022 0:15:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NULL,
	[Pass] [nvarchar](50) NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [ProductTypeID], [Label], [StorageID], [Count], [CountInPackage], [Price], [Notes]) VALUES (1, 1, N'Кровать с подъёмным механизмом', 1, N'9', N'1', N'18000', NULL)
INSERT [dbo].[Product] ([ID], [ProductTypeID], [Label], [StorageID], [Count], [CountInPackage], [Price], [Notes]) VALUES (2, 3, N'Стол Талас', 2, N'15', N'1', N'6000', NULL)
INSERT [dbo].[Product] ([ID], [ProductTypeID], [Label], [StorageID], [Count], [CountInPackage], [Price], [Notes]) VALUES (3, 2, N'Шкаф-Купе Бруно', 3, N'5', N'1', N'31000', N'Цвет: Дикий дуб')
INSERT [dbo].[Product] ([ID], [ProductTypeID], [Label], [StorageID], [Count], [CountInPackage], [Price], [Notes]) VALUES (4, 4, N'Стул Белен', 4, N'12', N'4', N'20000', N'Цена за штуку - 5000')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([ID], [Lable]) VALUES (1, N'Изделие из ДВП')
INSERT [dbo].[ProductType] ([ID], [Lable]) VALUES (2, N'Изделие из ДСП')
INSERT [dbo].[ProductType] ([ID], [Lable]) VALUES (3, N'Изделие из ЛДСП')
INSERT [dbo].[ProductType] ([ID], [Lable]) VALUES (4, N'Изделие из МДФ')
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [Label]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([ID], [Label]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Storage] ON 

INSERT [dbo].[Storage] ([ID], [Label], [City], [Adress]) VALUES (1, N'Склад мебельной базы', N'Москва', N'ул. Твардовского, 8к1')
INSERT [dbo].[Storage] ([ID], [Label], [City], [Adress]) VALUES (2, N'Склад ТЦ Лопушок', N'Москва', N'ул. Барышиха, 39а')
INSERT [dbo].[Storage] ([ID], [Label], [City], [Adress]) VALUES (3, N'Cклад мебельного магазина', N'Красногорск', N'ул. Центральная , дом 3')
INSERT [dbo].[Storage] ([ID], [Label], [City], [Adress]) VALUES (4, N'Склад Леруа', N'Москва', N'ул. Новоорловская, д. 5Б
')
SET IDENTITY_INSERT [dbo].[Storage] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [Login], [Pass], [RoleID]) VALUES (1, N'User', N'User', 2)
INSERT [dbo].[User] ([ID], [Login], [Pass], [RoleID]) VALUES (2, N'Admin', N'Admin', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Storage] FOREIGN KEY([StorageID])
REFERENCES [dbo].[Storage] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Storage]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [FurnitureFactoryKukushkin] SET  READ_WRITE 
GO
