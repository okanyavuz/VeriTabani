USE [master]
GO
/****** Object:  Database [Marketler]    Script Date: 2.12.2020 23:06:48 ******/
CREATE DATABASE [Marketler]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Marketler', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Marketler.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Marketler_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Marketler_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Marketler] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Marketler].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Marketler] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Marketler] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Marketler] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Marketler] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Marketler] SET ARITHABORT OFF 
GO
ALTER DATABASE [Marketler] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Marketler] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Marketler] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Marketler] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Marketler] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Marketler] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Marketler] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Marketler] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Marketler] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Marketler] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Marketler] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Marketler] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Marketler] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Marketler] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Marketler] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Marketler] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Marketler] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Marketler] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Marketler] SET  MULTI_USER 
GO
ALTER DATABASE [Marketler] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Marketler] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Marketler] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Marketler] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Marketler] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Marketler] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Marketler] SET QUERY_STORE = OFF
GO
USE [Marketler]
GO
/****** Object:  Table [dbo].[marketsehir]    Script Date: 2.12.2020 23:06:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marketsehir](
	[Id] [int] NOT NULL,
	[Market] [varchar](20) NULL,
	[Sehir] [varchar](20) NULL,
	[Market_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[musteribilgi]    Script Date: 2.12.2020 23:06:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[musteribilgi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Musteri] [varchar](20) NULL,
	[Telefon] [char](10) NULL,
	[TC] [char](11) NOT NULL,
	[Market_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[musterisiparis]    Script Date: 2.12.2020 23:06:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[musterisiparis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Market] [varchar](20) NULL,
	[Musteri] [varchar](40) NULL,
	[Siparis] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subemarket]    Script Date: 2.12.2020 23:06:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subemarket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sube] [varchar](20) NULL,
	[Market] [varchar](20) NULL,
	[Market_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[marketsehir] ([Id], [Market], [Sehir], [Market_Id]) VALUES (1, N'A101', N'İstanbul', 1)
INSERT [dbo].[marketsehir] ([Id], [Market], [Sehir], [Market_Id]) VALUES (2, N'A101', N'Ankara', 1)
INSERT [dbo].[marketsehir] ([Id], [Market], [Sehir], [Market_Id]) VALUES (3, N'A101', N'İzmir', 1)
INSERT [dbo].[marketsehir] ([Id], [Market], [Sehir], [Market_Id]) VALUES (4, N'Migros', N'İstanbul', 2)
INSERT [dbo].[marketsehir] ([Id], [Market], [Sehir], [Market_Id]) VALUES (5, N'Migros', N'Ankara', 2)
INSERT [dbo].[marketsehir] ([Id], [Market], [Sehir], [Market_Id]) VALUES (6, N'Migros', N'İzmir', 2)
INSERT [dbo].[marketsehir] ([Id], [Market], [Sehir], [Market_Id]) VALUES (7, N'Bim', N'İstanbul', 3)
INSERT [dbo].[marketsehir] ([Id], [Market], [Sehir], [Market_Id]) VALUES (8, N'Bim', N'Ankara', 3)
INSERT [dbo].[marketsehir] ([Id], [Market], [Sehir], [Market_Id]) VALUES (9, N'Bim', N'İzmir', 3)
GO
SET IDENTITY_INSERT [dbo].[musteribilgi] ON 

INSERT [dbo].[musteribilgi] ([Id], [Musteri], [Telefon], [TC], [Market_Id]) VALUES (1, N'Altay Bayındır', N'5395894789', N'12345678923', 1)
INSERT [dbo].[musteribilgi] ([Id], [Musteri], [Telefon], [TC], [Market_Id]) VALUES (2, N'Emre Belözoğlu', N'5381234578', N'45678912457', 1)
INSERT [dbo].[musteribilgi] ([Id], [Musteri], [Telefon], [TC], [Market_Id]) VALUES (3, N'Ali Koç', N'5475896352', N'78947869852', 1)
INSERT [dbo].[musteribilgi] ([Id], [Musteri], [Telefon], [TC], [Market_Id]) VALUES (4, N'Volkan Demirel', N'5354525869', N'25636525469', 1)
INSERT [dbo].[musteribilgi] ([Id], [Musteri], [Telefon], [TC], [Market_Id]) VALUES (5, N'Ozan Tufan', N'5361456958', N'45878969874', 2)
INSERT [dbo].[musteribilgi] ([Id], [Musteri], [Telefon], [TC], [Market_Id]) VALUES (6, N'Mert Hakan Yandaş', N'5485286985', N'36925814789', 2)
INSERT [dbo].[musteribilgi] ([Id], [Musteri], [Telefon], [TC], [Market_Id]) VALUES (7, N'Caner Erkin', N'5316580200', N'12545232145', 2)
INSERT [dbo].[musteribilgi] ([Id], [Musteri], [Telefon], [TC], [Market_Id]) VALUES (8, N'Gökhan Gönül', N'5420235685', N'56889635412', 2)
INSERT [dbo].[musteribilgi] ([Id], [Musteri], [Telefon], [TC], [Market_Id]) VALUES (9, N'Serdar Aziz', N'5462501387', N'45887469863', 3)
INSERT [dbo].[musteribilgi] ([Id], [Musteri], [Telefon], [TC], [Market_Id]) VALUES (10, N'Ferdi Kadıoğlu', N'5391450058', N'54125836947', 3)
INSERT [dbo].[musteribilgi] ([Id], [Musteri], [Telefon], [TC], [Market_Id]) VALUES (11, N'Sinan Gümüş', N'5424125698', N'23625421478', 3)
SET IDENTITY_INSERT [dbo].[musteribilgi] OFF
GO
SET IDENTITY_INSERT [dbo].[musterisiparis] ON 

INSERT [dbo].[musterisiparis] ([Id], [Market], [Musteri], [Siparis]) VALUES (1, N'A101', N'Altay Bayındır', N'1kg patlıcan, 10lu yumurta')
INSERT [dbo].[musterisiparis] ([Id], [Market], [Musteri], [Siparis]) VALUES (2, N'A101', N'Emre Belözoğlu', N'1kg erik, 1kg domates, 1kg salata')
INSERT [dbo].[musterisiparis] ([Id], [Market], [Musteri], [Siparis]) VALUES (3, N'A101', N'Ali Koç', N'Deterjan, sabun, tıraş bıçağı')
INSERT [dbo].[musterisiparis] ([Id], [Market], [Musteri], [Siparis]) VALUES (4, N'A101', N'Volkan Demirel', N'5kg un, 1kg tereyağı')
INSERT [dbo].[musterisiparis] ([Id], [Market], [Musteri], [Siparis]) VALUES (5, N'Migros', N'Ozan Tufan', N'1kg hamsi, 1kg istavrit')
INSERT [dbo].[musterisiparis] ([Id], [Market], [Musteri], [Siparis]) VALUES (6, N'Migros', N'Mert Hakan Yandaş', N'yarım kilo kıyma')
INSERT [dbo].[musterisiparis] ([Id], [Market], [Musteri], [Siparis]) VALUES (7, N'Migros', N'Caner Erkin', N'Bütün tavuk')
INSERT [dbo].[musterisiparis] ([Id], [Market], [Musteri], [Siparis]) VALUES (8, N'Migros', N'Gökhan Gönül', N'1kg fasulye, salça,')
INSERT [dbo].[musterisiparis] ([Id], [Market], [Musteri], [Siparis]) VALUES (9, N'Bim', N'Serdar Aziz', N'2kg patlıcan')
INSERT [dbo].[musterisiparis] ([Id], [Market], [Musteri], [Siparis]) VALUES (10, N'Bim', N'Ferdi Kadıoğlu', N'sabun, tıraş bıçağı')
INSERT [dbo].[musterisiparis] ([Id], [Market], [Musteri], [Siparis]) VALUES (11, N'Bim', N'Sinan Gümüş', N'1kg portal, 1kg mandalina')
SET IDENTITY_INSERT [dbo].[musterisiparis] OFF
GO
SET IDENTITY_INSERT [dbo].[subemarket] ON 

INSERT [dbo].[subemarket] ([Id], [Sube], [Market], [Market_Id]) VALUES (1, N'Kadıköy', N'A101', 1)
INSERT [dbo].[subemarket] ([Id], [Sube], [Market], [Market_Id]) VALUES (2, N'Akyurt', N'A101', 1)
INSERT [dbo].[subemarket] ([Id], [Sube], [Market], [Market_Id]) VALUES (3, N'Karşıyaka', N'A101', 1)
INSERT [dbo].[subemarket] ([Id], [Sube], [Market], [Market_Id]) VALUES (4, N'Ataşehir', N'Migros', 2)
INSERT [dbo].[subemarket] ([Id], [Sube], [Market], [Market_Id]) VALUES (5, N'Çankaya', N'Migros', 2)
INSERT [dbo].[subemarket] ([Id], [Sube], [Market], [Market_Id]) VALUES (6, N'Bornova', N'Migros', 2)
INSERT [dbo].[subemarket] ([Id], [Sube], [Market], [Market_Id]) VALUES (7, N'Beşiktaş', N'Bim', 3)
INSERT [dbo].[subemarket] ([Id], [Sube], [Market], [Market_Id]) VALUES (8, N'Beypazarı', N'Bim', 3)
INSERT [dbo].[subemarket] ([Id], [Sube], [Market], [Market_Id]) VALUES (9, N'Çeşme', N'Bim', 3)
SET IDENTITY_INSERT [dbo].[subemarket] OFF
GO
ALTER TABLE [dbo].[musteribilgi]  WITH CHECK ADD  CONSTRAINT [FK_market_musteri] FOREIGN KEY([Market_Id])
REFERENCES [dbo].[musterisiparis] ([Id])
GO
ALTER TABLE [dbo].[musteribilgi] CHECK CONSTRAINT [FK_market_musteri]
GO
ALTER TABLE [dbo].[subemarket]  WITH CHECK ADD  CONSTRAINT [FK_market_sehir] FOREIGN KEY([Market_Id])
REFERENCES [dbo].[marketsehir] ([Id])
GO
ALTER TABLE [dbo].[subemarket] CHECK CONSTRAINT [FK_market_sehir]
GO
USE [master]
GO
ALTER DATABASE [Marketler] SET  READ_WRITE 
GO
