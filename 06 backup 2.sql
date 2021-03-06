USE [LBD2020]
GO
ALTER TABLE [dbo].[venta] DROP CONSTRAINT [CHK_caja_money_noNegativo]
GO
ALTER TABLE [dbo].[venta] DROP CONSTRAINT [FK_venta_sucursal]
GO
ALTER TABLE [dbo].[venta] DROP CONSTRAINT [FK_venta_cliente]
GO
ALTER TABLE [dbo].[sucursal] DROP CONSTRAINT [FK_sucursal_almacen]
GO
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT [FK_cliente_domicilio]
GO
/****** Object:  Index [index_NombreCompleto]    Script Date: 17/11/2020 05:54:59 p. m. ******/
DROP INDEX [index_NombreCompleto] ON [dbo].[cliente]
GO
/****** Object:  Index [UC_cliente_email]    Script Date: 17/11/2020 05:54:59 p. m. ******/
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT [UC_cliente_email]
GO
/****** Object:  Index [index_Producto]    Script Date: 17/11/2020 05:54:59 p. m. ******/
DROP INDEX [index_Producto] ON [dbo].[almacen]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 17/11/2020 05:54:59 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[venta]') AND type in (N'U'))
DROP TABLE [dbo].[venta]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 17/11/2020 05:54:59 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sucursal]') AND type in (N'U'))
DROP TABLE [dbo].[sucursal]
GO
/****** Object:  Table [dbo].[domicilio]    Script Date: 17/11/2020 05:54:59 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[domicilio]') AND type in (N'U'))
DROP TABLE [dbo].[domicilio]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 17/11/2020 05:54:59 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cliente]') AND type in (N'U'))
DROP TABLE [dbo].[cliente]
GO
/****** Object:  Table [dbo].[almacen]    Script Date: 17/11/2020 05:54:59 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[almacen]') AND type in (N'U'))
DROP TABLE [dbo].[almacen]
GO
USE [master]
GO
/****** Object:  Database [LBD2020]    Script Date: 17/11/2020 05:54:59 p. m. ******/
DROP DATABASE [LBD2020]
GO
/****** Object:  Database [LBD2020]    Script Date: 17/11/2020 05:54:59 p. m. ******/
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
/****** Object:  Table [dbo].[almacen]    Script Date: 17/11/2020 05:54:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[almacen](
	[idAlmacén] [uniqueidentifier] NOT NULL,
	[producto] [varchar](50) NOT NULL,
	[IdProducto] [uniqueidentifier] NOT NULL,
	[fechaCaducidad] [date] NOT NULL,
 CONSTRAINT [PK__almacen__5FCA0FD86CD218F7] PRIMARY KEY CLUSTERED 
(
	[idAlmacén] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 17/11/2020 05:54:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[IdCliente] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoPaterno] [varchar](50) NOT NULL,
	[ApellidoMaterno] [varchar](50) NOT NULL,
	[FechaDeNacimiento] [date] NOT NULL,
	[Edad]  AS (datediff(year,[FechaDeNacimiento],getdate())),
	[IdDomicilio] [uniqueidentifier] NULL,
	[NombreCompleto]  AS (((([Nombre]+' ')+[ApellidoPaterno])+' ')+[ApellidoMaterno]),
	[email] [varchar](50) NULL,
 CONSTRAINT [PK__cliente__D5946642E356B6B1] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[domicilio]    Script Date: 17/11/2020 05:54:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[domicilio](
	[IdDomicilio] [uniqueidentifier] NOT NULL,
	[Calle] [varchar](50) NOT NULL,
	[Numeral] [int] NULL,
	[Municipio] [varchar](50) NOT NULL,
	[Colonia] [varchar](50) NOT NULL,
	[DomicilioCompleto]  AS (((([Calle]+' ')+[Numeral])+' ')+[Colonia]),
 CONSTRAINT [PK__domicili__1648AD8A5F80A254] PRIMARY KEY CLUSTERED 
(
	[IdDomicilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 17/11/2020 05:54:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursal](
	[IdSucursal] [uniqueidentifier] NOT NULL,
	[Caja] [money] NOT NULL,
	[IdAlmacen] [uniqueidentifier] NULL,
	[calleSucursal] [varchar](50) NOT NULL,
	[numeralSucursal] [int] NULL,
	[coloniaSucursal] [varchar](50) NOT NULL,
	[domicilioSucursal]  AS (((([calleSucursal]+' ')+[numeralSucursal])+' ')+[coloniaSucursal]),
 CONSTRAINT [PK__sucursal__BFB6CD996ED33A5D] PRIMARY KEY CLUSTERED 
(
	[IdSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 17/11/2020 05:54:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[IdVenta] [uniqueidentifier] NOT NULL,
	[ventaProducto] [varchar](50) NOT NULL,
	[idCliente] [uniqueidentifier] NULL,
	[caja] [money] NOT NULL,
	[empleado] [varchar](50) NOT NULL,
	[idSucursal] [uniqueidentifier] NULL,
 CONSTRAINT [PK__venta__BC1240BDE5347B38] PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'269e57d3-e18e-419c-b948-04ba3781dbde', N'Atorvastatina', N'23d29a26-4998-4dc0-8399-d1370ee24c43', CAST(N'2022-10-30' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'4076ba17-90b5-45a0-be36-07574eef9911', N'Atorvastatina', N'6761acbc-a750-4595-96e0-e2b933626cc5', CAST(N'2022-10-30' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'c0e1621a-9883-42e9-9093-0c8455d794e6', N'Arnicamed', N'44858273-d318-426b-aa16-bd93f990649e', CAST(N'2022-11-01' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'bd401768-aee2-4f97-ba57-0d0dec652126', N'Omeprazol', N'cf527902-af35-410e-99ea-2437697d7160', CAST(N'2022-10-19' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'7f1bfc22-d34f-49e2-b82f-101b844f7a5c', N'Anexate', N'61ac43e2-910f-45fb-b7a5-ef59abb96884', CAST(N'2022-07-03' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'8e4b7fde-c2ab-4251-90be-10762d2ca322', N'Alprazolam Tarbis', N'00f1a5a2-e1b5-4f86-b566-14770486bec5', CAST(N'2022-09-05' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'15321bfe-ccfd-4bc6-9b40-109c57d02357', N'Ácido Omega 3 Kern Pharma', N'729be5cf-a929-4292-9936-a4a2fa676c73', CAST(N'2022-12-08' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'e707f369-7d67-4a80-b64e-10a7c564adaf', N'Simvastatina', N'26851d1e-1878-4cf5-bde1-34f096bebbb2', CAST(N'2022-11-17' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'c839b9eb-f94b-4da0-959a-198f74be77bc', N'Salbutamol', N'c3f76d79-c50b-4701-b4c3-ad6e49b74074', CAST(N'2022-11-12' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'200e8a81-fb5a-476c-b8ab-1f4a01b7a055', N'Ramipril', N'a8c77a36-9e12-4149-a2f2-38dc8c5137de', CAST(N'2022-11-16' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'a026b089-382c-44a3-97b4-1f8ba7356982', N'Bisoprolol Kern Pharma', N'824bbd8d-e6dd-40dc-b739-f3517f1539cb', CAST(N'2022-06-26' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'd7de40c7-69d5-4892-83db-22ae734a1060', N'Aciclovir Pensa', N'9d7fc5a0-0070-4cc0-abb1-7b7258a8ddd7', CAST(N'2022-08-09' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'a092be7e-cf9f-4035-99f7-28a481149b38', N'Balzak', N'57a3155b-4c3d-46bf-a1ae-fb596ca18988', CAST(N'2022-08-28' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'27cd8053-39de-4e74-9412-2b5d47655b80', N'Ramipril', N'4cd94202-3f7c-4940-b811-c864e982ec0d', CAST(N'2022-11-16' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'd5d43910-7104-4066-a339-2c24303ca7ce', N'Aerinaze', N'db59f626-116c-4c58-9964-6e36392a7b2d', CAST(N'2022-11-07' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'4f6c0237-34e1-4fac-9878-2f83704a4a8b', N'Aerinaze', N'a308e654-a7c1-4948-88bf-8158fcf1b210', CAST(N'2022-11-07' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'af1f9ce9-0d3e-4397-b0b8-3c5f4e359477', N'Amlodipina', N'767605bf-c325-4dc9-b583-f988cb7873c8', CAST(N'2022-10-15' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'96464534-3bd2-4a91-acda-3fb1ae28ed03', N'Aerinaze', N'b16beaed-d1dc-416e-9868-5305c9dd9e74', CAST(N'2022-11-07' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'0d9ca55d-b198-4548-9ae9-3fc9ebe85df0', N'Acabat', N'de5b459b-d48c-4616-8fcd-b7582b7d96ea', CAST(N'2022-09-10' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'77fb82ac-2607-4edc-aa7e-4153b56fa764', N'Balzak', N'fd9277ee-9197-452f-a75a-bdf2b9348546', CAST(N'2022-08-28' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'de92239d-a974-4314-acb5-4184cf63db1d', N'Simvastatina', N'eac4e317-5f0f-4719-ad7d-d3267cc6e44f', CAST(N'2022-11-17' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'80998fd9-8686-4001-9908-42c570cd6bca', N'Ramipril', N'5f247e2f-de46-4326-ba3a-28a2d165e58c', CAST(N'2022-11-16' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'a811def3-bc82-445c-b41f-45329fab39af', N'Aspirina', N'4d83af6d-b5c7-4c1d-92c5-bada143948e1', CAST(N'2022-12-18' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'470b6cb9-c457-4f50-beb2-4bcd6c1679ba', N'Simvastatina', N'c221e5e4-1ffc-404b-92eb-30810d3a129c', CAST(N'2022-11-17' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'81177851-e6a5-45d4-b670-4bcf0c0829fb', N'Arenbil Flas', N'59a207f8-e8c9-4d93-8540-aa151f291d94', CAST(N'2022-12-02' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'e3db1239-e5aa-4c04-9ad2-4d41f52a31bd', N'Atorvastatina', N'53881470-a570-49a1-9329-a5e4b5b873e4', CAST(N'2022-10-30' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'38ce494a-b080-4119-962e-4da99d19e697', N'Acabat', N'02365967-5f59-4787-bd3e-57b66c723729', CAST(N'2022-09-10' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'b92b6914-c17e-4c0c-a81b-5121a6dd1262', N'Atropina', N'4c200375-bf90-4d12-b80a-c0fa3500db91', CAST(N'2022-09-29' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'29476b72-f024-4d91-81aa-57e1e1ce1ecb', N'Lexotiroxina sódica', N'6e52c066-024e-447b-98a9-b051e1a76785', CAST(N'2022-12-17' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'7e7ca880-e823-4a3c-a085-58b6bc5e9a13', N'Paracetamol tableta', N'f0d6f712-b45f-4373-91cc-66096d1f7ba5', CAST(N'2022-09-14' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'5a7e28f2-cbb9-44ee-a303-5d2044f16376', N'Bisoprolol Kern Pharma', N'c82608eb-2097-4305-b321-c120bb34876f', CAST(N'2022-06-26' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'44ce9198-ae4d-4365-907d-5e8299d55ac6', N'Lansoprazol', N'09448f17-776b-4123-ae79-ba5ee4377164', CAST(N'2022-10-11' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'7acae773-ed0b-44e3-b751-6075bf368b1f', N'Acabat', N'8fa243df-0399-4c01-9060-5babbbcc0dcd', CAST(N'2022-09-10' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'96c1b4a9-59cc-4f30-8710-639f0e0cf84d', N'Ácido Omega 3 Kern Pharma', N'ef4b8c99-d605-4d11-a101-c79f1346484f', CAST(N'2022-12-08' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'4680be89-b124-4886-b12b-64896861f610', N'Amlodipina', N'4844ff18-ecdc-4250-9331-f3f8042f31f9', CAST(N'2022-10-15' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'70a1cc20-4303-4568-8425-69bce3e9b618', N'Aspirina', N'6c14f942-b9b2-4af9-9c84-0e904cf787a9', CAST(N'2022-12-18' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'15ea2801-35c1-4e11-ab33-6e6f77e19ff8', N'Aspirina', N'ebb57026-576f-4438-8d9a-707175f96bba', CAST(N'2022-12-18' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'3d683bba-08ed-4546-bdc2-794b5d3fae05', N'Balzak', N'4728110e-3fba-4e44-9314-40a55ce92435', CAST(N'2022-08-28' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'ee97b9db-370b-4828-9c6a-7b846a7c6500', N'Arnicamed', N'53a61273-1455-4af5-bb94-a500921f6d70', CAST(N'2022-11-01' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'2f3eed81-04d1-441c-a233-7c39c4fbbe1d', N'Alprazolam Tarbis', N'e2784410-5d4e-4c99-8952-214c32f5ff68', CAST(N'2022-09-05' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'3423be55-3bce-4a4f-9003-7ef78f047fbd', N'Betafact', N'ed12211a-8494-4945-b7ad-22107cb21271', CAST(N'2022-07-27' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'58583a21-c47a-45ca-9394-824618336222', N'Amoxicilina', N'c0d93ec8-d313-4229-9130-5511e3c54f4e', CAST(N'2022-08-04' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'e3dc18f6-f0de-45be-bcbb-88f8a84618fa', N'Omeprazol', N'3abf7976-a944-4d56-b0be-0eda92bae74f', CAST(N'2022-10-19' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'c82138ea-b436-421e-9208-8c80a793c235', N'Omeprazol', N'daee5a9b-20af-4b6b-b8ce-7df8a025dee4', CAST(N'2022-10-19' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'8d3a74f8-9c88-4827-af38-8eaae253039f', N'Atorvastatina', N'45132168-ece4-4293-80ba-e1524ef30bbc', CAST(N'2022-12-13' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'2853c3c0-b4bf-4b74-ad0f-9696365d0c9b', N'Atropina', N'665226e5-92d9-48af-9f0a-9a0eb278ce9d', CAST(N'2022-09-29' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'0f2d78a6-97ea-4a72-94e7-96ed9c00f92b', N'Aciclovir Pensa', N'c6bed6c4-4510-49c3-b33e-81987ce55a3f', CAST(N'2022-08-09' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'7f0f7f40-3be3-490c-a01c-9cc0db81f574', N'Alprazolam Tarbis', N'89d475f2-f8b4-40e2-a3e0-8f336299c56e', CAST(N'2022-09-05' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'791e9f16-ed6e-4048-8658-9f8f0a070492', N'Lansoprazol', N'4235334b-e0ff-4148-a937-3d8530ee8488', CAST(N'2022-10-11' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'419ff88e-e79a-4665-b34d-a239a8435355', N'Aciclovir Pensa', N'2fff079d-5a1c-4db8-93bc-693a7c4ad2c8', CAST(N'2022-08-09' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'458762b6-fe38-4caf-9ea0-a40bf9cb98c5', N'Lexotiroxina sódica', N'f57bae2c-3934-46a6-bd19-56e9a0b428c7', CAST(N'2022-12-17' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'fd1b0108-1052-48f3-b2ca-a81fbca00087', N'Paracetamol tableta', N'6a14ca44-f8b2-49bd-b6a1-5d5dd6069ff7', CAST(N'2022-09-14' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'6a82008c-2652-40e1-a28b-a88a4a14b31a', N'Anexate', N'd85aaa8a-506b-41c1-8f9b-28c56245729a', CAST(N'2022-07-03' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'085da613-86fd-4aaa-8324-ac00a2a8a177', N'Lexotiroxina sódica', N'bb90dea6-1be8-4379-9d45-dba6a34f63cf', CAST(N'2022-12-17' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'61170996-fa19-4101-bec3-ac589694074c', N'Betafact', N'684299c8-71d4-4b63-a3a1-3d5197e28516', CAST(N'2022-07-27' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'b991283c-e219-4484-970c-af3a32333ec2', N'Arenbil Flas', N'4b283364-4f53-48f7-bb68-3a2f8c339669', CAST(N'2022-12-02' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'7e984614-60ea-47c4-9aea-b26b6b84ec5b', N'Alfuzosina Teva', N'392589e8-ddd4-4ed5-82bc-312d664031b6', CAST(N'2022-10-06' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'c032360b-a61d-4bb3-8571-b603a525cc2a', N'Ácido Omega 3 Kern Pharma', N'63334465-53a6-41fe-81d3-8ee71e3670e0', CAST(N'2022-12-08' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'fdc2c9d5-da56-4528-a486-bc9167678ccc', N'Anexate', N'441cff73-63b8-4c04-9837-cef4269640ba', CAST(N'2022-07-03' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'8cfb9cd9-c709-4332-b16c-be085c67337a', N'Betafact', N'c02cd370-d9ae-4556-b8f9-b1191c1c99e6', CAST(N'2022-07-27' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'5b1b4ff6-e951-4eb5-b7a4-c14d9aec5a35', N'Salbutamol', N'cb952ce4-4ce8-4582-b6ae-e1ae92d90516', CAST(N'2022-11-12' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'1817bc41-2403-466c-a60a-c221bdff1f1a', N'Bisoprolol Kern Pharma', N'2b4315b9-2cf3-4f69-bd9a-7aa801410eff', CAST(N'2022-06-26' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'3b2dc882-5d38-4788-aeef-c64857a692ec', N'Atorvastatina', N'ea401e16-1cf1-4cdc-b5bf-17b2a18fa1e5', CAST(N'2022-12-13' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'901b8a81-f959-49eb-ad6a-d0fef3aef797', N'Lansoprazol', N'eb246d8c-c5ed-45f2-8016-fe372330d604', CAST(N'2022-10-11' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'6dd8bd98-ad0d-4795-ba7e-d8b0761d5ea1', N'Paracetamol tableta', N'29b3c382-b834-4604-b28c-1bfbd6415559', CAST(N'2022-09-14' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'6faf21b7-20a2-472e-a68d-da92356e189c', N'Alfuzosina Teva', N'fccca336-f857-4237-ba0f-5ad1599e97d9', CAST(N'2022-10-06' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'3fc5bc2a-107c-48d4-b2ae-df94b4acfa2c', N'Atropina', N'8c141ccd-4952-457e-9d70-f553dfa44471', CAST(N'2022-09-29' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'a93340af-0ca3-4ced-ad01-e0f7bd2b50b9', N'Amoxicilina', N'7ccdd66e-64e9-4aa2-b7a0-0f5a6ea4453a', CAST(N'2022-08-04' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'efa90d0c-ff75-4fb9-b1ed-e2afd8364205', N'Alfuzosina Teva', N'675628d6-800f-47b8-8319-a64960dd31a1', CAST(N'2022-10-06' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'6679c44d-c4ab-43f8-bf4a-eadd96a5ec25', N'Arnicamed', N'fb7bdda6-aded-4a99-ab23-c4ebb6aeff2e', CAST(N'2022-11-01' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'a9ac3f6a-1e6e-4c8e-b452-ed71fcc471e1', N'Salbutamol', N'c2bf9007-06f8-4bd4-a09c-6e87cc19e52d', CAST(N'2022-11-12' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'b2005bd4-61bd-439b-a958-ee18358b9704', N'Atorvastatina', N'5585a7a9-2fac-4a69-91d2-e4d11ad06d4a', CAST(N'2022-12-13' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'ef127171-692a-4dbc-b03e-f02cf6e83974', N'Arenbil Flas', N'e2b4fdab-d865-42e4-8b36-2034610a600e', CAST(N'2022-12-02' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'1ec44de3-d263-40d9-afb5-f0e4730981dc', N'Amoxicilina', N'ad5bfe17-f714-4380-91ae-abf941bf0349', CAST(N'2022-08-04' AS Date))
INSERT [dbo].[almacen] ([idAlmacén], [producto], [IdProducto], [fechaCaducidad]) VALUES (N'f5b72f80-5228-4e9f-91a2-ff6b042b327b', N'Amlodipina', N'58bdf5cd-c70d-48fe-b6b7-da2dd809a82d', CAST(N'2022-10-15' AS Date))
GO
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'af6e1338-6e56-4f71-af03-0810d221d7a5', N'Calixto', N'González', N'Gómez', CAST(N'2002-11-17' AS Date), NULL, N'calixtogonzalez@qwerty.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'4f1010e1-303e-4c01-ab85-0d9e1f658191', N'Gabriel', N'Rodríguez', N'Rodríguez', CAST(N'1999-06-12' AS Date), NULL, N'gabriel-rdz@xmail.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'6e4e3f93-0efc-4b0d-8788-0f1e4e5253b7', N'Walter', N'Ramírez', N'Cruz', CAST(N'1979-10-22' AS Date), NULL, N'walterramirez@hotmail.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'2701e404-ba82-415f-aed6-1997823fd1cb', N'Jenna', N'Fernández', N'Martínez', CAST(N'1996-03-09' AS Date), NULL, N'jenna-fernandez@yahoo.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'c59ceecc-26de-4e23-88cb-25277289d3f1', N'Mabel', N'López', N'Fernández', CAST(N'1990-09-03' AS Date), NULL, N'mabel.lopez@outlook.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'e2fac5e7-7b43-455a-9b54-298203e58cdc', N'Fabián', N'Gómez', N'González', CAST(N'2000-07-13' AS Date), NULL, N'fabian.gonzalez@hotmail.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'ac7af0ff-3168-4126-a687-2dcd97e7351b', N'Eugenio', N'Rodríguez', N'González', CAST(N'2001-08-14' AS Date), NULL, N'eugeniorodriguez@gmail.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'c3c95c1d-badb-40ec-a1f1-35b66220e93c', N'Teodorico', N'López', N'Martínez', CAST(N'1982-01-25' AS Date), NULL, N'teolopez@outlook.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'c99f0885-182e-4991-ae9c-363b6a10ea3f', N'Obama', N'Romero', N'Flores', CAST(N'1988-07-01' AS Date), NULL, N'obamaromero@gmail.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'5c7a8c85-1e9d-4b1f-a4a1-3f2e4ac21a27', N'Zacarías', N'Silva', N'Fernández', CAST(N'1986-07-19' AS Date), NULL, N'zacariasfernanfez@qwerty.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'f3b13ab3-cd93-44e1-b042-5cc0f6e3ebaa', N'Yago', N'Martínez', N'Pérez', CAST(N'1987-08-20' AS Date), NULL, N'yago-mtz@mymail.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'b553b862-b538-4d90-aa20-5e98486fd929', N'Osiris', N'Martínez', N'López', CAST(N'1987-06-30' AS Date), NULL, N'osiris.mtz@hotmail.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'cb8d8866-1bfd-4f7d-a935-622b3f7b147a', N'Lenin', N'Gómez', N'Díaz', CAST(N'1993-12-06' AS Date), NULL, N'lenin-gomez@gmail.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'63b0a9e9-7be4-4592-9cca-6b550cd85f3e', N'Harnoldo', N'González', N'Díaz', CAST(N'1998-05-11' AS Date), NULL, N'harnoldogonzalez@mymail.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'30b73dfd-2b21-4ab5-8a7d-788671026419', N'Kenneth', N'Fernández', N'López', CAST(N'1994-01-07' AS Date), NULL, N'ken.fernandez@aol.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'96f4365a-8b54-4307-833e-956b4ec04c27', N'Ulises', N'Díaz', N'Pérez', CAST(N'1981-12-24' AS Date), NULL, N'ulises.diaz@aol.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'a9c62a67-8fd2-4b60-8f4b-9c8fb30b8b48', N'Jennifer', N'Díaz', N'Fernández', CAST(N'1995-02-08' AS Date), NULL, N'jennydiaz@outlook.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'e3f8c278-b73f-44cb-b897-bf974f57619d', N'Sabina', N'Sosa', N'Sánchez', CAST(N'1983-02-26' AS Date), NULL, N'sabina-sosa@yahoo.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'443e751a-9f77-43cc-8310-c1e8432cd89a', N'Xavier', N'Pérez', N'Muñoz', CAST(N'1978-09-21' AS Date), NULL, N'xavi.perez@xmail.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'398414f3-d130-4e16-a14b-c8ea9a545df8', N'Napoleón', N'Gómez', N'Rodríguez', CAST(N'1989-08-02' AS Date), NULL, N'napoleon-gomez@aol.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'f295a2e7-d4ac-4d25-b1a8-ca6ce73ef9bc', N'Valentín', N'Quiroga', N'Ruiz', CAST(N'1980-11-23' AS Date), NULL, N'valentin-quiroga@gmail.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'8139f07e-f34a-457c-ac54-d06f0e490078', N'Idefonso', N'Rodríguez', N'Rodríguez', CAST(N'1997-04-10' AS Date), NULL, N'ide.rdz@qwerty.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'5ede9f38-767d-43e5-8994-d370b3d71d55', N'Dagoberto', N'González', N'Díaz', CAST(N'2001-10-16' AS Date), NULL, N'dagoberto.gonzalez@outlook.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'2f244418-749f-4884-b7fd-d44dadc2f75a', N'Pablo', N'Lucero', N'Romero', CAST(N'1986-05-29' AS Date), NULL, N'pablo-lucero@xmail.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'd7a4fbb9-7aae-4db1-b9ca-d71ddff059a4', N'Liliana', N'Pérez', N'López', CAST(N'1992-11-05' AS Date), NULL, N'lilianaperez@xmail.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'862bc71b-c028-4915-bd53-d9d54d5efce8', N'Magali', N'Martínez', N'Gómez', CAST(N'1991-10-04' AS Date), NULL, N'magali.martinez@mymail.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'bb932b8d-d4a1-46d3-aea3-e18011d77e41', N'Alfredo', N'Benítez', N'Romero', CAST(N'1985-04-28' AS Date), NULL, N'querubinbenitez@mymail.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'478f1cb7-b204-4f9d-b0d0-e32cf747fbf1', N'Rafael', N'García', N'García', CAST(N'1984-03-27' AS Date), NULL, N'rafael.garcia@qwerty.com')
INSERT [dbo].[cliente] ([IdCliente], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [FechaDeNacimiento], [IdDomicilio], [email]) VALUES (N'12d98659-4a49-4568-b0dc-ed1fcfcb28ce', N'Elena', N'González', N'González', CAST(N'2000-09-15' AS Date), NULL, N'elena-gonzalez@aol.com')
GO
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'19fe2557-ef55-456a-b5cc-00cbf71ed713', N'Las Flores', 113, N'Guadalupe', N'Margaritas')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'1f243319-ece1-434f-b011-01b78c0837ba', N'Magnolia', 32, N'Monterrey', N'Reforma')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'3e0fb258-4259-403e-a639-01dfe06729ba', N'Ébano', 29, N'Guadalupe', N'Bosques de la Pastora')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'c0deb308-be54-4d7c-883f-07aba9c4af80', N'Santiago', 203, N'Monterrey', N'Niño Artillero')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'f1b4503a-2c5e-41b8-9426-08a477f7b33e', N'Encino', 33, N'Monterrey', N'Constituyentes del 57')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'3fce8706-ed94-450b-b2ab-0a5bb6bd96a9', N'Emiliano Zapata', 711, N'Monterrey', N'Rangel Frias')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'dd7c24ab-02cc-4bf3-a8bb-0d15be48f920', N'Encino', 33, N'Monterrey', N'Constituyentes del 57')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'aec1b0f5-f051-41a3-8b59-0e156f187448', N'Emiliano Zapata', 711, N'Monterrey', N'Rangel Frias')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'5d218c93-0eb0-420a-a2ad-1179b6c2e067', N'Salinas', 351, N'Monterrey', N'Topo Chico 1er Sect.')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'53101b3d-e675-4dae-9d2c-1455a535ed6f', N'Nogal', 326, N'Monterrey', N'Constituyentes del 57')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'11628a35-cfb3-4e0d-b604-16e5b8482061', N'Garza García', 881, N'Monterrey', N'Topo Chico 1er Sect.')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'e2d99c01-e1bb-40be-ad11-1d159b729328', N'Los Valles', 331, N'Monterrey', N'Valle verde')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'070bad8f-c03d-4bdd-bda9-27697d9e99ac', N'Fresno', 711, N'Guadalupe', N'Bosques del Contry')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'53e0de6f-cfc4-4932-897f-300cc6661c2d', N'Puebla de los Ángeles', 202, N'Monterrey', N'Ferrocarrilera')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'e6d75d8f-48d0-45c1-988b-316107bef66a', N'Nogal', 326, N'Monterrey', N'Constituyentes del 57')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'3039b235-ec87-4a28-8525-31e192837f68', N'Las Planicies', 2020, N'Monterrey', N'Bernardo Reyes')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'e60c3a71-5db2-4a61-a839-344631c58f24', N'Sotelo', 112, N'Monterrey', N'Rodrigo Gómez')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'4faad581-ab34-4ce1-b4c9-357904bc62fa', N'Madre Selva', 171, N'Monterrey', N'Topo Chico 1er Sect.')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'f0265d0a-ddb1-4cac-8877-38c08ae9e019', N'Olivo', 321, N'Guadalupe', N'Casa Blanca')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'012117eb-b4da-4f06-91c1-3d89ee701b94', N'Álamo', 17, N'Monterrey', N'Ferrocarrilera')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'121f95d0-3e5c-4eb1-86da-3ecf60891124', N'Garza García', 881, N'Monterrey', N'Topo Chico 1er Sect.')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'f60a16f2-e04d-407d-8cd6-4217dee594c8', N'Nogal', 326, N'Monterrey', N'Constituyentes del 57')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'7cf556f9-c773-4212-b82b-44b3516b7913', N'Olivo', 321, N'Guadalupe', N'Casa Blanca')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'0b5a8905-fc25-442e-84e5-4adb576dee4a', N'Salinas', 351, N'Monterrey', N'Topo Chico 1er Sect.')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'72c6165b-9343-421c-8944-4d7ab5cd5961', N'Los Valles', 331, N'Monterrey', N'Valle verde')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'de50215e-a02d-4fad-993f-52bdbb379a93', N'Olmo', 91, N'Monterrey', N'Niño Artillero')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'69ba6f4c-8cfc-49e6-95d0-55dd3afabd38', N'Álamo', 17, N'Monterrey', N'Ferrocarrilera')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'305d52af-38c8-4ee2-a6a7-5720f369c23a', N'Las Flores', 113, N'Guadalupe', N'Margaritas')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'addf3696-27c4-4f54-b4a0-589b290e301d', N'Ébano', 29, N'Guadalupe', N'Bosques de la Pastora')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'7020baee-e567-475f-8927-5c72065869c7', N'Frontera', 334, N'Monterrey', N'Lázaro cárdenas')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'fbd652ee-007d-4553-af01-60e11d11fafa', N'Villaldama', 337, N'Monterrey', N'Lampazos')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'e21dee48-40a2-400d-ada5-63bb7b26b6e6', N'Villaldama', 337, N'Monterrey', N'Lampazos')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'649656cc-882e-4f61-ae5a-68b5d574bc54', N'La Gavia', 71, N'Monterrey', N'Hogares Ferrocarrileros')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'9639b54c-7ad5-4e79-bcb6-6c23b2cc25eb', N'La Gavia', 71, N'Monterrey', N'Hogares Ferrocarrileros')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'3367606e-3cde-47ce-a218-6f1f7449e71a', N'Emiliano Zapata', 711, N'Monterrey', N'Rangel Frias')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'e6c9c830-f389-4a1d-a71f-72df232859b0', N'Fresno', 711, N'Guadalupe', N'Bosques del Contry')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'a246ec40-82af-4248-8c31-73c68226b5b4', N'Madre Selva', 171, N'Monterrey', N'Topo Chico 1er Sect.')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'503e281e-a335-420d-ab9c-78ebcad4fe64', N'Sotelo', 112, N'Monterrey', N'Rodrigo Gómez')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'38841c92-6bc2-4ef7-b381-79b7b7a45902', N'Palo de Rosa', 120, N'San Pedro Garza García', N'Pablo Blanco')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'4e1cd416-2cee-4bb8-b1da-7a0877ab57e4', N'Salinas', 351, N'Monterrey', N'Topo Chico 1er Sect.')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'6a2ab6cc-9813-40eb-9c8b-7b992f38021c', N'Las Planicies', 2020, N'Monterrey', N'Bernardo Reyes')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'11575d1a-c4cb-4538-b4b1-7cb9071697b8', N'Palo Blanco', 1711, N'San Pedro Garza García', N'Palo Blanco')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'ea0973ae-492a-4f58-b7e6-7d22eca589f1', N'Tulipán', 2003, N'Monterrey', N'Alfonso Reyes')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'a82c9128-4444-4c31-b9bd-84dcf98c369a', N'Madre Selva', 171, N'Monterrey', N'Topo Chico 1er Sect.')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'79fd973e-e4ef-4991-ba85-8987e3977693', N'Álamo', 17, N'Monterrey', N'Ferrocarrilera')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'72954a5b-5d97-4dc6-8c03-8a391471d190', N'Palo de Rosa', 120, N'San Pedro Garza García', N'Pablo Blanco')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'2afaf8f2-1f25-4a9d-b667-9105030f44ed', N'Tulipán', 2003, N'Monterrey', N'Alfonso Reyes')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'51d715f9-0419-44ea-bd88-972a93db3c45', N'Puebla de los Ángeles', 202, N'Monterrey', N'Ferrocarrilera')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'8536fd1c-eaf1-4d39-8b1d-97ee6dccbfb3', N'La Gavia', 71, N'Monterrey', N'Hogares Ferrocarrileros')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'd3a14cad-0ea3-4192-acd0-a45a7db12e87', N'Puebla de los Ángeles', 202, N'Monterrey', N'Ferrocarrilera')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'3f2b8240-f059-4e62-bf1d-a6d7e50c7027', N'Magnolia', 32, N'Monterrey', N'Reforma')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'422e38e9-38b8-445c-bbd2-ab755fac6271', N'Encino', 33, N'Monterrey', N'Constituyentes del 57')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'6d675a63-236d-4984-9d28-ae384193c816', N'Sotelo', 112, N'Monterrey', N'Rodrigo Gómez')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'e8e2bd5c-abb8-40de-ad87-aeecf292b84c', N'Tulipán', 2003, N'Monterrey', N'Alfonso Reyes')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'4fd3bbc9-7b13-459d-a34d-b59e102c1a18', N'Garza García', 881, N'Monterrey', N'Topo Chico 1er Sect.')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'1706e366-0eb4-40c2-bbfb-ba813bf86450', N'Santiago', 203, N'Monterrey', N'Niño Artillero')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'997bd3c5-df7b-4da9-8525-bd2297cac141', N'Los Valles', 331, N'Monterrey', N'Valle verde')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'd004cc50-ba48-4c08-b90f-c0bc9b99c309', N'Palo Blanco', 1711, N'San Pedro Garza García', N'Palo Blanco')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'87e6d953-c429-4df6-b73b-c172f7b76cbc', N'Olmo', 91, N'Monterrey', N'Niño Artillero')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'edda1815-8d32-4e0c-94db-c29f5a64640a', N'Villaldama', 337, N'Monterrey', N'Lampazos')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'665e73b5-9367-420f-af50-c2eed866ea7d', N'Sauce', 711, N'Monterrey', N'Lázaro Cárdenas')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'cca71272-54b0-4d69-931f-c38300aaf190', N'Frontera', 334, N'Monterrey', N'Lázaro cárdenas')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'1b3d862d-23db-4c2d-97da-cbe2f97a93c7', N'Las Planicies', 2020, N'Monterrey', N'Bernardo Reyes')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'3e381266-43d3-4454-ac52-cd6a9ccdf628', N'Magnolia', 32, N'Monterrey', N'Reforma')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'9d44bdad-32ec-4ccb-a652-d475d817efea', N'Palo Blanco', 1711, N'San Pedro Garza García', N'Palo Blanco')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'12b6b010-28d8-4272-a6c7-de575ebc530c', N'Santiago', 203, N'Monterrey', N'Niño Artillero')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'776ffb0e-a5c4-443b-99ff-e402b0be3771', N'Fresno', 711, N'Guadalupe', N'Bosques del Contry')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'26d2224b-6b1b-4d80-8d7f-e56e2d9f32fb', N'Olmo', 91, N'Monterrey', N'Niño Artillero')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'cddb54d0-5c74-4671-8c3d-e73d29923944', N'Frontera', 334, N'Monterrey', N'Lázaro cárdenas')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'b5aeaa7a-ec93-44e8-ad70-eec9a5a2b0ed', N'Sauce', 711, N'Monterrey', N'Lázaro Cárdenas')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'f544ae2c-af77-4179-ba3c-f331c04ef625', N'Palo de Rosa', 120, N'San Pedro Garza García', N'Pablo Blanco')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'2d1efc05-3d45-44ac-a851-f50f8b345a01', N'Olivo', 321, N'Guadalupe', N'Casa Blanca')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'63808d71-ecf0-4c24-a14f-f6f49191d61c', N'Las Flores', 113, N'Guadalupe', N'Margaritas')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'4fd83d03-51d9-4eff-bf42-fc34f23bc457', N'Sauce', 711, N'Monterrey', N'Lázaro Cárdenas')
INSERT [dbo].[domicilio] ([IdDomicilio], [Calle], [Numeral], [Municipio], [Colonia]) VALUES (N'1bbf6080-5136-4383-b287-fe4ebacda599', N'Ébano', 29, N'Guadalupe', N'Bosques de la Pastora')
GO
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'fa7efb11-db56-476b-aa01-08ea1ac5bd6b', 449.0000, NULL, N'Torres', 4917, N'Sánchez Islas')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'56d2e9a6-d050-497f-bce3-09150dbc77a3', 2020.0000, NULL, N'El cañón de las Flores', 455, N'Girasol')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'7e3c7a79-43b1-496a-bb0b-10ba9b8cf3f3', 1000.0000, NULL, N'Monterrey', 200, N'Rayones')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'5f7f07d7-1afc-445c-af06-17b92770d4fa', 450.0000, NULL, N'Raul Nevares', 117, N'Sotelo')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'a287eb7a-7489-4a50-9c2a-1a749234d7ef', 7112.0000, NULL, N'San J. Romero', 2004, N'Carranza Leal')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'd9b54426-abef-4520-b43b-1c33733cef34', 450.0000, NULL, N'Raul Nevares', 117, N'Sotelo')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'1fe2ff6f-c3f2-4404-b180-27c346f68ce3', 5117.0000, NULL, N'Mariano Cabrera', 1120, N'Alcatraces')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'0fdf740b-f019-4916-bd35-29122bb933ea', 2020.0000, NULL, N'Loma Seca', 4561, N'Loma Larga')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'6676b3b8-31b7-4d37-abcb-2b02658eebb5', 5717.0000, NULL, N'Pontevedra', 1120, N'La Amistad')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'3489a30b-af6e-471a-a1b7-2d21fab0013a', 449.0000, NULL, N'Torres', 4917, N'Sánchez Islas')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'd7743e8e-a506-45d9-abaf-304f75f73209', 711.0000, NULL, N'Juan Gutiérrez', 1202, N'Ricardo Sosa Pavón')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'd88b21b2-c9c2-4f05-9446-345c53370bf6', 2004.0000, NULL, N'Presa de la Boca', 581, N'Las selvas')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'fa785d34-ca25-47dc-940b-34ed27f768c8', 461.0000, NULL, N'Sta. Catarina', 617, N'Treviño')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'c9bb40cc-e0d3-45bd-86f0-370996d687a4', 5117.0000, NULL, N'Mariano Cabrera', 1120, N'Alcatraces')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'fcd88384-1416-4700-a5bb-3c9f9bdede49', 4551.0000, NULL, N'Loma Azul', 711, N'Las Lomas')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'6b219134-c727-4c5f-a391-3ddf0d8aa5a7', 2020.0000, NULL, N'Loma Seca', 4561, N'Loma Larga')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'6ac07d07-d702-4bae-9edf-43a699a136ad', 342.0000, NULL, N'Manuel Ordoñez', 44, N'Fama')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'0ff21797-905b-488e-92b8-47371ce99c1a', 2004.0000, NULL, N'Bugambilia', 5217, N'Azahares')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'9b2ff028-6ca2-4bc3-9f0f-4b492979f2d5', 2004.0000, NULL, N'Galeana', 48, N'Iturbide')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'a0085bab-13c0-4bdd-8c73-56b7c51aba5a', 1711.0000, NULL, N'Navor Camargo', 2020, N'Bernabé González')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'36f8bcd1-9296-4787-89df-57151e3aca12', 4541.0000, NULL, N'Tetepan', 711, N'Loma Verde')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'a8f5f9f2-a3c7-4486-853c-58a8afe70d52', 7112.0000, NULL, N'Tajin', 459, N'Tula')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'33f63262-f778-4931-a93e-5a552c2527af', 1711.0000, NULL, N'Navor Camargo', 2020, N'Bernabé González')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'8754036d-f08f-4ac7-8a0b-5b547bf13515', 1120.0000, NULL, N'Violetas', 2004, N'Tulipanes')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'41ba1cbf-1de5-407a-bf79-68b5d144c4ea', 4541.0000, NULL, N'Tetepan', 711, N'Loma Verde')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'dc681367-8842-4041-9725-6b3e8c9cef9d', 711.0000, NULL, N'Juan Gutiérrez', 1202, N'Ricardo Sosa Pavón')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'ce5b98c8-a387-4b33-827f-71a24dda8413', 2000.0000, NULL, N'Magnolia', NULL, N'Lirios')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'c4ed84af-d56a-4c5c-84e3-71f3c27dac76', 7112.0000, NULL, N'Del Arroyo', 2004, N'Moctezuma')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'862d82f2-e2b5-4068-af9a-7340942f50bf', 1711.0000, NULL, N'Navor Camargo', 2020, N'Bernabé González')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'17c93559-3a3f-46e8-804e-74e5c1aa4149', 4541.0000, NULL, N'Tetepan', 711, N'Loma Verde')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'9725edd9-2fdf-4943-bbe5-75bff9946811', 1000.0000, NULL, N'Monterrey', 200, N'Rayones')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'b07e2df1-da11-4e9b-b5c2-7909d59aa419', 2004.0000, NULL, N'Galeana', 48, N'Iturbide')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'acceb5f3-1d7e-4fd3-85f4-7cb52c3014d3', 2020.0000, NULL, N'El cañón de las Flores', 455, N'Girasol')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'cb6e365b-0542-47a9-b3d7-7d0569f087d8', 1000.0000, NULL, N'Monterrey', 200, N'Rayones')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'fa1fa27f-44b7-4d44-b4ce-7fdd0d499929', 1120.0000, NULL, N'Violetas', 2004, N'Tulipanes')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'eca55f28-a80a-4abd-a722-828b554fe6a5', 461.0000, NULL, N'Sta. Catarina', 617, N'Treviño')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'1a9629ea-a941-4a2c-bb90-83ffeff26366', 2004.0000, NULL, N'Presa de la Boca', 581, N'Las selvas')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'ba35874b-51e8-4476-8918-87985db32097', 342.0000, NULL, N'Manuel Ordoñez', 44, N'Fama')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'e60e9df0-e912-4d46-9dfd-8a6641bbb3f0', 450.0000, NULL, N'Raul Nevares', 117, N'Sotelo')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'f78663c6-5b80-4d7c-87f9-8d74bfd0dc5b', 711.0000, NULL, N'Villaldama', 711, N'San José de la Montaña')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'6e20c8c8-6987-400a-adca-98e7fe1396c5', 1120.0000, NULL, N'Violetas', 2004, N'Tulipanes')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'3e669ede-61f1-4045-9cb5-a2dca952c6a9', 2004.0000, NULL, N'Bugambilia', 5217, N'Azahares')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'9e2a2c85-5044-4ceb-86f3-a4cf4968935d', 342.0000, NULL, N'Manuel Ordoñez', 44, N'Fama')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'eb545c79-3871-4855-9de9-a58b133ed2da', 2004.0000, NULL, N'Bugambilia', 5217, N'Azahares')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'5bf32f9c-a468-4feb-92f4-ab69d161a3e1', 5317.0000, NULL, N'Nardo', 1120, N'Casa Blanca')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'6c422871-a8a2-4316-bb46-b0d76da66f0e', 4551.0000, NULL, N'Loma Azul', 711, N'Las Lomas')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'7c536f73-818f-4df5-a0d6-b6066f0998fe', 7112.0000, NULL, N'Del Arroyo', 2004, N'Moctezuma')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'9c4c20a6-658f-44d1-aeb5-b6737ccbc194', 4551.0000, NULL, N'Loma Azul', 711, N'Las Lomas')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'6b12fcda-1c32-4b7b-b8da-b78ea924dccd', 2020.0000, NULL, N'Loma Seca', 4561, N'Loma Larga')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'1d973456-faa4-4830-9d9a-b970211ba031', 7112.0000, NULL, N'Tajin', 459, N'Tula')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'a055e470-bf64-4a28-8a95-babf069a2746', 449.0000, NULL, N'Torres', 4917, N'Sánchez Islas')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'a519f4c1-5655-4753-9503-bacdb67ee0fd', 2000.0000, NULL, N'Magnolia', NULL, N'Lirios')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'0ae6010b-d3d6-487c-a673-bd0e38dce365', 2000.0000, NULL, N'Magnolia', NULL, N'Lirios')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'58bcc0d7-9506-44ab-b9cf-c1847a9e5af4', 2004.0000, NULL, N'Presa de la Boca', 581, N'Las selvas')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'a1e651a1-d32b-46b4-9829-c3570bfcdda7', 5317.0000, NULL, N'Nardo', 1120, N'Casa Blanca')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'1d21b352-2ab5-4033-99f5-c429c014ebe0', 7112.0000, NULL, N'Tajin', 459, N'Tula')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'f1ac922a-95cf-4e12-99da-c67d411c97df', 7112.0000, NULL, N'Del Arroyo', 2004, N'Moctezuma')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'01d2964c-2fb0-45ce-988c-d27229486610', 5317.0000, NULL, N'Nardo', 1120, N'Casa Blanca')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'ec0ca6cf-0da6-4823-b9e4-d5de8c34ae1d', 711.0000, NULL, N'Villaldama', 711, N'San José de la Montaña')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'dffec38d-d242-42b6-afd5-dd39d413cb35', 2020.0000, NULL, N'El cañón de las Flores', 455, N'Girasol')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'8f622ab2-25da-4726-8ff5-e7c7189e5298', 7112.0000, NULL, N'San J. Romero', 2004, N'Carranza Leal')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'fe320840-bcc2-45c6-952e-eb265b880f88', 711.0000, NULL, N'Juan Gutiérrez', 1202, N'Ricardo Sosa Pavón')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'b6eb8ee3-09fc-462f-a67e-ebd29e63964e', 2004.0000, NULL, N'Galeana', 48, N'Iturbide')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'55ddda6b-a078-44e9-8c67-f3e695512b79', 7112.0000, NULL, N'San J. Romero', 2004, N'Carranza Leal')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'646e6032-9854-4bb7-803a-f4cae4173bb7', 5717.0000, NULL, N'Pontevedra', 1120, N'La Amistad')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'42fb9272-97cf-43be-98be-f71879419321', 5717.0000, NULL, N'Pontevedra', 1120, N'La Amistad')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'412764ed-15ac-4db9-bf0c-fb52fde589be', 5117.0000, NULL, N'Mariano Cabrera', 1120, N'Alcatraces')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'3a541099-6073-492f-88b7-fd8060a57d81', 711.0000, NULL, N'Villaldama', 711, N'San José de la Montaña')
INSERT [dbo].[sucursal] ([IdSucursal], [Caja], [IdAlmacen], [calleSucursal], [numeralSucursal], [coloniaSucursal]) VALUES (N'4681f7b1-1488-45e8-a9f7-fe8c2b16dfe0', 461.0000, NULL, N'Sta. Catarina', 617, N'Treviño')
GO
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'16e14a3d-53a9-4f75-b98c-0169d9eebb15', N'Lexotiroxina', NULL, 120.0000, N'Saul Álvarez', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'4cfd81e3-1f90-4150-a561-0940cbd21157', N'Lexotiroxina', NULL, 120.0000, N'Saul Álvarez', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'8b8db0e5-46bf-4920-a9ea-0a128e36df74', N'Amisulprida Aurovitas', NULL, 112.0000, N'Esmeralda Sotelo', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'faabc4b7-97b1-4973-a203-0a37175bdf86', N'Ácido Zoledronico Normon', NULL, 711.0000, N'Carla Olmos', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'78087143-2333-4ee4-9acf-0b4fb6bca139', N'Omeprazol', NULL, 71.0000, N'Enrique Solis', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'1de76f66-f6dd-4774-a58a-0ffeb7035323', N'Atoris', NULL, 52.0000, N'Pedro Santiago', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'c8a41287-66f4-45c9-8508-1131d9ee01d7', N'Abacat', NULL, 510.0000, N'Ernesto Solís', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'18d78c85-75d5-4514-ba5a-1166b65557cb', N'Alcohol Alcanforado Cuve', NULL, 51.0000, N'Haniel I.', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'4f9642ac-d880-4b0f-8886-1b02b0cd7f9d', N'PAracetamol', NULL, 81.0000, N'Omar Wise', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'8f30641a-3da7-47e8-991b-286e585e0f3b', N'Alphagan', NULL, 317.0000, N'Norman Shmit', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'aedfc7a4-9b64-4cde-b052-290d76166a72', N'Amoxicilina', NULL, 51.0000, N'Iris Treviño', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'30de675c-64b9-4bda-82ca-298c37bc5c1e', N'Salbutamol', NULL, 120.0000, N'Alfredo Talavera', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'2961570c-82b7-4b1d-bbb0-3422b24d2a00', N'Aciclovir Kern Pharma', NULL, 117.0000, N'Lázaro Narvaes', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'e191202b-7fb4-4a57-97ee-3a36a868bec6', N'Amlodipino', NULL, 200.0000, N'Cloe Reuts', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'a1e89fee-a99b-4ecd-aedb-3b5f95292012', N'Lansoprazol', NULL, 200.0000, N'Cesar Hernández', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'a6aff908-826e-472b-a652-3d20344fea99', N'Aspirina', NULL, 51.0000, N'Carlos Torres', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'93308f27-f5cd-47a2-8d54-411dc00ac2b3', N'Ácido Zoledronico Normon', NULL, 711.0000, N'Carla Olmos', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'ad8c6e0d-b184-49eb-b70d-425b49ef6539', N'Amlodipina', NULL, 507.0000, N'Daniel Ramírez', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'4db27026-5600-4c9e-9279-4466ff07dd45', N'Advate', NULL, 202.0000, N'Laura Colin', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'd50dc92f-8fce-410d-9b44-460caece8f1a', N'Atorvastatina', NULL, 71.0000, N'Santiago Martínez', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'32370c4c-b5ab-40ed-91a1-466cb0c54537', N'Amlodipino', NULL, 200.0000, N'Cloe Reuts', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'd622d585-d4cf-46ce-8a6e-4dcbc0af9dbb', N'Arkocapsulas Raiz de Ortiga', NULL, 200.0000, N'Eunice Salinas', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'6e2d41d8-34b3-4ffa-96de-502de111e6c8', N'Salbutamol', NULL, 120.0000, N'Alfredo Talavera', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'cce63633-f1e1-485c-a104-51a98c7ced93', N'Aciclovir Kern Pharma', NULL, 117.0000, N'Lázaro Narvaes', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'a217fe5e-42ab-40eb-bbce-52592c6c68db', N'Aricept Flas', NULL, 112.0000, N'Isis Ospina', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'bd25e6a5-a2bf-4982-983f-5756b031bd6e', N'Abacat', NULL, 510.0000, N'Ernesto Solís', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'bb156728-1cbe-410a-9c12-5a3427d20034', N'Atoris', NULL, 52.0000, N'Pedro Santiago', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'736f56ee-44d9-49fc-ace5-5ca0a07a2362', N'Arkocapsulas Raiz de Ortiga', NULL, 200.0000, N'Eunice Salinas', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'a7010746-cdb1-4cad-9667-5dd33b9c5201', N'Alcohol Alcanforado Cuve', NULL, 51.0000, N'Haniel I.', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'd5ff8b54-3288-4364-901e-63487fd68274', N'Amlodipino', NULL, 200.0000, N'Cloe Reuts', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'83104123-f8a1-465f-8e5d-6604a661ddb8', N'Amisulprida Aurovitas', NULL, 112.0000, N'Esmeralda Sotelo', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'aa7c303a-d6d0-4df5-8f3c-661685f1a543', N'Ansatipin', NULL, 171.0000, N'Omar Rodríguez', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'd682f218-fbf2-4c44-9c47-66b242ddeb77', N'Amoxicilina', NULL, 51.0000, N'Iris Treviño', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'0899a36b-1c1a-4d42-8f1d-6b35cacf9d51', N'Atorvastatina', NULL, 71.0000, N'Santiago Martínez', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'69007d02-64e1-4e95-b5d2-75790599e9bb', N'Omeprazol', NULL, 71.0000, N'Enrique Solis', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'7b5259b5-cac4-4268-a1a5-778b7dde44f8', N'Ansatipin', NULL, 171.0000, N'Omar Rodríguez', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'edad5db2-117a-46c4-ae94-77f4f41d9ae9', N'Simvastatina', NULL, 50.0000, N'Raul Alejandro', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'8e71fcfb-437d-437f-85c3-7c0bcc5fade0', N'Aricept Flas', NULL, 112.0000, N'Isis Ospina', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'1a7b9cd0-727a-4a62-a542-7c5571792205', N'Simvastatina', NULL, 50.0000, N'Raul Alejandro', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'eccda4fd-1a25-4656-8a10-7d5da4e99069', N'PAracetamol', NULL, 81.0000, N'Omar Wise', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'87d5bf1f-fe4e-49f4-a67d-8065454d94d0', N'Ácido Zoledronico Normon', NULL, 711.0000, N'Carla Olmos', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'ba8dcb55-7ec8-45ca-840c-810f31706275', N'Amisulprida Aurovitas', NULL, 112.0000, N'Esmeralda Sotelo', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'44544e93-44cd-49f9-ad05-82ae2592ba9a', N'Lansoprazol', NULL, 200.0000, N'Cesar Hernández', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'a614b843-005c-46dc-9c0f-884eb88674fb', N'Amlodipina', NULL, 507.0000, N'Daniel Ramírez', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'19f07c82-3160-44d5-a4e7-89ec3a1bfa66', N'Ramipril', NULL, 200.0000, N'Luis Blanco', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'a3284ffb-9ff1-4fbf-a264-8ad2139f7792', N'Aspirina', NULL, 51.0000, N'Carlos Torres', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'0c7636bd-f0d1-40ea-a5c6-8be74b532240', N'Salbutamol', NULL, 120.0000, N'Alfredo Talavera', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'9a482c3e-270a-4e0b-9eb5-8d123d6623fa', N'Advate', NULL, 202.0000, N'Laura Colin', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'c58e7d99-e3c4-434b-bc15-923cd184b09b', N'Lexotiroxina', NULL, 120.0000, N'Saul Álvarez', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'10d7751a-62e3-44c9-8d81-93339a191026', N'Ramipril', NULL, 200.0000, N'Luis Blanco', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'7951155f-554e-4123-9246-94df1fae0b84', N'Ramipril', NULL, 200.0000, N'Luis Blanco', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'd6852d9c-5a29-49d1-98ef-979a8642d491', N'Atoris', NULL, 52.0000, N'Pedro Santiago', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'7c4ed9da-a5fd-4361-99f7-a06ae4f090f0', N'Aricept Flas', NULL, 112.0000, N'Isis Ospina', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'a1f40472-badf-45ec-8d3a-a126e167fb6a', N'Advate', NULL, 202.0000, N'Laura Colin', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'93b97112-8985-4de8-880b-aebf74cb1e5a', N'Aciclovir Kern Pharma', NULL, 117.0000, N'Lázaro Narvaes', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'd16044ba-5fca-4fa9-bc55-b4aa03e0bacf', N'Omeprazol', NULL, 71.0000, N'Enrique Solis', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'1f1737ee-6120-47f6-8f06-b7643f43d4a7', N'Simvastatina', NULL, 50.0000, N'Raul Alejandro', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'005f3577-3dcd-4826-bdf5-c93a3793ed02', N'Arkocapsulas Raiz de Ortiga', NULL, 200.0000, N'Eunice Salinas', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'74a47a46-5529-4a79-843f-c95f7f65e6a1', N'Atorvastatina', NULL, 71.0000, N'Santiago Martínez', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'41e7cdec-31df-4010-8f60-cac2d5c0ca2b', N'Ansatipin', NULL, 171.0000, N'Omar Rodríguez', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'c8971242-7830-4bd2-82d3-cffa7607a781', N'Aspirina', NULL, 51.0000, N'Carlos Torres', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'e7ab0737-5c00-4428-b892-d12a9b3bd074', N'Alphagan', NULL, 317.0000, N'Norman Shmit', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'9f21ca99-ccfe-46f4-bde8-d40c1047d72a', N'Amoxicilina', NULL, 51.0000, N'Iris Treviño', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'71c0ba55-f21c-4945-b6d6-d6624cbfc5d5', N'PAracetamol', NULL, 81.0000, N'Omar Wise', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'52806f78-e581-4ca0-98d7-d7d32256870b', N'Alphagan', NULL, 317.0000, N'Norman Shmit', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'1280ae7d-7d1d-48d2-bcea-d7d5803c7819', N'Lansoprazol', NULL, 200.0000, N'Cesar Hernández', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'42102953-a4ef-484f-99a1-dce31a67318d', N'Alcohol Alcanforado Cuve', NULL, 51.0000, N'Haniel I.', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'03d546e9-df93-4f4f-bba9-f306ca4e6406', N'Abacat', NULL, 510.0000, N'Ernesto Solís', NULL)
INSERT [dbo].[venta] ([IdVenta], [ventaProducto], [idCliente], [caja], [empleado], [idSucursal]) VALUES (N'de89e3a7-c9dc-4cde-89ac-fda1985170f3', N'Amlodipina', NULL, 507.0000, N'Daniel Ramírez', NULL)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [index_Producto]    Script Date: 17/11/2020 05:55:00 p. m. ******/
CREATE NONCLUSTERED INDEX [index_Producto] ON [dbo].[almacen]
(
	[producto] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_cliente_email]    Script Date: 17/11/2020 05:55:00 p. m. ******/
