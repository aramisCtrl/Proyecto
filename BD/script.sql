USE [master]
GO
/****** Object:  Database [bd_quiz]    Script Date: 04/12/2023 19:09:20 ******/
CREATE DATABASE [bd_quiz]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bd_quiz', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\bd_quiz.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bd_quiz_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\bd_quiz_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [bd_quiz] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bd_quiz].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bd_quiz] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bd_quiz] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bd_quiz] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bd_quiz] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bd_quiz] SET ARITHABORT OFF 
GO
ALTER DATABASE [bd_quiz] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bd_quiz] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bd_quiz] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bd_quiz] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bd_quiz] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bd_quiz] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bd_quiz] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bd_quiz] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bd_quiz] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bd_quiz] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bd_quiz] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bd_quiz] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bd_quiz] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bd_quiz] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bd_quiz] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bd_quiz] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bd_quiz] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bd_quiz] SET RECOVERY FULL 
GO
ALTER DATABASE [bd_quiz] SET  MULTI_USER 
GO
ALTER DATABASE [bd_quiz] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bd_quiz] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bd_quiz] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bd_quiz] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bd_quiz] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bd_quiz] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'bd_quiz', N'ON'
GO
ALTER DATABASE [bd_quiz] SET QUERY_STORE = ON
GO
ALTER DATABASE [bd_quiz] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [bd_quiz]
GO
/****** Object:  UserDefinedTableType [dbo].[IdListType]    Script Date: 04/12/2023 19:09:21 ******/
CREATE TYPE [dbo].[IdListType] AS TABLE(
	[Id] [int] NULL
)
GO
/****** Object:  Table [dbo].[avatares]    Script Date: 04/12/2023 19:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[avatares](
	[avat_id] [int] IDENTITY(1,1) NOT NULL,
	[avat_direccion] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[avat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[canciones]    Script Date: 04/12/2023 19:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[canciones](
	[canc_id] [int] IDENTITY(1,1) NOT NULL,
	[canc_direccion] [varchar](255) NOT NULL,
	[canc_portada_direccion] [varchar](255) NOT NULL,
	[canc_nombre] [varchar](255) NOT NULL,
	[canc_artista] [varchar](255) NOT NULL,
	[canc_cate_id] [int] NOT NULL,
	[canc_portada_blur_direccion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[canc_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[canciones_opciones]    Script Date: 04/12/2023 19:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[canciones_opciones](
	[caop_id] [int] IDENTITY(1,1) NOT NULL,
	[caop_canc_id] [int] NOT NULL,
	[caop_opci_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[caop_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorias]    Script Date: 04/12/2023 19:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorias](
	[cate_id] [int] IDENTITY(1,1) NOT NULL,
	[cate_descripcion] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[opciones]    Script Date: 04/12/2023 19:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[opciones](
	[opci_id] [int] IDENTITY(1,1) NOT NULL,
	[opci_descripcion] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[opci_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[puntajes]    Script Date: 04/12/2023 19:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[puntajes](
	[punt_id] [int] IDENTITY(1,1) NOT NULL,
	[punt_usua_id] [int] NOT NULL,
	[punt_puntaje] [int] NOT NULL,
	[punt_tiempo] [varchar](255) NOT NULL,
	[punt_cate_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[punt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 04/12/2023 19:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[usua_id] [int] IDENTITY(1,1) NOT NULL,
	[usua_nombre] [varchar](255) NOT NULL,
	[usua_contraseña] [varchar](255) NOT NULL,
	[usua_avat_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[usua_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[avatares] ON 

INSERT [dbo].[avatares] ([avat_id], [avat_direccion]) VALUES (1, N'\Imagenes\Avatares\avatar1.jpg')
INSERT [dbo].[avatares] ([avat_id], [avat_direccion]) VALUES (2, N'\Imagenes\Avatares\avatar2.jpg')
INSERT [dbo].[avatares] ([avat_id], [avat_direccion]) VALUES (3, N'\Imagenes\Avatares\avatar3.jpg')
INSERT [dbo].[avatares] ([avat_id], [avat_direccion]) VALUES (4, N'\Imagenes\Avatares\avatar4.jpg')
INSERT [dbo].[avatares] ([avat_id], [avat_direccion]) VALUES (5, N'\Imagenes\Avatares\avatar5.jpg')
INSERT [dbo].[avatares] ([avat_id], [avat_direccion]) VALUES (6, N'\Imagenes\Avatares\avatar6.jpg')
INSERT [dbo].[avatares] ([avat_id], [avat_direccion]) VALUES (7, N'\Imagenes\Avatares\avatar7.jpg')
INSERT [dbo].[avatares] ([avat_id], [avat_direccion]) VALUES (8, N'\Imagenes\Avatares\avatar8.jpg')
INSERT [dbo].[avatares] ([avat_id], [avat_direccion]) VALUES (9, N'\Imagenes\Avatares\avatar9.jpg')
INSERT [dbo].[avatares] ([avat_id], [avat_direccion]) VALUES (10, N'\Imagenes\Avatares\avatar10.jpg')
INSERT [dbo].[avatares] ([avat_id], [avat_direccion]) VALUES (11, N'\Imagenes\Avatares\avatar11.jpg')
INSERT [dbo].[avatares] ([avat_id], [avat_direccion]) VALUES (12, N'\Imagenes\Avatares\avatar12.jpg')
SET IDENTITY_INSERT [dbo].[avatares] OFF
GO
SET IDENTITY_INSERT [dbo].[canciones] ON 

INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (1, N'\Canciones\Pop\7 rings.wav', N'\Imagenes\Portadas\Pop\7 rings.jpg', N'7 rings', N'Ariana Grande', 1, N'\Imagenes\Portadas\Pop\7 rings_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (2, N'\Canciones\Pop\Animals.wav', N'\Imagenes\Portadas\Pop\Animals.jpg', N'Animals', N'Maroon 5', 1, N'\Imagenes\Portadas\Pop\Animals_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (3, N'\Canciones\Pop\As It Was.wav', N'\Imagenes\Portadas\Pop\As It Was.jpg', N'As It Was', N'Harry Styles', 1, N'\Imagenes\Portadas\Pop\As It Was_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (4, N'\Canciones\Pop\Attention.wav', N'\Imagenes\Portadas\Pop\Attention.jpg', N'Attention', N'Charlie Puth', 1, N'\Imagenes\Portadas\Pop\Attention_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (5, N'\Canciones\Pop\bad guy.wav', N'\Imagenes\Portadas\Pop\bad guy.jpg', N'bad guy', N'Billie Eilish', 1, N'\Imagenes\Portadas\Pop\bad guy_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (6, N'\Canciones\Pop\Believer.wav', N'\Imagenes\Portadas\Pop\Believer.jpg', N'Believer', N'Imagine Dragons', 1, N'\Imagenes\Portadas\Pop\Believer_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (7, N'\Canciones\Pop\Blinding Lights.wav', N'\Imagenes\Portadas\Pop\Blinding Lights.jpg', N'Blinding Lights', N'The Weeknd', 1, N'\Imagenes\Portadas\Pop\Blinding Lights_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (8, N'\Canciones\Pop\Crazy In Love (feat. Jay-Z).wav', N'\Imagenes\Portadas\Pop\Crazy In Love (feat. Jay-Z).jpg', N'Crazy In Love (feat. Jay-Z)', N'Beyoncé, JAY-Z', 1, N'\Imagenes\Portadas\Pop\Crazy In Love (feat. Jay-Z)_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (9, N'\Canciones\Pop\Dark Horse (feat. Juicy J).wav', N'\Imagenes\Portadas\Pop\Dark Horse (feat. Juicy J).jpg', N'Dark Horse (feat. Juicy J)', N'Katy Perry, Juicy J', 1, N'\Imagenes\Portadas\Pop\Dark Horse (feat. Juicy J)_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (10, N'\Canciones\Pop\Don''t Start Now.wav', N'\Imagenes\Portadas\Pop\Don''t Start Now.jpg', N'Don''t Start Now', N'Dua Lipa', 1, N'\Imagenes\Portadas\Pop\Don''t Start Now_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (11, N'\Canciones\Pop\good 4 you.wav', N'\Imagenes\Portadas\Pop\good 4 you.jpg', N'good 4 you', N'Olivia Rodrigo', 1, N'\Imagenes\Portadas\Pop\good 4 you_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (12, N'\Canciones\Pop\Poker Face.wav', N'\Imagenes\Portadas\Pop\Poker Face.jpg', N'Poker Face', N'Lady Gaga', 1, N'\Imagenes\Portadas\Pop\Poker Face_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (13, N'\Canciones\Pop\Same Old Love.wav', N'\Imagenes\Portadas\Pop\Same Old Love.jpg', N'Same Old Love', N'Selena Gomez', 1, N'\Imagenes\Portadas\Pop\Same Old Love_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (14, N'\Canciones\Pop\Say So.wav', N'\Imagenes\Portadas\Pop\Say So.jpg', N'Say So', N'Doja Cat', 1, N'\Imagenes\Portadas\Pop\Say So_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (15, N'\Canciones\Pop\Shake It Off.wav', N'\Imagenes\Portadas\Pop\Shake It Off.jpg', N'Shake It Off', N'Taylor Swift', 1, N'\Imagenes\Portadas\Pop\Shake It Off_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (16, N'\Canciones\Pop\Starships.wav', N'\Imagenes\Portadas\Pop\Starships.jpg', N'Starships', N'Nicki Minaj', 1, N'\Imagenes\Portadas\Pop\Starships_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (17, N'\Canciones\Pop\Summertime Sadness.wav', N'\Imagenes\Portadas\Pop\Summertime Sadness.jpg', N'Summertime Sadness', N'Lana Del Rey', 1, N'\Imagenes\Portadas\Pop\Summertime Sadness_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (18, N'\Canciones\Pop\This Is What You Came For.wav', N'\Imagenes\Portadas\Pop\This Is What You Came For.jpg', N'This Is What You Came For', N'Calvin Harris, Rihanna', 1, N'\Imagenes\Portadas\Pop\This Is What You Came For_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (19, N'\Canciones\Pop\Toxic.wav', N'\Imagenes\Portadas\Pop\Toxic.jpg', N'Toxic', N'Britney Spears', 1, N'\Imagenes\Portadas\Pop\Toxic_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (20, N'\Canciones\Pop\Uptown Funk (feat. Bruno Mars).wav', N'\Imagenes\Portadas\Pop\Uptown Funk (feat. Bruno Mars).jpg', N'Uptown Funk (feat. Bruno Mars)', N'Mark Ronson, Bruno Mars', 1, N'\Imagenes\Portadas\Pop\Uptown Funk (feat. Bruno Mars)_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (21, N'\Canciones\Rock\A Las Nueve.wav', N'\Imagenes\Portadas\Rock\A Las Nueve.jpg', N'A Las Nueve', N'No Te Va Gustar', 2, N'\Imagenes\Portadas\Rock\A Las Nueve_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (22, N'\Canciones\Rock\Back In Black.wav', N'\Imagenes\Portadas\Rock\Back In Black.jpg', N'Back In Black', N'AC/DC', 2, N'\Imagenes\Portadas\Rock\Back In Black_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (23, N'\Canciones\Rock\Beggin''.wav', N'\Imagenes\Portadas\Rock\Beggin''.jpg', N'Beggin''', N'Måneskin', 2, N'\Imagenes\Portadas\Rock\Beggin''_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (24, N'\Canciones\Rock\Bohemian Rhapsody.wav', N'\Imagenes\Portadas\Rock\Bohemian Rhapsody.jpg', N'Bohemian Rhapsody', N'Queen', 2, N'\Imagenes\Portadas\Rock\Bohemian Rhapsody_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (25, N'\Canciones\Rock\Creep.wav', N'\Imagenes\Portadas\Rock\Creep.jpg', N'Creep', N'Radiohead', 2, N'\Imagenes\Portadas\Rock\Creep_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (26, N'\Canciones\Rock\Crimen.wav', N'\Imagenes\Portadas\Rock\Crimen.jpg', N'Crimen', N'Gustavo Cerati', 2, N'\Imagenes\Portadas\Rock\Crimen_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (27, N'\Canciones\Rock\De Música Ligera.wav', N'\Imagenes\Portadas\Rock\De Música Ligera.jpg', N'De Música Ligera', N'Soda Stereo', 2, N'\Imagenes\Portadas\Rock\De Música Ligera_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (28, N'\Canciones\Rock\Dreams.wav', N'\Imagenes\Portadas\Rock\Dreams.jpg', N'Dreams', N'Fleetwood Mac', 2, N'\Imagenes\Portadas\Rock\Dreams_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (29, N'\Canciones\Rock\Flaca.wav', N'\Imagenes\Portadas\Rock\Flaca.jpg', N'Flaca', N'Andrés Calamaro', 2, N'\Imagenes\Portadas\Rock\Flaca_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (30, N'\Canciones\Rock\Highway to Hell.wav', N'\Imagenes\Portadas\Rock\Highway to Hell.jpg', N'Highway to Hell', N'AC/DC', 2, N'\Imagenes\Portadas\Rock\Highway to Hell_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (31, N'\Canciones\Rock\Jumpsuit.wav', N'\Imagenes\Portadas\Rock\Jumpsuit.jpg', N'Jumpsuit', N'Twenty One Pilots', 2, N'\Imagenes\Portadas\Rock\Jumpsuit_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (32, N'\Canciones\Rock\Lamento Boliviano.wav', N'\Imagenes\Portadas\Rock\Lamento Boliviano.jpg', N'Lamento Boliviano', N'Los Enanitos Verdes', 2, N'\Imagenes\Portadas\Rock\Lamento Boliviano_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (33, N'\Canciones\Rock\Loco (Tu Forma De Ser).wav', N'\Imagenes\Portadas\Rock\Loco (Tu Forma De Ser).jpg', N'Loco (Tu Forma De Ser)', N'Los Auténticos Decadentes', 2, N'\Imagenes\Portadas\Rock\Loco (Tu Forma De Ser)_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (34, N'\Canciones\Rock\Numb.wav', N'\Imagenes\Portadas\Rock\Numb.jpg', N'Numb', N'Linkin Park', 2, N'\Imagenes\Portadas\Rock\Numb_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (35, N'\Canciones\Rock\Pupilas Lejanas.wav', N'\Imagenes\Portadas\Rock\Pupilas Lejanas.jpg', N'Pupilas Lejanas', N'Los Pericos', 2, N'\Imagenes\Portadas\Rock\Pupilas Lejanas_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (36, N'\Canciones\Rock\Qué Ves.wav', N'\Imagenes\Portadas\Rock\Qué Ves.jpg', N'Qué Ves?', N'Divididos', 2, N'\Imagenes\Portadas\Rock\Qué Ves_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (37, N'\Canciones\Rock\Smells Like Teen Spirit.wav', N'\Imagenes\Portadas\Rock\Smells Like Teen Spirit.jpg', N'Smells Like Teen Spirit', N'Nirvana', 2, N'\Imagenes\Portadas\Rock\Smells Like Teen Spirit_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (38, N'\Canciones\Rock\Sweet Child O'' Mine.wav', N'\Imagenes\Portadas\Rock\Sweet Child O'' Mine.jpg', N'Sweet Child O'' Mine', N'Guns N'' Roses', 2, N'\Imagenes\Portadas\Rock\Sweet Child O'' Mine_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (39, N'\Canciones\Rock\Un Poco de Amor Francés.wav', N'\Imagenes\Portadas\Rock\Un Poco de Amor Francés.jpg', N'Un Poco de Amor Francés', N'Patricio Rey y sus Redonditos de Ricota', 2, N'\Imagenes\Portadas\Rock\Un Poco de Amor Francés_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (40, N'\Canciones\Rock\Vasos Vacíos.wav', N'\Imagenes\Portadas\Rock\Vasos Vacíos.jpg', N'Vasos Vacíos', N'Los Fabulosos Cadillacs', 2, N'\Imagenes\Portadas\Rock\Vasos Vacíos_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (41, N'\Canciones\Latino\Adrenalina (feat. Jennifer Lopez & Ricky Martin).wav', N'\Imagenes\Portadas\Latino\Adrenalina (feat. Jennifer Lopez & Ricky Martin).jpg', N'Adrenalina (feat. Jennifer Lopez & Ricky Martin)', N'Wisin, Jennifer Lopez, Ricky Martin', 3, N'\Imagenes\Portadas\Latino\Adrenalina (feat. Jennifer Lopez & Ricky Martin)_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (42, N'\Canciones\Latino\Amor A Primera Vista.wav', N'\Imagenes\Portadas\Latino\Amor A Primera Vista.jpg', N'Amor A Primera Vista', N'Los Ángeles Azules, Belinda, Lalo Ebratt, Horacio Palencia', 3, N'\Imagenes\Portadas\Latino\Amor A Primera Vista_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (43, N'\Canciones\Latino\Baila Conmigo (with Rauw Alejandro).wav', N'\Imagenes\Portadas\Latino\Baila Conmigo (with Rauw Alejandro).jpg', N'Baila Conmigo (with Rauw Alejandro)', N'Selena Gomez, Rauw Alejandro', 3, N'\Imagenes\Portadas\Latino\Baila Conmigo (with Rauw Alejandro)_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (44, N'\Canciones\Latino\Borro Cassette.wav', N'\Imagenes\Portadas\Latino\Borro Cassette.jpg', N'Borro Cassette', N'Maluma', 3, N'\Imagenes\Portadas\Latino\Borro Cassette_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (45, N'\Canciones\Latino\Calma - Remix.wav', N'\Imagenes\Portadas\Latino\Calma - Remix.jpg', N'Calma - Remix', N'Pedro Capó, Farruko', 3, N'\Imagenes\Portadas\Latino\Calma - Remix_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (46, N'\Canciones\Latino\Darte un Beso.wav', N'\Imagenes\Portadas\Latino\Darte un Beso.jpg', N'Darte un Beso', N'Romeo Santos', 3, N'\Imagenes\Portadas\Latino\Darte un Beso_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (47, N'\Canciones\Latino\Despacito.wav', N'\Imagenes\Portadas\Latino\Despacito.jpg', N'Despacito', N'Luis Fonsi, Daddy Yankee', 3, N'\Imagenes\Portadas\Latino\Despacito_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (48, N'\Canciones\Latino\Don.wav', N'\Imagenes\Portadas\Latino\Don.jpg', N'Don', N'Miranda!', 3, N'\Imagenes\Portadas\Latino\Don_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (49, N'\Canciones\Latino\Échame La Culpa.wav', N'\Imagenes\Portadas\Latino\Échame La Culpa.jpg', N'Échame La Culpa', N'Luis Fonsi, Demi Lovato', 3, N'\Imagenes\Portadas\Latino\Échame La Culpa_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (50, N'\Canciones\Latino\Gasolina.wav', N'\Imagenes\Portadas\Latino\Gasolina.jpg', N'Gasolina', N'Daddy Yankee', 3, N'\Imagenes\Portadas\Latino\Gasolina_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (51, N'\Canciones\Latino\La Gozadera (feat. Marc Anthony).wav', N'\Imagenes\Portadas\Latino\La Gozadera (feat. Marc Anthony).jpg', N'La Gozadera (feat. Marc Anthony)', N'Gente De Zona, Marc Anthony', 3, N'\Imagenes\Portadas\Latino\La Gozadera (feat. Marc Anthony)_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (52, N'\Canciones\Latino\La Mordidita (feat. Yotuel).wav', N'\Imagenes\Portadas\Latino\La Mordidita (feat. Yotuel).jpg', N'La Mordidita (feat. Yotuel)', N'Ricky Martin, Yotuel', 3, N'\Imagenes\Portadas\Latino\La Mordidita (feat. Yotuel)_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (53, N'\Canciones\Latino\Limón y Sal.wav', N'\Imagenes\Portadas\Latino\Limón y Sal.jpg', N'Limón y Sal', N'Julieta Venegas', 3, N'\Imagenes\Portadas\Latino\Limón y Sal_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (54, N'\Canciones\Latino\Loba.wav', N'\Imagenes\Portadas\Latino\Loba.jpg', N'Loba', N'Shakira', 3, N'\Imagenes\Portadas\Latino\Loba_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (55, N'\Canciones\Latino\Los Del Espacio.wav', N'\Imagenes\Portadas\Latino\Los Del Espacio.jpg', N'Los Del Espacio', N'LIT killah, Tiago PZK, Maria Becerra, Duki, Emilia, Rusherking, Big One, FMK', 3, N'\Imagenes\Portadas\Latino\Los Del Espacio_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (56, N'\Canciones\Latino\Reggaetón Lento (Bailemos).wav', N'\Imagenes\Portadas\Latino\Reggaetón Lento (Bailemos).jpg', N'Reggaetón Lento (Bailemos)', N'CNCO', 3, N'\Imagenes\Portadas\Latino\Reggaetón Lento (Bailemos)_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (57, N'\Canciones\Latino\Sin Pijama.wav', N'\Imagenes\Portadas\Latino\Sin Pijama.jpg', N'Sin Pijama', N'Becky G, NATTI NATASHA', 3, N'\Imagenes\Portadas\Latino\Sin Pijama_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (58, N'\Canciones\Latino\Taki Taki (with Selena Gomez, Ozuna & Cardi B).wav', N'\Imagenes\Portadas\Latino\Taki Taki (with Selena Gomez, Ozuna & Cardi B).jpg', N'Taki Taki (with Selena Gomez, Ozuna & Cardi B)', N'DJ Snake, Selena Gomez, Ozuna, Cardi B', 3, N'\Imagenes\Portadas\Latino\Taki Taki (with Selena Gomez, Ozuna & Cardi B)_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (59, N'\Canciones\Latino\Tusa.wav', N'\Imagenes\Portadas\Latino\Tusa.jpg', N'Tusa', N'KAROL G, Nicki Minaj', 3, N'\Imagenes\Portadas\Latino\Tusa_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (60, N'\Canciones\Latino\Vive Tus Sueños.wav', N'\Imagenes\Portadas\Latino\Vive Tus Sueños.jpg', N'Vive Tus Sueños', N'Raini Rodriguez', 3, N'\Imagenes\Portadas\Latino\Vive Tus Sueños_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (61, N'\Canciones\Rap\212.wav', N'\Imagenes\Portadas\Rap\212.jpg', N'212', N'Azealia Banks, Lazy Jay', 4, N'\Imagenes\Portadas\Rap\212_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (62, N'\Canciones\Rap\Anaconda.wav', N'\Imagenes\Portadas\Rap\Anaconda.jpg', N'Anaconda', N'Nicki Minaj', 4, N'\Imagenes\Portadas\Rap\Anaconda_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (63, N'\Canciones\Rap\Big Energy.wav', N'\Imagenes\Portadas\Rap\Big Energy.jpg', N'Big Energy', N'Latto', 4, N'\Imagenes\Portadas\Rap\Big Energy_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (64, N'\Canciones\Rap\Black Widow.wav', N'\Imagenes\Portadas\Rap\Black Widow.jpg', N'Black Widow', N'Iggy Azalea, Rita Ora', 4, N'\Imagenes\Portadas\Rap\Black Widow_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (65, N'\Canciones\Rap\Bodak Yellow.wav', N'\Imagenes\Portadas\Rap\Bodak Yellow.jpg', N'Bodak Yellow', N'Cardi B', 4, N'\Imagenes\Portadas\Rap\Bodak Yellow_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (66, N'\Canciones\Rap\Boss Bitch.wav', N'\Imagenes\Portadas\Rap\Boss Bitch.jpg', N'Boss Bitch', N'Doja Cat', 4, N'\Imagenes\Portadas\Rap\Boss Bitch_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (67, N'\Canciones\Rap\California Love.wav', N'\Imagenes\Portadas\Rap\California Love.jpg', N'California Love', N'2Pac, Roger, Dr. Dre', 4, N'\Imagenes\Portadas\Rap\California Love_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (68, N'\Canciones\Rap\Diablo.wav', N'\Imagenes\Portadas\Rap\Diablo.jpg', N'Diablo', N'Mac Miller', 4, N'\Imagenes\Portadas\Rap\Diablo_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (69, N'\Canciones\Rap\Dip (feat. Nicki Minaj).wav', N'\Imagenes\Portadas\Rap\Dip (feat. Nicki Minaj).jpg', N'Dip (feat. Nicki Minaj)', N'Tyga, Nicki Minaj', 4, N'\Imagenes\Portadas\Rap\Dip (feat. Nicki Minaj)_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (70, N'\Canciones\Rap\Fancy.wav', N'\Imagenes\Portadas\Rap\Fancy.jpg', N'Fancy', N'Iggy Azalea, Charli XCX', 4, N'\Imagenes\Portadas\Rap\Fancy_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (71, N'\Canciones\Rap\Gucci Flip Flops (feat. Lil Yachty).wav', N'\Imagenes\Portadas\Rap\Gucci Flip Flops (feat. Lil Yachty).jpg', N'Gucci Flip Flops (feat. Lil Yachty)', N'Bhad Bhabie, Lil Yachty', 4, N'\Imagenes\Portadas\Rap\Gucci Flip Flops (feat. Lil Yachty)_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (72, N'\Canciones\Rap\HUMBLE..wav', N'\Imagenes\Portadas\Rap\HUMBLE..jpg', N'HUMBLE.', N'Kendrick Lamar', 4, N'\Imagenes\Portadas\Rap\HUMBLE._blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (73, N'\Canciones\Rap\INDUSTRY BABY.wav', N'\Imagenes\Portadas\Rap\INDUSTRY BABY.jpg', N'INDUSTRY BABY', N'Lil Nas X, Jack Harlow', 4, N'\Imagenes\Portadas\Rap\INDUSTRY BABY_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (74, N'\Canciones\Rap\Juicy.wav', N'\Imagenes\Portadas\Rap\Juicy.jpg', N'Juicy', N'Doja Cat, Tyga', 4, N'\Imagenes\Portadas\Rap\Juicy_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (75, N'\Canciones\Rap\Munch (Feeling'' U).wav', N'\Imagenes\Portadas\Rap\Munch (Feeling'' U).jpg', N'Munch (Feeling'' U)', N'Ice Spice', 4, N'\Imagenes\Portadas\Rap\Munch (Feeling'' U)_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (76, N'\Canciones\Rap\No Role Modelz.wav', N'\Imagenes\Portadas\Rap\No Role Modelz.jpg', N'No Role Modelz', N'J. Cole', 4, N'\Imagenes\Portadas\Rap\No Role Modelz_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (77, N'\Canciones\Rap\Best Friend (feat. Doja Cat).wav', N'\Imagenes\Portadas\Rap\Best Friend (feat. Doja Cat).jpg', N'Best Friend (feat. Doja Cat)', N'Saweetie, Doja Cat', 4, N'\Imagenes\Portadas\Rap\Best Friend (feat. Doja Cat)_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (78, N'\Canciones\Rap\Thot Shit.wav', N'\Imagenes\Portadas\Rap\Thot Shit.jpg', N'Thot Shit', N'Megan Thee Stallion', 4, N'\Imagenes\Portadas\Rap\Thot Shit_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (79, N'\Canciones\Rap\WAP (feat. Megan Thee Stallion).wav', N'\Imagenes\Portadas\Rap\WAP (feat. Megan Thee Stallion).jpg', N'WAP (feat. Megan Thee Stallion)', N'Cardi B, Megan Thee Stallion', 4, N'\Imagenes\Portadas\Rap\WAP (feat. Megan Thee Stallion)_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (80, N'\Canciones\Rap\Without Me.wav', N'\Imagenes\Portadas\Rap\Without Me.jpg', N'Without Me', N'Eminem', 4, N'\Imagenes\Portadas\Rap\Without Me_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (81, N'\Canciones\Kpop\BANG BANG BANG.wav', N'\Imagenes\Portadas\Kpop\BANG BANG BANG.jpg', N'BANG BANG BANG', N'BIGBANG', 5, N'\Imagenes\Portadas\Kpop\BANG BANG BANG_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (82, N'\Canciones\Kpop\Black Mamba.wav', N'\Imagenes\Portadas\Kpop\Black Mamba.jpg', N'Black Mamba', N'aespa', 5, N'\Imagenes\Portadas\Kpop\Black Mamba_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (83, N'\Canciones\Kpop\BOOMBAYAH.wav', N'\Imagenes\Portadas\Kpop\BOOMBAYAH.jpg', N'BOOMBAYAH', N'BLACKPINK', 5, N'\Imagenes\Portadas\Kpop\BOOMBAYAH_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (84, N'\Canciones\Kpop\Burning Up (Fire).wav', N'\Imagenes\Portadas\Kpop\Burning Up (Fire).jpg', N'Burning Up (Fire)', N'BTS', 5, N'\Imagenes\Portadas\Kpop\Burning Up (Fire)_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (85, N'\Canciones\Kpop\CASE 143.wav', N'\Imagenes\Portadas\Kpop\CASE 143.jpg', N'CASE 143', N'Stray Kids', 5, N'\Imagenes\Portadas\Kpop\CASE 143_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (86, N'\Canciones\Kpop\DICE.wav', N'\Imagenes\Portadas\Kpop\DICE.jpg', N'DICE', N'NMIXX', 5, N'\Imagenes\Portadas\Kpop\DICE_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (87, N'\Canciones\Kpop\Drunk-Dazed.wav', N'\Imagenes\Portadas\Kpop\Drunk-Dazed.jpg', N'Drunk-Dazed', N'ENHYPEN', 5, N'\Imagenes\Portadas\Kpop\Drunk-Dazed_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (88, N'\Canciones\Kpop\FANCY.wav', N'\Imagenes\Portadas\Kpop\FANCY.jpg', N'FANCY', N'TWICE', 5, N'\Imagenes\Portadas\Kpop\FANCY_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (89, N'\Canciones\Kpop\Gangnam Style.wav', N'\Imagenes\Portadas\Kpop\Gangnam Style.jpg', N'Gangnam Style', N'PSY', 5, N'\Imagenes\Portadas\Kpop\Gangnam Style_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (90, N'\Canciones\Kpop\God''s Menu.wav', N'\Imagenes\Portadas\Kpop\God''s Menu.jpg', N'God''s Menu', N'Stray Kids', 5, N'\Imagenes\Portadas\Kpop\God''s Menu_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (91, N'\Canciones\Kpop\I Am The Best.wav', N'\Imagenes\Portadas\Kpop\I Am The Best.jpg', N'I Am The Best', N'2NE1', 5, N'\Imagenes\Portadas\Kpop\I Am The Best_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (92, N'\Canciones\Kpop\LOVE DIVE.wav', N'\Imagenes\Portadas\Kpop\LOVE DIVE.jpg', N'LOVE DIVE', N'IVE', 5, N'\Imagenes\Portadas\Kpop\LOVE DIVE_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (93, N'\Canciones\Kpop\Love Shot.wav', N'\Imagenes\Portadas\Kpop\Love Shot.jpg', N'Love Shot', N'EXO', 5, N'\Imagenes\Portadas\Kpop\Love Shot_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (94, N'\Canciones\Kpop\MIC Drop (feat. Desiigner) [Steve Aoki Remix].wav', N'\Imagenes\Portadas\Kpop\MIC Drop (feat. Desiigner) [Steve Aoki Remix].jpg', N'MIC Drop (feat. Desiigner) [Steve Aoki Remix]', N'BTS, Steve Aoki', 5, N'\Imagenes\Portadas\Kpop\MIC Drop (feat. Desiigner) [Steve Aoki Remix]_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (95, N'\Canciones\Kpop\MORE.wav', N'\Imagenes\Portadas\Kpop\MORE.jpg', N'MORE', N'K/DA, Madison Beer, (G)I-DLE, Lexie Liu, Jaira Burns, Seraphine, League of Legends', 5, N'\Imagenes\Portadas\Kpop\MORE_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (96, N'\Canciones\Kpop\Queencard.wav', N'\Imagenes\Portadas\Kpop\Queencard.jpg', N'Queencard', N'(G)I-DLE', 5, N'\Imagenes\Portadas\Kpop\Queencard_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (97, N'\Canciones\Kpop\Sugar Rush Ride.wav', N'\Imagenes\Portadas\Kpop\Sugar Rush Ride.jpg', N'Sugar Rush Ride', N'TOMORROW X TOGETHER', 5, N'\Imagenes\Portadas\Kpop\Sugar Rush Ride_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (98, N'\Canciones\Kpop\Super.wav', N'\Imagenes\Portadas\Kpop\Super.jpg', N'Super', N'SEVENTEEN', 5, N'\Imagenes\Portadas\Kpop\Super_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (99, N'\Canciones\Kpop\WA DA DA.wav', N'\Imagenes\Portadas\Kpop\WA DA DA.jpg', N'WA DA DA', N'Kep1er', 5, N'\Imagenes\Portadas\Kpop\WA DA DA_blur.jpg')
GO
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (100, N'\Canciones\Kpop\WANNABE.wav', N'\Imagenes\Portadas\Kpop\WANNABE.jpg', N'WANNABE', N'ITZY', 5, N'\Imagenes\Portadas\Kpop\WANNABE_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (101, N'\Canciones\Pop\Heart Attack.wav', N'\Imagenes\Portadas\Pop\Heart Attack.jpg', N'Heart Attack', N'Demi Lovato', 1, N'\Imagenes\Portadas\Pop\Heart Attack_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (102, N'\Canciones\Pop\Heather.wav', N'\Imagenes\Portadas\Pop\Heather.jpg', N'Heather', N'Conan Gray', 1, N'\Imagenes\Portadas\Pop\Heather_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (103, N'\Canciones\Pop\I Love It (feat. Charli XCX).wav', N'\Imagenes\Portadas\Pop\I Love It (feat. Charli XCX).jpg', N'I Love It (feat. Charli XCX)', N'Icona Pop, Charli XCX', 1, N'\Imagenes\Portadas\Pop\I Love It (feat. Charli XCX)_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (104, N'\Canciones\Pop\Sweet but Psycho.wav', N'\Imagenes\Portadas\Pop\Sweet but Psycho.jpg', N'Sweet but Psycho', N'Ava Max', 1, N'\Imagenes\Portadas\Pop\Sweet but Psycho_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (105, N'\Canciones\Pop\Thumbs.wav', N'\Imagenes\Portadas\Pop\Thumbs.jpg', N'Thumbs', N'Sabrina Carpenter', 1, N'\Imagenes\Portadas\Pop\Thumbs_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (106, N'\Canciones\Rock\Californication.wav', N'\Imagenes\Portadas\Rock\Californication.jpg', N'Californication', N'Red Hot Chili Peppers', 2, N'\Imagenes\Portadas\Rock\Californication_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (107, N'\Canciones\Rock\Comfortably Numb.wav', N'\Imagenes\Portadas\Rock\Comfortably Numb.jpg', N'Comfortably Numb', N'Pink Floyd', 2, N'\Imagenes\Portadas\Rock\Comfortably Numb_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (108, N'\Canciones\Rock\Hablando De La Libertad.wav', N'\Imagenes\Portadas\Rock\Hablando De La Libertad.jpg', N'Hablando De La Libertad', N'La Renga', 2, N'\Imagenes\Portadas\Rock\Hablando De La Libertad_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (109, N'\Canciones\Rock\Mariposa tecknicolor.wav', N'\Imagenes\Portadas\Rock\Mariposa tecknicolor.jpg', N'Mariposa tecknicolor', N'Fito Paez', 2, N'\Imagenes\Portadas\Rock\Mariposa tecknicolor_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (110, N'\Canciones\Rock\Money.wav', N'\Imagenes\Portadas\Rock\Money.jpg', N'Money', N'Pink Floyd', 2, N'\Imagenes\Portadas\Rock\Money_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (111, N'\Canciones\Latino\Ciudad Mágica.wav', N'\Imagenes\Portadas\Latino\Ciudad Mágica.jpg', N'Ciudad Mágica', N'Tan Bionica', 3, N'\Imagenes\Portadas\Latino\Ciudad Mágica_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (112, N'\Canciones\Latino\Dueles.wav', N'\Imagenes\Portadas\Latino\Dueles.jpg', N'Dueles', N'Jesse & Joy', 3, N'\Imagenes\Portadas\Latino\Dueles_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (113, N'\Canciones\Latino\La Camisa Negra.wav', N'\Imagenes\Portadas\Latino\La Camisa Negra.jpg', N'La Camisa Negra', N'Juanes', 3, N'\Imagenes\Portadas\Latino\La Camisa Negra_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (114, N'\Canciones\Latino\Loca (feat. El Cata).wav', N'\Imagenes\Portadas\Latino\Loca (feat. El Cata).jpg', N'Loca (feat. El Cata)', N'Shakira, El Cata', 3, N'\Imagenes\Portadas\Latino\Loca (feat. El Cata)_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (115, N'\Canciones\Latino\Piel Morena.wav', N'\Imagenes\Portadas\Latino\Piel Morena.jpg', N'Piel Morena', N'Thalia', 3, N'\Imagenes\Portadas\Latino\Piel Morena_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (116, N'\Canciones\Rap\Princess Diana (with Nicki Minaj).wav', N'\Imagenes\Portadas\Rap\Princess Diana (with Nicki Minaj).jpg', N'Princess Diana (with Nicki Minaj)', N'Ice Spice, Nicki Minaj', 4, N'\Imagenes\Portadas\Rap\Princess Diana (with Nicki Minaj)_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (117, N'\Canciones\Rap\Rap God.wav', N'\Imagenes\Portadas\Rap\Rap God.jpg', N'Rap God', N'Eminem', 4, N'\Imagenes\Portadas\Rap\Rap God_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (118, N'\Canciones\Rap\Sally Walker.wav', N'\Imagenes\Portadas\Rap\Sally Walker.jpg', N'Sally Walker', N'Iggy Azalea', 4, N'\Imagenes\Portadas\Rap\Sally Walker_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (119, N'\Canciones\Rap\Still D.R.E..wav', N'\Imagenes\Portadas\Rap\Still D.R.E..jpg', N'Still D.R.E.', N'Dr. Dre, Snoop Dogg', 4, N'\Imagenes\Portadas\Rap\Still D.R.E._blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (120, N'\Canciones\Rap\TROLLZ.wav', N'\Imagenes\Portadas\Rap\TROLLZ.jpg', N'TROLLZ', N'6ix9ine, Nicki Minaj', 4, N'\Imagenes\Portadas\Rap\TROLLZ_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (121, N'\Canciones\Kpop\Cupid - Twin Ver..wav', N'\Imagenes\Portadas\Kpop\Cupid - Twin Ver..jpg', N'Cupid - Twin Ver.', N'FIFTY FIFTY', 5, N'\Imagenes\Portadas\Kpop\Cupid - Twin Ver._blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (122, N'\Canciones\Kpop\Drama.wav', N'\Imagenes\Portadas\Kpop\Drama.jpg', N'Drama', N'aespa', 5, N'\Imagenes\Portadas\Kpop\Drama_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (123, N'\Canciones\Kpop\RUN2U.wav', N'\Imagenes\Portadas\Kpop\RUN2U.jpg', N'RUN2U', N'STAYC', 5, N'\Imagenes\Portadas\Kpop\RUN2U_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (124, N'\Canciones\Kpop\Secret Story of the Swan.wav', N'\Imagenes\Portadas\Kpop\Secret Story of the Swan.jpg', N'Secret Story of the Swan', N'IZ*ONE', 5, N'\Imagenes\Portadas\Kpop\Secret Story of the Swan_blur.jpg')
INSERT [dbo].[canciones] ([canc_id], [canc_direccion], [canc_portada_direccion], [canc_nombre], [canc_artista], [canc_cate_id], [canc_portada_blur_direccion]) VALUES (125, N'\Canciones\Kpop\How You Like That.wav', N'\Imagenes\Portadas\Kpop\How You Like That.jpg', N'How You Like That', N'BLACKPINK', 5, N'\Imagenes\Portadas\Kpop\How You Like That_blur.jpg')
SET IDENTITY_INSERT [dbo].[canciones] OFF
GO
SET IDENTITY_INSERT [dbo].[canciones_opciones] ON 

INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (1, 1, 1)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (2, 1, 2)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (3, 1, 3)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (4, 2, 4)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (5, 2, 5)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (6, 2, 6)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (7, 3, 7)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (8, 3, 8)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (9, 3, 9)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (10, 4, 10)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (11, 4, 11)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (12, 4, 12)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (13, 5, 13)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (14, 5, 14)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (15, 5, 15)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (16, 6, 16)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (17, 6, 17)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (18, 6, 18)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (19, 7, 19)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (20, 7, 20)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (21, 7, 21)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (22, 8, 22)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (23, 8, 23)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (24, 8, 24)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (25, 9, 25)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (26, 9, 26)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (27, 9, 27)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (28, 10, 28)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (29, 10, 29)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (30, 10, 30)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (31, 11, 31)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (32, 11, 32)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (33, 11, 33)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (34, 12, 34)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (35, 12, 35)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (36, 12, 36)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (37, 13, 37)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (38, 13, 38)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (39, 13, 39)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (40, 14, 40)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (41, 14, 41)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (42, 14, 42)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (43, 15, 43)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (44, 15, 44)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (45, 15, 45)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (46, 16, 46)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (47, 16, 47)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (48, 16, 48)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (49, 17, 49)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (50, 17, 50)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (51, 17, 51)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (52, 18, 52)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (53, 18, 53)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (54, 18, 54)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (55, 19, 55)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (56, 19, 56)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (57, 19, 57)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (58, 20, 58)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (59, 20, 59)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (60, 20, 60)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (61, 21, 61)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (62, 21, 62)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (63, 21, 63)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (64, 22, 64)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (65, 22, 65)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (66, 22, 66)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (67, 23, 67)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (68, 23, 68)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (69, 23, 69)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (70, 24, 70)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (71, 24, 71)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (72, 24, 72)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (73, 25, 73)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (74, 25, 74)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (75, 25, 75)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (76, 26, 76)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (77, 26, 77)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (78, 26, 78)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (79, 27, 79)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (80, 27, 80)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (81, 27, 81)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (82, 28, 82)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (83, 28, 83)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (84, 28, 84)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (85, 29, 85)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (86, 29, 86)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (87, 29, 87)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (88, 30, 88)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (89, 30, 89)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (90, 30, 90)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (91, 31, 91)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (92, 31, 92)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (93, 31, 93)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (94, 32, 94)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (95, 32, 95)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (96, 32, 96)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (97, 33, 97)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (98, 33, 98)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (99, 33, 99)
GO
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (100, 34, 100)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (101, 34, 101)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (102, 34, 102)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (103, 35, 103)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (104, 35, 104)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (105, 35, 105)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (106, 36, 106)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (107, 36, 107)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (108, 36, 108)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (109, 37, 109)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (110, 37, 110)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (111, 37, 111)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (112, 38, 112)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (113, 38, 113)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (114, 38, 114)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (115, 39, 115)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (116, 39, 116)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (117, 39, 117)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (118, 40, 118)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (119, 40, 119)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (120, 40, 120)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (121, 41, 121)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (122, 41, 122)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (123, 41, 123)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (124, 42, 124)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (125, 42, 125)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (126, 42, 126)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (127, 43, 127)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (128, 43, 128)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (129, 43, 129)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (130, 44, 130)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (131, 44, 131)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (132, 44, 132)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (133, 45, 133)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (134, 45, 134)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (135, 45, 135)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (136, 46, 136)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (137, 46, 137)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (138, 46, 138)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (139, 47, 139)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (140, 47, 140)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (141, 47, 141)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (142, 48, 142)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (143, 48, 143)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (144, 48, 144)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (145, 49, 145)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (146, 49, 146)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (147, 49, 147)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (148, 50, 148)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (149, 50, 149)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (150, 50, 150)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (151, 51, 151)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (152, 51, 152)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (153, 51, 153)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (154, 52, 154)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (155, 52, 155)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (156, 52, 156)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (157, 53, 157)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (158, 53, 158)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (159, 53, 159)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (160, 54, 160)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (161, 54, 161)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (162, 54, 162)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (163, 55, 163)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (164, 55, 164)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (165, 55, 165)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (166, 56, 166)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (167, 56, 167)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (168, 56, 168)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (169, 57, 169)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (170, 57, 170)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (171, 57, 171)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (172, 58, 172)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (173, 58, 173)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (174, 58, 174)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (175, 59, 175)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (176, 59, 176)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (177, 59, 177)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (178, 60, 178)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (179, 60, 179)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (180, 60, 180)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (181, 61, 181)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (182, 61, 182)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (183, 61, 183)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (184, 62, 184)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (185, 62, 185)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (186, 62, 186)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (187, 63, 187)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (188, 63, 188)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (189, 63, 189)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (190, 64, 190)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (191, 64, 191)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (192, 64, 192)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (193, 65, 193)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (194, 65, 194)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (195, 65, 195)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (196, 66, 196)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (197, 66, 197)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (198, 66, 198)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (199, 67, 199)
GO
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (200, 67, 200)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (201, 67, 201)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (202, 68, 202)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (203, 68, 203)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (204, 68, 204)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (205, 69, 205)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (206, 69, 206)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (207, 69, 207)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (208, 70, 208)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (209, 70, 209)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (210, 70, 210)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (211, 71, 211)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (212, 71, 212)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (213, 71, 213)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (214, 72, 214)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (215, 72, 215)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (216, 72, 216)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (217, 73, 217)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (218, 73, 218)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (219, 73, 219)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (220, 74, 220)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (221, 74, 221)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (222, 74, 222)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (223, 75, 223)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (224, 75, 224)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (225, 75, 225)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (226, 76, 226)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (227, 76, 227)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (228, 76, 228)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (229, 77, 229)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (230, 77, 230)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (231, 77, 231)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (232, 78, 232)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (233, 78, 233)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (234, 78, 234)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (235, 79, 235)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (236, 79, 236)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (237, 79, 237)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (238, 80, 238)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (239, 80, 239)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (240, 80, 240)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (241, 81, 241)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (242, 81, 242)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (243, 81, 243)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (244, 82, 244)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (245, 82, 245)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (246, 82, 246)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (247, 83, 247)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (248, 83, 248)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (249, 83, 249)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (250, 84, 250)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (251, 84, 251)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (252, 84, 252)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (253, 85, 253)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (254, 85, 254)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (255, 85, 255)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (256, 86, 256)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (257, 86, 257)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (258, 86, 258)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (259, 87, 259)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (260, 87, 260)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (261, 87, 261)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (262, 88, 262)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (263, 88, 263)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (264, 88, 264)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (265, 89, 265)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (266, 89, 266)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (267, 89, 267)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (268, 90, 268)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (269, 90, 269)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (270, 90, 270)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (271, 91, 271)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (272, 91, 272)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (273, 91, 273)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (274, 92, 274)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (275, 92, 275)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (276, 92, 276)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (277, 93, 277)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (278, 93, 278)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (279, 93, 279)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (280, 94, 280)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (281, 94, 281)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (282, 94, 282)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (283, 95, 283)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (284, 95, 284)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (285, 95, 285)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (286, 96, 286)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (287, 96, 287)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (288, 96, 288)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (289, 97, 289)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (290, 97, 290)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (291, 97, 291)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (292, 98, 292)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (293, 98, 293)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (294, 98, 294)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (295, 99, 295)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (296, 99, 296)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (297, 99, 297)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (298, 100, 298)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (299, 100, 299)
GO
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (300, 100, 300)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (301, 101, 301)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (302, 101, 302)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (303, 101, 303)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (304, 102, 304)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (305, 102, 305)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (306, 102, 306)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (307, 103, 307)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (308, 103, 308)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (309, 103, 309)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (310, 104, 310)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (311, 104, 311)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (312, 104, 312)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (313, 105, 313)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (314, 105, 314)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (315, 105, 315)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (316, 106, 316)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (317, 106, 317)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (318, 106, 318)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (319, 107, 319)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (320, 107, 320)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (321, 107, 321)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (322, 108, 322)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (323, 108, 323)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (324, 108, 324)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (325, 109, 325)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (326, 109, 326)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (327, 109, 327)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (328, 110, 328)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (329, 110, 329)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (330, 110, 330)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (331, 111, 331)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (332, 111, 332)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (333, 111, 333)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (334, 112, 334)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (335, 112, 335)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (336, 112, 336)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (337, 113, 337)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (338, 113, 338)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (339, 113, 339)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (340, 114, 340)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (341, 114, 341)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (342, 114, 342)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (343, 115, 343)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (344, 115, 344)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (345, 115, 345)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (346, 116, 346)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (347, 116, 347)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (348, 116, 348)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (349, 117, 349)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (350, 117, 350)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (351, 117, 351)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (352, 118, 352)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (353, 118, 353)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (354, 118, 354)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (355, 119, 355)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (356, 119, 356)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (357, 119, 357)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (358, 120, 358)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (359, 120, 359)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (360, 120, 360)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (361, 121, 361)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (362, 121, 362)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (363, 121, 363)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (364, 122, 364)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (365, 122, 365)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (366, 122, 366)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (367, 123, 367)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (368, 123, 368)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (369, 123, 369)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (370, 124, 370)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (371, 124, 371)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (372, 124, 372)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (373, 125, 373)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (374, 125, 374)
INSERT [dbo].[canciones_opciones] ([caop_id], [caop_canc_id], [caop_opci_id]) VALUES (375, 125, 375)
SET IDENTITY_INSERT [dbo].[canciones_opciones] OFF
GO
SET IDENTITY_INSERT [dbo].[categorias] ON 

INSERT [dbo].[categorias] ([cate_id], [cate_descripcion]) VALUES (1, N'Pop')
INSERT [dbo].[categorias] ([cate_id], [cate_descripcion]) VALUES (2, N'Rock')
INSERT [dbo].[categorias] ([cate_id], [cate_descripcion]) VALUES (3, N'Latino')
INSERT [dbo].[categorias] ([cate_id], [cate_descripcion]) VALUES (4, N'Rap')
INSERT [dbo].[categorias] ([cate_id], [cate_descripcion]) VALUES (5, N'Kpop')
INSERT [dbo].[categorias] ([cate_id], [cate_descripcion]) VALUES (6, N'Mix')
SET IDENTITY_INSERT [dbo].[categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[opciones] ON 

INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (1, N'thank u, next')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (2, N'imagine')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (3, N'bloodline')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (4, N'Maps')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (5, N'Sugar')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (6, N'Feelings')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (7, N'Music For a Sushi Restaurant')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (8, N'Cinema')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (9, N'Late Night Talking')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (10, N'LA Girls')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (11, N'How Long')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (12, N'The Way I Am')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (13, N'xanny')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (14, N'you should see me in a crown')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (15, N'bury a friend')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (16, N'Thunder')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (17, N'Whatever It Takes')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (18, N'Next To Me')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (19, N'Save Yours Tears')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (20, N'After Hours')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (21, N'In Your Eyes')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (22, N'Bad Boy (feat. Sean Paul)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (23, N'Naughty Girl')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (24, N'Me, Myself and I')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (25, N'Roar')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (26, N'Birthday')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (27, N'Unconditionally')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (28, N'Levitating')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (29, N'Love Again')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (30, N'Physical')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (31, N'drivers license')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (32, N'deja vu')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (33, N'traitor')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (34, N'LoveGame')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (35, N'Paparazzi')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (36, N'Just Dance')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (37, N'Kill Em With Kindness')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (38, N'Hands To Myself')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (39, N'Good For You')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (40, N'Rules')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (41, N'Streets')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (42, N'Like That (feat. Gucci Mane)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (43, N'Style')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (44, N'Blank Space')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (45, N'Out Of The Woods')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (46, N'Pound The Alarm')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (47, N'High School')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (48, N'Va Va Voom')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (49, N'Born To Die')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (50, N'Off To The Races')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (51, N'Video Games')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (52, N'We Found Love')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (53, N'One Kiss (with Dua Lipa)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (54, N'Summer')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (55, N'Everytime')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (56, N'Breathe on Me')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (57, N'Me Against the Music (feat. Madonna)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (58, N'Nothing Breaks Like a Heart (feat. Miley Cyrus)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (59, N'Valerie (feat. Amy Winehouse)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (60, N'Electricity (with Madonna)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (61, N'Ese Maldito Momento')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (62, N'El Error')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (63, N'Sin Pena Ni Gloria')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (64, N'You Shook Me All Night Long')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (65, N'Hells Bells')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (66, N'Shoot to Thrill')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (67, N'Chosen')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (68, N'Let''s Get It Started')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (69, N'Somebody Told Me')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (70, N'We Will Rock You')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (71, N'Another One Bites The Dust')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (72, N'Under Pressure')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (73, N'You')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (74, N'Thinking About You')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (75, N'Anyone Can Play Guitar')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (76, N'Adiós')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (77, N'Lago en el Cielo')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (78, N'Me Quedo Aquí')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (79, N'Nada Personal')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (80, N'Entre Caníbales')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (81, N'Zoom')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (82, N'The Chain')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (83, N'Go Your Own Way')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (84, N'Don''t Stop')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (85, N'Crímenes perfectos')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (86, N'Loco')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (87, N'Alta suciedad')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (88, N'If You Want Blood (You''ve Got It)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (89, N'Touch Too Much')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (90, N'Girls Got Rhythm')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (91, N'Chlorine')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (92, N'My Blood')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (93, N'Nico and the Niners')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (94, N'Mi Primer Dia Sin Ti')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (95, N'Mejor No Hablemos De Amor')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (96, N'Celdas')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (97, N'Vení Raquel')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (98, N'Cuando Nació Este Amor Prohibido')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (99, N'No Sé Lo Que Hacer')
GO
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (100, N'Faint')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (101, N'Breaking the Habit')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (102, N'Somewhere I Belong')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (103, N'Sin Cadenas')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (104, N'La Hiena')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (105, N'Monkey Man')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (106, N'Huelga De Amores')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (107, N'El Arriero')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (108, N'Dame Un Limón')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (109, N'Come As You Are')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (110, N'Lithium')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (111, N'Something In The Way')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (112, N'Welcome To The Jungle')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (113, N'Paradise City')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (114, N'Nightrain')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (115, N'El Pibe de los Astilleros')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (116, N'Tarea Fina')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (117, N'Mi Perro Dinamita')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (118, N'El Matador')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (119, N'Mal Bicho')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (120, N'Siguiendo La Luna')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (121, N'Que Viva la Vida (feat. Michel Teló)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (122, N'Control (feat. Chris Brown &	Pitbull)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (123, N'Heavy Heavy (feat. Tempo)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (124, N'Nunca Es Suficiente')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (125, N'Otra Noche')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (126, N'Cómo Te Voy A Olvidar')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (127, N'Selfish Love (with Selena Gomez)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (128, N'Damelo To'' (feat. Myke Towers)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (129, N'De Una Vez')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (130, N'El Perdedor')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (131, N'Sin Contrato')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (132, N'Carnaval')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (133, N'Tutu')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (134, N'Perdiendo la Cabeza')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (135, N'Casualidad')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (136, N'Soy el Mismo')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (137, N'Te Robaré')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (138, N'Me Encanta')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (139, N'Imposible')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (140, N'Sola')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (141, N'Dime Que No Te Iras')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (142, N'Perfecta')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (143, N'Yo Te Diré')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (144, N'Traición')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (145, N'Calypso')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (146, N'Apaga La Luz')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (147, N'Poco A Poco')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (148, N'Lo Que Pasó, Pasó')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (149, N'Tu Príncipe')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (150, N'No Me Dejes Solo')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (151, N'Traidora (feat. Marc Anthony)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (152, N'Algo Contigo')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (153, N'Piensas (Dile la Verdad) (feat. Gente de Zona)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (154, N'Adiós')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (155, N'Disparo al Corazón')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (156, N'Perdóname')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (157, N'Me Voy')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (158, N'Eres para Mí (with Anita Tijoux)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (159, N'Sin Documentos')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (160, N'Lo Hecho Está Hecho')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (161, N'Did It Again')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (162, N'Gypsy')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (163, N'Entre Nosotros (Remix) [con Nicki Nicole]')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (164, N'YO SE QUE TU (feat. Rusherking)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (165, N'rápido lento')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (166, N'Tan Fácil')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (167, N'Quisiera')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (168, N'Para Enamorarte')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (169, N'Mayores')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (170, N'Cuando Te Besé')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (171, N'MALA SANTA')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (172, N'Loco Contigo (feat. J. Balvin & Tyga)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (173, N'Fuego (with Sean Paul & Anitta, feat. Tainy)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (174, N'Paris (feat. GASHI)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (175, N'BICHOTA')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (176, N'Ay, DiOs Mío!')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (177, N'EL MAKINON')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (178, N'Soñar es Desear')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (179, N'Lograremos ser humanos')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (180, N'Desde hoy')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (181, N'Luxury')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (182, N'Miss Camaraderie')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (183, N'Ice Princess')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (184, N'Only')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (185, N'Feeling Myself')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (186, N'The Night Is Still Young')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (187, N'Wheelie (feat. 21 Savage)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (188, N'Sunshine (feat. Lil Wayne & Childish Gambino)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (189, N'It''s Givin')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (190, N'Work')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (191, N'Goddess')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (192, N'Don''t Need Y''all')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (193, N'I Like It')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (194, N'Bartier Cardi (feat. 21 Savage)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (195, N'Be Careful')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (196, N'Get Into It (Yuh)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (197, N'Demons')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (198, N'Candy')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (199, N'Changes')
GO
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (200, N'I Get Around')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (201, N'Dear Mama')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (202, N'Rain (feat. Vince Staples)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (203, N'Angel Dust')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (204, N'Colors and Shapes')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (205, N'SWISH')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (206, N'Taste (feat. Offset)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (207, N'Haute (feat. J. Balvin & Chris Brown)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (208, N'Fuck Love')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (209, N'Bounce')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (210, N'Rolex')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (211, N'Geek''d (feat. Lil Baby)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (212, N'Hi Bich')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (213, N'Trust Me (feat. Ty Dolla $ign)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (214, N'DNA.')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (215, N'LOVE. FEAT. ZACARI.')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (216, N'LOYALTY. FEAT. RIHANNA')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (217, N'MONTERO (Call Me By Your Name)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (218, N'THATS WHAT I WANT')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (219, N'SUN GOES DOWN')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (220, N'Won''t Bite (feat. Smino)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (221, N'Bottom Bitch')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (222, N'Talk Dirty')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (223, N'Deli')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (224, N'In Ha Mood')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (225, N'Princess Diana (with Nicki Minaj)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (226, N'Wet Dreamz')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (227, N'G.O.M.D')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (228, N'Love Yourz')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (229, N'My Type')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (230, N'Tap In')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (231, N'ICY GRL')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (232, N'Megan''s Piano')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (233, N'Tuned In Freestyle')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (234, N'Kitty Kat')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (235, N'Bongos (feat. Megan Thee Stallion)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (236, N'Please Me')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (237, N'Up')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (238, N'Till I Collapse')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (239, N'Superman')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (240, N'Sing For The Moment')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (241, N'FXXK IT')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (242, N'LOSER')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (243, N'IF YOU')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (244, N'Illusion')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (245, N'Dreams Come True')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (246, N'Girls')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (247, N'WHISTLE')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (248, N'PLAYING WITH FIRE')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (249, N'STAY')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (250, N'I Need U')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (251, N'Dope')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (252, N'Save Me')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (253, N'CHILL')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (254, N'Give Me Your TMI')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (255, N'SUPER BOARD')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (256, N'Love Me Like This')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (257, N'O.O')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (258, N'Roller Coaster')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (259, N'FEVER')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (260, N'Not For Sale')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (261, N'Mixed Up')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (262, N'STUCK IN MY HEAD')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (263, N'GIRLS LIKE US')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (264, N'HOT')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (265, N'Gentleman')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (266, N'DADDY')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (267, N'That That (prod.&feat. SUGA of BTS)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (268, N'Easy')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (269, N'Another Day')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (270, N'Phobia')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (271, N'FIRE')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (272, N'COME BACK HOME')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (273, N'Lonely')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (274, N'I AM')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (275, N'After LIKE')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (276, N'Baddie')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (277, N'Tempo')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (278, N'Oh La La La')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (279, N'24/7')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (280, N'FAKE LOVE')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (281, N'Euphoria')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (282, N'DNA')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (283, N'THE BADDEST')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (284, N'VILLAIN')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (285, N'DRUM GO DUM')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (286, N'Allergy')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (287, N'Lucid')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (288, N'All Night')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (289, N'Tinnitus (Wanna be a rock)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (290, N'Devil by the Window')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (291, N'Farewell, Neverland')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (292, N'F*ck My Life')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (293, N'I Don''t Understand But I Luv U')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (294, N'Fire')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (295, N'MVSK')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (296, N'See The Light')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (297, N'Up!')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (298, N'TING TING TING (with Oliver Heldens)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (299, N'THAT''S A NO NO')
GO
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (300, N'NOBODY LIKE YOU')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (301, N'Really Don''t Care')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (302, N'Neon Lights')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (303, N'Warrior')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (304, N'Maniac')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (305, N'Wish You Were Sober')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (306, N'The Story')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (307, N'All Night')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (308, N'We Got the World')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (309, N'Girlfriend')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (310, N'Kings & Queens')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (311, N'My Head & My Heart')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (312, N'So Am I')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (313, N'On Purpose')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (314, N'Shadows')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (315, N'Run and Hide')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (316, N'Otherside')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (317, N'Scar Tissue')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (318, N'Around the World')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (319, N'Hey You')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (320, N'Mother')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (321, N'Another Brick in the Wall, Pt. 2')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (322, N'Balada Del Diablo y La Muerte')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (323, N'El Final Es En Donde Partí')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (324, N'Veneno')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (325, N'Circo beat')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (326, N'Normal 1')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (327, N'Tema de Piluso')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (328, N'Time')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (329, N'Breathe (In the Air)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (330, N'The Great Gig in the Sky')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (331, N'La Melodía de Dios')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (332, N'Mis Noches de Enero')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (333, N'Tus Ojos Mil')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (334, N'Me Soltaste')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (335, N'Ecos De Amor')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (336, N'No soy una de esas (feat. Alejandro Sanz)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (337, N'Nada Valgo Sin Tu Amor')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (338, N'Volverte A Ver')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (339, N'Para Tu Amor')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (340, N'Rabiosa (feat. El Cata)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (341, N'Addicted to You')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (342, N'Antes de las Seis')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (343, N'Gracias A Dios')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (344, N'Maria La Del Diablo')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (345, N'Amandote')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (346, N'Barbie World (with Aqua) [From Barbie The Album]')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (347, N'Pretty Girl (with Rema)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (348, N'Butterfly Ku')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (349, N'The Monster')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (350, N'Headlights')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (351, N'Beautiful Pain')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (352, N'Started')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (353, N'Fuck It Up (feat. Kash Doll)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (354, N'Just Wanna')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (355, N'The Next Episode')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (356, N'Forgot About Dre')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (357, N'The Watcher')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (358, N'GOOBA')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (359, N'LOCKED UP, PT. 2')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (360, N'TUTU')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (361, N'Tell Me')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (362, N'Lovin'' Me')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (363, N'Higher')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (364, N'Better Things')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (365, N'Trick or Trick')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (366, N'Don''t Blink')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (367, N'YOUNG LUV')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (368, N'SAME SAME')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (369, N'BUTTERFLY')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (370, N'Merry-Go-Round')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (371, N'Pretty')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (372, N'With*One')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (373, N'Ice Cream (with Selena Gomez)')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (374, N'Lovesick Girls')
INSERT [dbo].[opciones] ([opci_id], [opci_descripcion]) VALUES (375, N'Pretty Savage')
SET IDENTITY_INSERT [dbo].[opciones] OFF
GO
SET IDENTITY_INSERT [dbo].[puntajes] ON 

INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (1, 1, 5000, N'5', 1)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (2, 9, 4660, N'7', 1)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (3, 4, 0, N'22', 1)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (4, 9, 3180, N'22', 6)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (5, 12, 1120, N'43', 2)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (6, 12, 0, N'49', 1)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (7, 9, 4720, N'6', 3)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (8, 4, 4340, N'17', 3)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (9, 9, 4820, N'5', 5)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (10, 9, 3740, N'7', 4)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (11, 13, 4160, N'59', 2)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (12, 13, 3260, N'23', 3)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (13, 13, 920, N'19', 4)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (14, 13, 1960, N'44', 6)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (15, 3, 2720, N'16', 4)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (16, 14, 4180, N'20', 1)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (17, 14, 3020, N'41', 5)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (18, 14, 4220, N'19', 3)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (19, 14, 3560, N'17', 4)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (20, 14, 2920, N'33', 6)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (21, 7, 4800, N'6', 5)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (22, 7, 4520, N'11', 3)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (23, 4, 4640, N'9', 6)
INSERT [dbo].[puntajes] ([punt_id], [punt_usua_id], [punt_puntaje], [punt_tiempo], [punt_cate_id]) VALUES (24, 4, 4720, N'6', 5)
SET IDENTITY_INSERT [dbo].[puntajes] OFF
GO
SET IDENTITY_INSERT [dbo].[usuarios] ON 

INSERT [dbo].[usuarios] ([usua_id], [usua_nombre], [usua_contraseña], [usua_avat_id]) VALUES (1, N'cachiflop', N'AramisYCiro123_', 10)
INSERT [dbo].[usuarios] ([usua_id], [usua_nombre], [usua_contraseña], [usua_avat_id]) VALUES (2, N'Maria', N'romaygrecia', 4)
INSERT [dbo].[usuarios] ([usua_id], [usua_nombre], [usua_contraseña], [usua_avat_id]) VALUES (3, N'Marcos', N'plimplim', 7)
INSERT [dbo].[usuarios] ([usua_id], [usua_nombre], [usua_contraseña], [usua_avat_id]) VALUES (4, N'VentiVegano', N'happy2013', 6)
INSERT [dbo].[usuarios] ([usua_id], [usua_nombre], [usua_contraseña], [usua_avat_id]) VALUES (5, N'Adri21', N'adri2103', 1)
INSERT [dbo].[usuarios] ([usua_id], [usua_nombre], [usua_contraseña], [usua_avat_id]) VALUES (6, N'melislay', N'cachi', 2)
INSERT [dbo].[usuarios] ([usua_id], [usua_nombre], [usua_contraseña], [usua_avat_id]) VALUES (7, N'brenditaslay', N'luckybsmith15', 9)
INSERT [dbo].[usuarios] ([usua_id], [usua_nombre], [usua_contraseña], [usua_avat_id]) VALUES (8, N'nekachechalaka', N'poppypopy', 6)
INSERT [dbo].[usuarios] ([usua_id], [usua_nombre], [usua_contraseña], [usua_avat_id]) VALUES (9, N'admin', N'admin', 1)
INSERT [dbo].[usuarios] ([usua_id], [usua_nombre], [usua_contraseña], [usua_avat_id]) VALUES (10, N'admin2', N'admin', 1)
INSERT [dbo].[usuarios] ([usua_id], [usua_nombre], [usua_contraseña], [usua_avat_id]) VALUES (11, N'admin3', N'admin', 3)
INSERT [dbo].[usuarios] ([usua_id], [usua_nombre], [usua_contraseña], [usua_avat_id]) VALUES (12, N'kevin', N'123456', 4)
INSERT [dbo].[usuarios] ([usua_id], [usua_nombre], [usua_contraseña], [usua_avat_id]) VALUES (13, N'emilio', N'terza', 7)
INSERT [dbo].[usuarios] ([usua_id], [usua_nombre], [usua_contraseña], [usua_avat_id]) VALUES (14, N'anyi', N'hola', 7)
SET IDENTITY_INSERT [dbo].[usuarios] OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_CheckUsuarios]    Script Date: 04/12/2023 19:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CheckUsuarios]
    @nombre NVARCHAR(255)
AS
BEGIN
    -- Variable para almacenar el resultado (true o false)
    DECLARE @usuarioExistente BIT;

    -- Verificar si existe un usuario con el nombre proporcionado
    IF EXISTS (SELECT 1 FROM usuarios WHERE usua_nombre = @nombre)
        SET @usuarioExistente = 1; -- Usuario encontrado
    ELSE
        SET @usuarioExistente = 0; -- Usuario no encontrado

    -- Devolver el resultado
    SELECT @usuarioExistente AS 'UsuarioExistente';
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOrUpdatePuntaje]    Script Date: 04/12/2023 19:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertOrUpdatePuntaje]
    @usua_id INT,
    @punt_puntaje INT,
    @punt_tiempo VARCHAR(255),
    @punt_cate_id INT
AS
BEGIN
    IF @punt_puntaje > 0  -- Verifica que el puntaje sea mayor que 0 antes de realizar operaciones
    BEGIN
        IF EXISTS (SELECT 1 FROM puntajes WHERE punt_usua_id = @usua_id AND punt_cate_id = @punt_cate_id)
        BEGIN
            -- El jugador ya tiene puntaje en esa categoría
            DECLARE @existing_puntaje INT;
            DECLARE @existing_tiempo VARCHAR(255);

            SELECT @existing_puntaje = punt_puntaje, @existing_tiempo = punt_tiempo
            FROM puntajes
            WHERE punt_usua_id = @usua_id AND punt_cate_id = @punt_cate_id;

            IF @punt_puntaje > @existing_puntaje
            BEGIN
                -- El nuevo puntaje es mayor al existente
                UPDATE puntajes
                SET punt_puntaje = @punt_puntaje,
                    punt_tiempo = CASE WHEN @punt_tiempo > @existing_tiempo THEN @punt_tiempo ELSE @existing_tiempo END
                WHERE punt_usua_id = @usua_id AND punt_cate_id = @punt_cate_id;
            END
            -- No es necesario un bloque ELSE aquí, ya que si el puntaje nuevo no es mayor, no se realiza ninguna operación.
        END
        ELSE
        BEGIN
            -- El jugador no tiene puntaje en esa categoría
            INSERT INTO puntajes (punt_usua_id, punt_puntaje, punt_tiempo, punt_cate_id)
            VALUES (@usua_id, @punt_puntaje, @punt_tiempo, @punt_cate_id);
        END
    END
    -- Si el puntaje es igual a 0, no se realiza ninguna operación.
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LlenarGrilla]    Script Date: 04/12/2023 19:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_LlenarGrilla]
(
	@categoria INT
)
AS
BEGIN
	SELECT punt_id, punt_puntaje, punt_tiempo, usua_nombre, avat_direccion
	FROM puntajes
	LEFT JOIN usuarios ON usua_id = punt_usua_id
	LEFT JOIN avatares ON avat_id = usua_avat_id
	WHERE punt_cate_id = @categoria
	ORDER BY punt_puntaje DESC, punt_tiempo;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerAvatares]    Script Date: 04/12/2023 19:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ObtenerAvatares]
as
begin
select avat_direccion from avatares
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerCanciones]    Script Date: 04/12/2023 19:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ObtenerCanciones](
    @categoria int
)
as
begin
    select top 5 canc_id, canc_nombre, canc_artista, canc_direccion, canc_portada_direccion, canc_portada_blur_direccion
    from canciones
    where canc_cate_id = @categoria
    order by NEWID();
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerCancionesMix]    Script Date: 04/12/2023 19:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ObtenerCancionesMix]
as
begin
    select top 5 canc_id, canc_nombre, canc_artista, canc_direccion, canc_portada_direccion, canc_portada_blur_direccion
    from canciones
    order by NEWID();
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerOpciones]    Script Date: 04/12/2023 19:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ObtenerOpciones](
	@id int
)
as
begin
select opci_descripcion from opciones
left join canciones_opciones on caop_opci_id = opci_id
left join canciones on canc_id = caop_canc_id
where caop_canc_id = @id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerUsuario]    Script Date: 04/12/2023 19:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ObtenerUsuario](
	@nombre NVARCHAR(255)
)
as
begin
select usua_id, usua_nombre, avat_direccion from usuarios
left join avatares on avat_id = usua_avat_id
where usua_nombre = @nombre
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ValidarUsuario]    Script Date: 04/12/2023 19:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ValidarUsuario](
    @NombreUsuario NVARCHAR(100),
    @Contraseña NVARCHAR(100)
)
AS
BEGIN
    -- Declarar una variable para almacenar el ID de rol del usuario
    DECLARE @usua_id INT;

    -- Intentar encontrar un usuario con el nombre y contraseña proporcionados
    SELECT @usua_id = usua_id
    FROM usuarios
    WHERE usua_nombre = @NombreUsuario
      AND usua_contraseña = @Contraseña;

    -- Comprobar si se encontró un usuario válido
    IF @usua_id IS NOT NULL
    BEGIN
        -- Retornar el ID de rol del usuario
        SELECT @usua_id AS usua_id;
    END
    ELSE
    BEGIN
        -- No se encontró un usuario válido, retornar 0
        SELECT 0 AS usua_id;
    END
END;
GO
USE [master]
GO
ALTER DATABASE [bd_quiz] SET  READ_WRITE 
GO
