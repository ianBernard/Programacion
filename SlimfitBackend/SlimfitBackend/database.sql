USE [master]
GO
/****** Object:  Database [database]    Script Date: 15/9/2022 10:35:54 ******/
CREATE DATABASE [database]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'database', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\database.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'database_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\database_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [database] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [database] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [database] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [database] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [database] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [database] SET ARITHABORT OFF 
GO
ALTER DATABASE [database] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [database] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [database] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [database] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [database] SET  DISABLE_BROKER 
GO
ALTER DATABASE [database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [database] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [database] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [database] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [database] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [database] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [database] SET RECOVERY FULL 
GO
ALTER DATABASE [database] SET  MULTI_USER 
GO
ALTER DATABASE [database] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [database] SET DB_CHAINING OFF 
GO
ALTER DATABASE [database] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [database] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [database] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'database', N'ON'
GO
ALTER DATABASE [database] SET QUERY_STORE = OFF
GO
USE [database]
GO
/****** Object:  User [ian]    Script Date: 15/9/2022 10:35:54 ******/
CREATE USER [ian] FOR LOGIN [ian] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [alumno]    Script Date: 15/9/2022 10:35:54 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Receta]    Script Date: 15/9/2022 10:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receta](
	[idReceta] [int] IDENTITY(1,1) NOT NULL,
	[NombreReceta] [text] NOT NULL,
	[upvotes] [int] NOT NULL,
	[downvotes] [int] NOT NULL,
	[visitas] [int] NOT NULL,
	[descripcios] [text] NOT NULL,
 CONSTRAINT [PK_Receta] PRIMARY KEY CLUSTERED 
(
	[idReceta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 15/9/2022 10:35:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [text] NOT NULL,
	[contraseña] [text] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Receta] ON 

INSERT [dbo].[Receta] ([idReceta], [NombreReceta], [upvotes], [downvotes], [visitas], [descripcios]) VALUES (1, N'fideos', 100, 50, 155, N'fideos con queso, ricos y faciles de hacer')
SET IDENTITY_INSERT [dbo].[Receta] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([idUsuario], [usuario], [contraseña]) VALUES (1, N'ian', N'bernard')
INSERT [dbo].[Usuarios] ([idUsuario], [usuario], [contraseña]) VALUES (2, N'lukitas valentin', N'rossi')
INSERT [dbo].[Usuarios] ([idUsuario], [usuario], [contraseña]) VALUES (3, N'Big Fella', N'el mas facha')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
USE [master]
GO
ALTER DATABASE [database] SET  READ_WRITE 
GO
