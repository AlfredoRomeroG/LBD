USE [LBD2020]
GO
/****** Object:  Index [index_NombreCompleto]    Script Date: 14/11/2020 07:49:21 a. m. ******/
DROP INDEX [index_NombreCompleto] ON [dbo].[cliente]
GO
/****** Object:  Index [index_Producto]    Script Date: 14/11/2020 07:49:21 a. m. ******/
DROP INDEX [index_Producto] ON [dbo].[almacen]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 14/11/2020 07:49:21 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[venta]') AND type in (N'U'))
DROP TABLE [dbo].[venta]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 14/11/2020 07:49:21 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sucursal]') AND type in (N'U'))
DROP TABLE [dbo].[sucursal]
GO
/****** Object:  Table [dbo].[domicilio]    Script Date: 14/11/2020 07:49:21 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[domicilio]') AND type in (N'U'))
DROP TABLE [dbo].[domicilio]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 14/11/2020 07:49:21 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cliente]') AND type in (N'U'))
DROP TABLE [dbo].[cliente]
GO
/****** Object:  Table [dbo].[almacen]    Script Date: 14/11/2020 07:49:21 a. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[almacen]') AND type in (N'U'))
DROP TABLE [dbo].[almacen]
GO
USE [master]
GO
/****** Object:  Database [LBD2020]    Script Date: 14/11/2020 07:49:21 a. m. ******/
DROP DATABASE [LBD2020]
GO
/****** Object:  Database [LBD2020]    Script Date: 14/11/2020 07:49:22 a. m. ******/
CREATE DATABASE [LBD2020]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LBD2020', FILENAME = N'/var/opt/mssql/data/LBD2020.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LBD2020_log', FILENAME = N'/var/opt/mssql/data/LBD2020_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [LBD2020] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LBD2020].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LBD2020] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LBD2020] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LBD2020] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LBD2020] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LBD2020] SET ARITHABORT OFF 
GO
ALTER DATABASE [LBD2020] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LBD2020] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LBD2020] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LBD2020] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LBD2020] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LBD2020] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LBD2020] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LBD2020] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LBD2020] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LBD2020] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LBD2020] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LBD2020] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LBD2020] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LBD2020] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LBD2020] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LBD2020] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LBD2020] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LBD2020] SET RECOVERY FULL 
GO
ALTER DATABASE [LBD2020] SET  MULTI_USER 
GO
ALTER DATABASE [LBD2020] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LBD2020] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LBD2020] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LBD2020] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LBD2020] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LBD2020] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'LBD2020', N'ON'
GO
ALTER DATABASE [LBD2020] SET QUERY_STORE = OFF
GO
USE [LBD2020]
GO
/****** Object:  Table [dbo].[almacen]    Script Date: 14/11/2020 07:49:22 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[almacen](
	[idAlmacén] [uniqueidentifier] NOT NULL,
	[producto] [varchar](50) NOT NULL,
	[ventaProducto] [varchar](50) NOT NULL,
	[compra] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idAlmacén] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 14/11/2020 07:49:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[IdCliente] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoPaterno] [varchar](50) NOT NULL,
	[ApellidoMaterno] [varchar](50) NOT NULL,
	[FechaDeNacimiento] [datetime] NOT NULL,
	[Edad]  AS (datediff(year,[FechaDeNacimiento],getdate())),
	[IdDomicilio] [uniqueidentifier] NOT NULL,
	[NombreCompleto]  AS (((([Nombre]+' ')+[ApellidoPaterno])+' ')+[ApellidoMaterno]),
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[domicilio]    Script Date: 14/11/2020 07:49:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[domicilio](
	[IdDomicilio] [uniqueidentifier] NOT NULL,
	[Calle] [varchar](50) NOT NULL,
	[Numeral] [int] NULL,
	[Municipio] [varchar](50) NOT NULL,
	[Colonia] [varchar](5) NOT NULL,
	[DomicilioCompleto]  AS (((([Calle]+' ')+[Numeral])+' ')+[Colonia]),
PRIMARY KEY CLUSTERED 
(
	[IdDomicilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 14/11/2020 07:49:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursal](
	[IdSucursal] [uniqueidentifier] NOT NULL,
	[Caja] [money] NOT NULL,
	[IdAlmacen] [uniqueidentifier] NOT NULL,
	[calleSucursal] [varchar](50) NOT NULL,
	[numeralSucursal] [int] NULL,
	[coloniaSucursal] [varchar](50) NOT NULL,
	[domicilioSucursal]  AS (((([calleSucursal]+' ')+[numeralSucursal])+' ')+[coloniaSucursal]),
PRIMARY KEY CLUSTERED 
(
	[IdSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 14/11/2020 07:49:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[IdVenta] [uniqueidentifier] NOT NULL,
	[ventaProducto] [varchar](50) NOT NULL,
	[idCliente] [varchar](50) NOT NULL,
	[caja] [money] NOT NULL,
	[empleado] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [index_Producto]    Script Date: 14/11/2020 07:49:23 a. m. ******/
CREATE NONCLUSTERED INDEX [index_Producto] ON [dbo].[almacen]
(
	[producto] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [index_NombreCompleto]    Script Date: 14/11/2020 07:49:23 a. m. ******/
CREATE NONCLUSTERED INDEX [index_NombreCompleto] ON [dbo].[cliente]
(
	[NombreCompleto] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [LBD2020] SET  READ_WRITE 
GO
