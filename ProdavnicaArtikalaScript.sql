USE [master]
GO
/****** Object:  Database [Prodavnica]    Script Date: 12/20/2023 12:25:57 PM ******/
CREATE DATABASE [Prodavnica] ON  PRIMARY 
( NAME = N'Prodavnica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Prodavnica.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Prodavnica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Prodavnica_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Prodavnica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Prodavnica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Prodavnica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Prodavnica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Prodavnica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Prodavnica] SET ARITHABORT OFF 
GO
ALTER DATABASE [Prodavnica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Prodavnica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Prodavnica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Prodavnica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Prodavnica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Prodavnica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Prodavnica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Prodavnica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Prodavnica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Prodavnica] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Prodavnica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Prodavnica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Prodavnica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Prodavnica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Prodavnica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Prodavnica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Prodavnica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Prodavnica] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Prodavnica] SET  MULTI_USER 
GO
ALTER DATABASE [Prodavnica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Prodavnica] SET DB_CHAINING OFF 
GO
USE [Prodavnica]
GO
/****** Object:  Table [dbo].[Artikl]    Script Date: 12/20/2023 12:25:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artikl](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [varchar](50) NOT NULL,
	[Kolicina] [varchar](50) NOT NULL,
	[Cena] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Artikl] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Artikl_Prodavnica]    Script Date: 12/20/2023 12:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artikl_Prodavnica](
	[id_artikla] [int] NOT NULL,
	[id_prodavnica] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prodavnica]    Script Date: 12/20/2023 12:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prodavnica](
	[ID] [int] IDENTITY(1,10) NOT NULL,
	[Naziv] [varchar](50) NOT NULL,
	[Adresa] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Prodavnica] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Artikl] ON 

INSERT [dbo].[Artikl] ([ID], [Naziv], [Kolicina], [Cena]) VALUES (1, N'Cips', N'100', N'60')
INSERT [dbo].[Artikl] ([ID], [Naziv], [Kolicina], [Cena]) VALUES (2, N'2', N'2', N'2')
INSERT [dbo].[Artikl] ([ID], [Naziv], [Kolicina], [Cena]) VALUES (3, N'1', N'1', N'1')
INSERT [dbo].[Artikl] ([ID], [Naziv], [Kolicina], [Cena]) VALUES (4, N'Smoki', N'100g', N'50')
INSERT [dbo].[Artikl] ([ID], [Naziv], [Kolicina], [Cena]) VALUES (5, N'nova', N'nova', N'nova')
INSERT [dbo].[Artikl] ([ID], [Naziv], [Kolicina], [Cena]) VALUES (6, N'123', N'123', N'123')
SET IDENTITY_INSERT [dbo].[Artikl] OFF
GO
INSERT [dbo].[Artikl_Prodavnica] ([id_artikla], [id_prodavnica]) VALUES (1, 1)
INSERT [dbo].[Artikl_Prodavnica] ([id_artikla], [id_prodavnica]) VALUES (2, 11)
INSERT [dbo].[Artikl_Prodavnica] ([id_artikla], [id_prodavnica]) VALUES (2, 21)
INSERT [dbo].[Artikl_Prodavnica] ([id_artikla], [id_prodavnica]) VALUES (1, 61)
INSERT [dbo].[Artikl_Prodavnica] ([id_artikla], [id_prodavnica]) VALUES (6, 81)
INSERT [dbo].[Artikl_Prodavnica] ([id_artikla], [id_prodavnica]) VALUES (4, 61)
INSERT [dbo].[Artikl_Prodavnica] ([id_artikla], [id_prodavnica]) VALUES (5, 71)
INSERT [dbo].[Artikl_Prodavnica] ([id_artikla], [id_prodavnica]) VALUES (4, 81)
GO
SET IDENTITY_INSERT [dbo].[Prodavnica] ON 

INSERT [dbo].[Prodavnica] ([ID], [Naziv], [Adresa]) VALUES (1, N'1', N'1')
INSERT [dbo].[Prodavnica] ([ID], [Naziv], [Adresa]) VALUES (11, N'1', N'1')
INSERT [dbo].[Prodavnica] ([ID], [Naziv], [Adresa]) VALUES (21, N'1', N'1')
INSERT [dbo].[Prodavnica] ([ID], [Naziv], [Adresa]) VALUES (31, N'ProdAJA', N'Zadruzna 1')
INSERT [dbo].[Prodavnica] ([ID], [Naziv], [Adresa]) VALUES (41, N'2', N'2')
INSERT [dbo].[Prodavnica] ([ID], [Naziv], [Adresa]) VALUES (51, N'1', N'1')
INSERT [dbo].[Prodavnica] ([ID], [Naziv], [Adresa]) VALUES (61, N'Maksi', N'123')
INSERT [dbo].[Prodavnica] ([ID], [Naziv], [Adresa]) VALUES (71, N'nova', N'nova')
INSERT [dbo].[Prodavnica] ([ID], [Naziv], [Adresa]) VALUES (81, N'Univer', N'123')
SET IDENTITY_INSERT [dbo].[Prodavnica] OFF
GO
ALTER TABLE [dbo].[Artikl_Prodavnica]  WITH CHECK ADD  CONSTRAINT [FK_Artikl_Prodavnica_Artikl] FOREIGN KEY([id_artikla])
REFERENCES [dbo].[Artikl] ([ID])
GO
ALTER TABLE [dbo].[Artikl_Prodavnica] CHECK CONSTRAINT [FK_Artikl_Prodavnica_Artikl]
GO
ALTER TABLE [dbo].[Artikl_Prodavnica]  WITH CHECK ADD  CONSTRAINT [FK_Artikl_Prodavnica_Prodavnica] FOREIGN KEY([id_prodavnica])
REFERENCES [dbo].[Prodavnica] ([ID])
GO
ALTER TABLE [dbo].[Artikl_Prodavnica] CHECK CONSTRAINT [FK_Artikl_Prodavnica_Prodavnica]
GO
/****** Object:  StoredProcedure [dbo].[dtArtikli]    Script Date: 12/20/2023 12:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[dtArtikli]
as
select ID, Naziv from Artikl
GO
/****** Object:  StoredProcedure [dbo].[dtProdavnice]    Script Date: 12/20/2023 12:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[dtProdavnice]
as
select ID, Naziv from Prodavnica
GO
/****** Object:  StoredProcedure [dbo].[InsertArtikla]    Script Date: 12/20/2023 12:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsertArtikla]
(
@Naziv varchar(50),
@Kolicina varchar(50),
@Cena varchar(50)
)
as
insert into Artikl values(@Naziv, @Kolicina, @Cena)
GO
/****** Object:  StoredProcedure [dbo].[InsertProdavnica]    Script Date: 12/20/2023 12:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[InsertProdavnica]
(
@Naziv varchar(50),
@Adresa varchar(50)
)
as
insert into Prodavnica values(@Naziv, @Adresa)
GO
/****** Object:  StoredProcedure [dbo].[povezi]    Script Date: 12/20/2023 12:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[povezi]
(
@id_artikla int,
@id_prodavnica int
)
as
insert into Artikl_Prodavnica values(@id_artikla, @id_prodavnica)
GO
/****** Object:  StoredProcedure [dbo].[prikaz]    Script Date: 12/20/2023 12:25:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[prikaz]
(
@id int
)
as
select a.Naziv from Prodavnica p, Artikl a, Artikl_Prodavnica ap
where p.ID = ap.id_prodavnica and ap.id_artikla = a.ID and p.ID = @id
GO
USE [master]
GO
ALTER DATABASE [Prodavnica] SET  READ_WRITE 
GO