ALTER TABLE [dbo].[cliente] ADD  CONSTRAINT [UC_cliente_email] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [index_NombreCompleto]    Script Date: 17/11/2020 05:55:00 p. m. ******/
CREATE NONCLUSTERED INDEX [index_NombreCompleto] ON [dbo].[cliente]
(
	[NombreCompleto] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD  CONSTRAINT [FK_cliente_domicilio] FOREIGN KEY([IdDomicilio])
REFERENCES [dbo].[domicilio] ([IdDomicilio])
GO
ALTER TABLE [dbo].[cliente] CHECK CONSTRAINT [FK_cliente_domicilio]
GO
ALTER TABLE [dbo].[sucursal]  WITH CHECK ADD  CONSTRAINT [FK_sucursal_almacen] FOREIGN KEY([IdAlmacen])
REFERENCES [dbo].[almacen] ([idAlmacén])
GO
ALTER TABLE [dbo].[sucursal] CHECK CONSTRAINT [FK_sucursal_almacen]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_cliente]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [FK_venta_sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[sucursal] ([IdSucursal])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [FK_venta_sucursal]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [CHK_caja_money_noNegativo] CHECK  (([caja]>(0)))
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [CHK_caja_money_noNegativo]
GO
USE [master]
GO
ALTER DATABASE [LBD2020] SET  READ_WRITE 
GO
