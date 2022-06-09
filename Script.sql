USE [master]
GO
/****** Object:  Database [Gulf_HU]    Script Date: 6/10/2022 1:13:08 AM ******/
CREATE DATABASE [Gulf_HU]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Gulf_HU', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Gulf_HU.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Gulf_HU_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Gulf_HU_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Gulf_HU] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Gulf_HU].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Gulf_HU] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Gulf_HU] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Gulf_HU] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Gulf_HU] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Gulf_HU] SET ARITHABORT OFF 
GO
ALTER DATABASE [Gulf_HU] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Gulf_HU] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Gulf_HU] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Gulf_HU] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Gulf_HU] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Gulf_HU] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Gulf_HU] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Gulf_HU] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Gulf_HU] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Gulf_HU] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Gulf_HU] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Gulf_HU] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Gulf_HU] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Gulf_HU] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Gulf_HU] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Gulf_HU] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Gulf_HU] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Gulf_HU] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Gulf_HU] SET  MULTI_USER 
GO
ALTER DATABASE [Gulf_HU] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Gulf_HU] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Gulf_HU] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Gulf_HU] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Gulf_HU] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Gulf_HU] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Gulf_HU] SET QUERY_STORE = OFF
GO
USE [Gulf_HU]
GO
/****** Object:  Table [dbo].[airline_tbl]    Script Date: 6/10/2022 1:13:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[airline_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[airlineName] [varchar](50) NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_airline_tbl_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[billing_details_tbl]    Script Date: 6/10/2022 1:13:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[billing_details_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[detail_of_payment] [varchar](300) NULL,
	[clientPaymentForOne] [float] NULL,
	[total_amount] [float] NULL,
	[payment_type] [varchar](50) NULL,
	[amount_recieved] [float] NULL,
	[amount_pending] [float] NULL,
	[expense] [float] NULL,
	[profit_loss] [float] NULL,
	[dateRegistered] [datetime] NULL,
	[datePayment] [datetime] NULL,
	[client_id] [int] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_billing_details_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cities_tbl]    Script Date: 6/10/2022 1:13:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cities_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cityname] [varchar](50) NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_cities_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client_details_tbl]    Script Date: 6/10/2022 1:13:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client_details_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[dispatched_to] [varchar](50) NULL,
	[passportNumber] [varchar](50) NULL,
	[hotelVoucherNo] [varchar](50) NULL,
	[phone_number] [varchar](20) NULL,
	[address] [varchar](200) NULL,
	[shirka] [varchar](50) NULL,
	[date] [datetime] NULL,
	[passport_doc] [varchar](300) NULL,
	[picture] [varchar](300) NULL,
	[reference_by] [varchar](50) NULL,
	[reference_contact_number] [varchar](20) NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_client_details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[flight_details_tbl]    Script Date: 6/10/2022 1:13:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[flight_details_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[airline_name] [int] NULL,
	[ticketNo] [varchar](50) NULL,
	[departure_from] [int] NULL,
	[arrirved_at] [int] NULL,
	[departure_time] [time](7) NULL,
	[arrival_time] [time](7) NULL,
	[date] [datetime] NULL,
	[client_id] [int] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_airline_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[group_of_people_details_tbl]    Script Date: 6/10/2022 1:13:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group_of_people_details_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[passport_number] [varchar](50) NULL,
	[isDeleted] [bit] NULL,
	[client_id] [int] NULL,
 CONSTRAINT [PK_group_of_people_details_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotel_details_tbl]    Script Date: 6/10/2022 1:13:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotel_details_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hotel_name] [varchar](50) NULL,
	[hotelNameMadina] [varchar](50) NULL,
	[daysMakkah] [int] NULL,
	[daysMadina] [int] NULL,
	[city_id] [int] NULL,
	[roomtype_id] [int] NULL,
	[client_id] [int] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_hotel_details_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[package_details_tbl]    Script Date: 6/10/2022 1:13:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[package_details_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[package_name] [varchar](50) NULL,
	[no_of_days] [varchar](5) NULL,
	[packageCost] [varchar](10) NULL,
	[airlineCost] [varchar](10) NULL,
	[visaCost] [varchar](10) NULL,
	[transportCost] [varchar](10) NULL,
	[costWithTicket] [varchar](10) NULL,
	[pnr] [varchar](50) NULL,
	[other_details] [varchar](300) NULL,
	[airline_id] [int] NULL,
	[client_id] [int] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_package_details_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roomtype_tbl]    Script Date: 6/10/2022 1:13:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roomtype_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type_of_room] [varchar](50) NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_roomtype_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transportation_details_tbl]    Script Date: 6/10/2022 1:13:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transportation_details_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vechile_type] [varchar](50) NULL,
	[route] [varchar](100) NULL,
	[date] [datetime] NULL,
	[client_id] [int] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_transportation_details_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_tbl]    Script Date: 6/10/2022 1:13:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](10) NULL,
	[username] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[address] [varchar](300) NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_user_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[airline_tbl] ON 

INSERT [dbo].[airline_tbl] ([id], [airlineName], [isDeleted]) VALUES (1, N'PIA', 0)
INSERT [dbo].[airline_tbl] ([id], [airlineName], [isDeleted]) VALUES (2, N'Airblue', 0)
SET IDENTITY_INSERT [dbo].[airline_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[billing_details_tbl] ON 

INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (6, NULL, NULL, 500000.12, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1046, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (7, NULL, NULL, 2000.3, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1047, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (8, NULL, NULL, 2000.3, NULL, NULL, 9, NULL, NULL, CAST(N'2022-05-27T03:53:27.837' AS DateTime), NULL, 1048, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (9, NULL, NULL, 2000, NULL, NULL, 0, NULL, NULL, CAST(N'2022-05-27T14:09:03.583' AS DateTime), NULL, 1049, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (10, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-27T14:10:12.127' AS DateTime), NULL, 1050, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (11, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-27T14:12:01.867' AS DateTime), NULL, 1051, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (12, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-27T14:52:22.183' AS DateTime), NULL, 1052, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (13, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-27T15:00:35.663' AS DateTime), NULL, 1053, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (14, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-27T15:03:20.987' AS DateTime), NULL, 1054, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (15, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-27T15:03:51.977' AS DateTime), NULL, 1055, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (16, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-27T15:13:59.103' AS DateTime), NULL, 1056, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (17, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-27T15:14:16.217' AS DateTime), NULL, 1057, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (18, NULL, NULL, 500, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-27T15:14:27.837' AS DateTime), NULL, 1058, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (19, N'Good', NULL, 2000.3, N'Cheque', 0, 2000.3, 1000, -1000, CAST(N'2022-05-27T15:15:08.520' AS DateTime), NULL, 1059, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (20, NULL, NULL, 122, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-27T15:34:17.710' AS DateTime), NULL, 1060, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (21, NULL, NULL, 1212, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-27T15:34:27.683' AS DateTime), NULL, 1061, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (22, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-27T15:34:41.033' AS DateTime), NULL, 1062, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (23, NULL, NULL, 1212, NULL, NULL, 505, NULL, NULL, CAST(N'2022-05-27T15:39:42.767' AS DateTime), NULL, 1063, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (24, NULL, NULL, 100, NULL, NULL, 0, NULL, NULL, CAST(N'2022-05-27T15:40:01.847' AS DateTime), NULL, 1064, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-28T22:49:02.190' AS DateTime), NULL, 1065, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (26, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-28T22:51:23.790' AS DateTime), NULL, 1066, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (27, NULL, 1000, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-28T22:53:45.777' AS DateTime), NULL, 1067, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (28, NULL, 50, 450, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-28T23:06:26.880' AS DateTime), NULL, 1068, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (29, NULL, 15, 45, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-29T01:24:02.780' AS DateTime), NULL, 1069, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (30, N'asdasd', 1, 5, N'Cash', 5, 0, 2, 3, CAST(N'2022-05-29T01:52:39.110' AS DateTime), CAST(N'2022-05-29T02:19:29.153' AS DateTime), 1070, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (31, N'Received with Thanks', 500, 500, N'Cash', 2000, -1500, 1200, 800, CAST(N'2022-05-29T03:40:40.380' AS DateTime), NULL, 1071, NULL)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (32, NULL, 5000, 10000, NULL, 0, 10000, NULL, NULL, CAST(N'2022-05-29T03:43:26.803' AS DateTime), NULL, 1072, 1)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (33, NULL, 20000, 120000, NULL, 0, 120000, NULL, NULL, CAST(N'2022-05-29T16:08:56.460' AS DateTime), NULL, 1073, NULL)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (34, NULL, 12, 12, NULL, 0, 12, NULL, NULL, CAST(N'2022-06-09T21:31:54.600' AS DateTime), NULL, 1074, NULL)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (35, NULL, 12, 12, NULL, 0, 12, NULL, NULL, CAST(N'2022-06-10T00:08:38.543' AS DateTime), NULL, 1076, NULL)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (36, NULL, 10, 10, NULL, 0, 10, NULL, NULL, CAST(N'2022-06-10T00:28:13.670' AS DateTime), NULL, 1077, NULL)
SET IDENTITY_INSERT [dbo].[billing_details_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[cities_tbl] ON 

INSERT [dbo].[cities_tbl] ([id], [cityname], [isDeleted]) VALUES (1, N'Karachi', 0)
INSERT [dbo].[cities_tbl] ([id], [cityname], [isDeleted]) VALUES (2, N'Quetta', 0)
INSERT [dbo].[cities_tbl] ([id], [cityname], [isDeleted]) VALUES (3, N'Jeddah', 0)
INSERT [dbo].[cities_tbl] ([id], [cityname], [isDeleted]) VALUES (4, N'Makkah', 0)
INSERT [dbo].[cities_tbl] ([id], [cityname], [isDeleted]) VALUES (5, N'Madina', 0)
INSERT [dbo].[cities_tbl] ([id], [cityname], [isDeleted]) VALUES (6, N'Dubai', 0)
SET IDENTITY_INSERT [dbo].[cities_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[client_details_tbl] ON 

INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1046, N'Ima Rollins', N'Quibusdam sint vitae', N'19', N'Aliquip amet et ali', N'+1 (699) 279-5847', N'Non omnis velit quo', N'Ut voluptas enim nih', CAST(N'2022-05-27T03:34:03.893' AS DateTime), NULL, NULL, N'Unde do reprehenderi', N'531', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1047, N'Brendan Wilson', N'Qui rerum nisi quam ', N'454', N'Et accusamus dolores', N'+1 (197) 494-9993', N'Labore sed sint duis', N'Voluptas et repudian', CAST(N'2022-05-27T03:49:48.547' AS DateTime), NULL, NULL, N'Voluptate fugit aut', N'423', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1048, N'Jelani Tran', N'Dolorum culpa totam ', N'896', N'Ex commodo consequat', N'+1 (875) 763-6022', N'Aute esse ut quia et', N'Est at perferendis ', CAST(N'2022-05-27T03:53:42.977' AS DateTime), NULL, NULL, N'Omnis et sed facilis', N'623', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1049, N'Brittany Perez', N'Ipsum accusamus pla', N'945', N'Commodi accusamus qu', N'+1 (611) 848-1701', N'Eu sed aut vel dolor', N'Duis voluptate cumqu', CAST(N'2022-05-27T14:09:01.720' AS DateTime), NULL, NULL, N'In sunt consequat N', N'775', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1050, N'Kirby Sampson', N'Dolorum non accusamu', N'73', N'Est similique tempor', N'+1 (678) 902-5081', N'Sed delectus consec', N'Magna quia esse cumq', CAST(N'2022-05-27T14:10:09.653' AS DateTime), NULL, NULL, N'Nobis recusandae Am', N'308', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1051, N'Marsden Howell', N'Suscipit sapiente ve', N'109', N'Irure nostrum ut ill', N'+1 (107) 682-8131', N'Elit reiciendis con', N'Mollitia sit ullamc', CAST(N'2022-05-27T14:12:01.803' AS DateTime), NULL, NULL, N'Et beatae aspernatur', N'767', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1052, N'Francis Acosta', N'Aut voluptate eligen', N'833', N'Dignissimos sunt as', N'+1 (143) 491-1596', N'Quam iure explicabo', N'Omnis est dolor quia', CAST(N'2022-05-27T14:52:19.327' AS DateTime), NULL, NULL, N'Quis qui aut saepe p', N'245', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1053, N'Russell Rutledge', N'Eaque maiores facere', N'107', N'Porro vitae qui cons', N'+1 (101) 446-2538', N'Mollit veniam assum', N'In accusantium anim ', CAST(N'2022-05-27T15:00:31.530' AS DateTime), NULL, NULL, N'Quo accusantium simi', N'928', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1054, N'Thane Soto', N'Qui assumenda fugit', N'396', N'Hic fugiat cum aut ', N'+1 (297) 804-1286', N'Atque eligendi et an', N'Accusantium ullam ip', CAST(N'2022-05-27T15:03:20.890' AS DateTime), NULL, NULL, N'Minim amet ipsam vo', N'562', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1055, N'Thane Soto', N'Qui assumenda fugit', N'396', N'Hic fugiat cum aut ', N'+1 (297) 804-1286', N'Atque eligendi et an', N'Accusantium ullam ip', CAST(N'2022-05-27T15:03:51.937' AS DateTime), NULL, NULL, N'Minim amet ipsam vo', N'562', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1056, N'Lydia Robertson', N'Aute eius eaque nihi', N'4', N'In eos modi numquam ', N'+1 (823) 129-3815', N'Exercitation nostrud', N'Ducimus ut impedit', CAST(N'2022-05-27T15:13:59.047' AS DateTime), NULL, NULL, N'Excepturi similique ', N'684', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1057, N'Kasimir Edwards', N'Pariatur Exercitati', N'86', N'Nihil iste voluptate', N'+1 (865) 566-5629', N'Culpa tenetur ullam', N'Lorem incididunt ad ', CAST(N'2022-05-27T15:14:16.170' AS DateTime), NULL, NULL, N'Qui id veritatis et ', N'543', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1058, N'Isaac Castillo', N'Aliqua Illo quod nu', N'1', N'Itaque in nihil non ', N'+1 (271) 397-5878', N'Aut est repellendus', N'Commodi tempor ut ip', CAST(N'2022-05-27T15:14:27.790' AS DateTime), NULL, NULL, N'Dolores velit sequi ', N'166', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1059, N'Upton Jarvis', N'Ut fugiat accusantiu', N'400', N'Enim labore irure qu', N'+1 (428) 354-6985', N'Ea velit est in blan', N'Et reprehenderit su', CAST(N'2022-05-28T02:36:12.877' AS DateTime), NULL, N'Picture221722889.jpg', N'Consectetur sunt co', N'899', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1060, N'Laith Stokes', N'Et nihil dolor offic', N'811', N'Quod velit itaque u', N'+1 (222) 304-6624', N'Culpa officia dignis', N'Omnis laborum Adipi', CAST(N'2022-05-27T15:34:17.680' AS DateTime), NULL, NULL, N'Quia molestiae aut m', N'641', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1061, N'Delilah Ross', N'Dolorem tenetur iust', N'181', N'Laborum Inventore e', N'+1 (549) 751-6667', N'Voluptate beatae per', N'Vel amet in elit o', CAST(N'2022-05-27T15:34:27.647' AS DateTime), NULL, NULL, N'Ea nostrud nostrum q', N'245', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1062, N'Fredericka Shannon', N'Incididunt excepturi', N'36', N'Ipsam quia et rem in', N'+1 (379) 367-1343', N'Ducimus ut voluptat', N'Tenetur omnis quaera', CAST(N'2022-05-27T15:34:41.010' AS DateTime), NULL, NULL, N'Soluta non ea et con', N'54', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1063, N'Gisela Case', N'Cum consectetur opt', N'640', N'Ea omnis consequatur', N'+1 (517) 238-9239', N'Ipsum ab vel sit ali', N'Perferendis facilis ', CAST(N'2022-05-27T15:39:42.710' AS DateTime), NULL, NULL, N'Qui eveniet qui seq', N'755', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1064, N'Benjamin Cooper', N'Unde hic provident ', N'88', N'Omnis doloribus natu', N'+1 (479) 933-8825', N'Est est reprehender', N'Qui natus aute est q', CAST(N'2022-05-27T15:40:01.803' AS DateTime), NULL, NULL, N'Quas suscipit commod', N'307', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1065, N'Maris Odonnell', N'Architecto sunt iste', N'408', N'Voluptate anim conse', N'+1 (484) 386-2561', N'Quos eos voluptatum', N'Voluptatem explicab', CAST(N'2022-05-28T22:49:02.110' AS DateTime), NULL, NULL, N'Consequuntur aliqua', N'121', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1066, N'Jermaine Farley', N'Architecto proident', N'788', N'Nihil cum consequunt', N'+1 (434) 968-9563', N'A doloribus ducimus', N'Minima dolorem sed t', CAST(N'2022-05-28T22:50:20.797' AS DateTime), NULL, NULL, N'Alias duis et qui vo', N'203', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1067, N'Stacey Mcbride', N'Nemo expedita cupida', N'193', N'Ullam minim tempor d', N'+1 (961) 517-5394', N'Qui mollitia ea volu', N'Omnis laborum Dolor', CAST(N'2022-05-28T22:52:55.720' AS DateTime), NULL, NULL, N'Corporis exercitatio', N'89', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1068, N'Adrian Morse', N'Aut veritatis repell', N'397', N'In consequuntur non ', N'+1 (592) 208-7797', N'Ut maiores porro lor', N'Dolor est consequun', CAST(N'2022-05-28T23:06:24.833' AS DateTime), NULL, NULL, N'Eiusmod iure illo do', N'972', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1069, N'Check', N'Perspiciatis sed am', N'535', N'Optio labore esse q', N'+1 (599) 702-2222', N'Aliqua Eu natus vol', N'Porro aperiam perfer', CAST(N'2022-05-29T01:24:00.747' AS DateTime), NULL, NULL, N'Consectetur optio ', N'251', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1070, N'Carly Beck', N'Quis unde recusandae', N'98', N'Ut sed quis ratione ', N'+1 (357) 348-9269', N'Ullam sequi sit mol', N'Dolor officiis quis ', CAST(N'2022-05-29T01:46:34.693' AS DateTime), NULL, NULL, N'Tempor modi sint quo', N'813', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1071, N'Juliet Rowland', N'Hic aut dolorum eum ', N'577', N'Ut quod mollitia ad ', N'+1 (858) 576-3921', N'Voluptas in eos iure', N'Et ipsa sunt ipsam', CAST(N'2022-05-29T03:40:38.147' AS DateTime), NULL, NULL, N'Temporibus deserunt ', N'4', 0)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1072, N'Cedric Warren', N'Nisi sed assumenda s', N'620', N'Nulla quisquam quia ', N'+1 (209) 246-3288', N'Dolorum sed reprehen', N'Minima soluta sunt e', CAST(N'2022-05-29T03:43:24.697' AS DateTime), NULL, NULL, N'Rerum assumenda veri', N'853', 1)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1073, N'Devin Cox', N'Non reprehenderit de', N'277', N'Excepteur et nihil e', N'+1 (706) 122-6988', N'Officiis iusto odio ', N'Magni reprehenderit', CAST(N'2022-05-29T16:08:56.363' AS DateTime), NULL, NULL, N'Fugiat exercitatione', N'73', 0)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1074, N'Aidan Wells', N'Rerum reprehenderit', N'587', N'Adipisicing dolor an', N'+1 (659) 229-8728', N'Sint autem numquam l', N'Minus ea aut non id ', CAST(N'2022-06-09T21:31:54.077' AS DateTime), NULL, NULL, N'Et facilis sit ut c', N'25', 0)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1075, N'Wayne Huff', N'Ullamco quaerat volu', N'337', N'Tempora esse est la', N'+1 (753) 956-5962', N'Odio nisi hic facere', N'Maiores ratione veli', CAST(N'2022-06-10T00:06:32.560' AS DateTime), NULL, NULL, N'Laborum nesciunt do', N'457', 0)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1076, N'Beverly Mcdowell', N'Mollitia doloremque ', N'966', N'Aliquam nihil volupt', N'+1 (542) 556-2928', N'Rem perferendis non ', N'Ab adipisci rerum ve', CAST(N'2022-06-10T00:08:37.603' AS DateTime), NULL, NULL, N'Harum similique pari', N'341', 0)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1077, N'Skyler Lamb', N'Aspernatur earum dig', N'685', N'Itaque quos laborum', N'+1 (148) 224-8446', N'Est ratione assumend', N'Officia harum volupt', CAST(N'2022-06-10T00:28:12.857' AS DateTime), NULL, NULL, N'Doloremque culpa ea ', N'240', 0)
SET IDENTITY_INSERT [dbo].[client_details_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[flight_details_tbl] ON 

INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (14, 1, N'Odio asperiores cons', 2, 6, CAST(N'20:03:00' AS Time), CAST(N'20:18:00' AS Time), CAST(N'2013-11-21T00:00:00.000' AS DateTime), 1046, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (15, 2, N'Est quia aut quaera', 2, 6, CAST(N'22:27:00' AS Time), CAST(N'21:00:00' AS Time), CAST(N'2005-03-03T00:00:00.000' AS DateTime), 1047, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (16, 2, N'Voluptatem facilis ', 6, 6, CAST(N'10:50:00' AS Time), CAST(N'08:22:00' AS Time), CAST(N'2020-05-31T00:00:00.000' AS DateTime), 1048, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (17, 1, N'Ea officia in quo in', 6, 1, CAST(N'04:09:00' AS Time), CAST(N'23:15:00' AS Time), CAST(N'2020-10-20T00:00:00.000' AS DateTime), 1049, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (18, 2, N'Atque ullam modi et ', 6, 3, CAST(N'15:48:00' AS Time), CAST(N'14:26:00' AS Time), CAST(N'2006-04-04T00:00:00.000' AS DateTime), 1050, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (19, 1, N'Ut corrupti laborio', 3, 3, CAST(N'03:45:00' AS Time), CAST(N'11:35:00' AS Time), CAST(N'1978-05-17T00:00:00.000' AS DateTime), 1051, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (20, 1, N'Fugiat corporis enim', 6, 2, CAST(N'13:05:00' AS Time), CAST(N'15:26:00' AS Time), CAST(N'1999-11-23T00:00:00.000' AS DateTime), 1052, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (21, 1, N'Minima numquam deser', 3, 2, CAST(N'22:38:00' AS Time), CAST(N'14:55:00' AS Time), CAST(N'1979-10-17T00:00:00.000' AS DateTime), 1053, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (22, 1, N'Facere sunt soluta ', 4, 3, CAST(N'21:10:00' AS Time), CAST(N'22:15:00' AS Time), CAST(N'1979-10-30T00:00:00.000' AS DateTime), 1054, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (23, 1, N'Facere sunt soluta ', 4, 3, CAST(N'21:10:00' AS Time), CAST(N'22:15:00' AS Time), CAST(N'1979-10-30T00:00:00.000' AS DateTime), 1055, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (24, 1, N'Eum omnis officiis q', 2, 3, CAST(N'21:13:00' AS Time), CAST(N'22:18:00' AS Time), CAST(N'2008-01-28T00:00:00.000' AS DateTime), 1056, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (25, 2, N'Tempore eaque quia ', 4, 3, CAST(N'16:58:00' AS Time), CAST(N'20:26:00' AS Time), CAST(N'2017-10-16T00:00:00.000' AS DateTime), 1057, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (26, 2, N'Perspiciatis et ut ', 1, 6, CAST(N'15:08:00' AS Time), CAST(N'17:44:00' AS Time), CAST(N'2009-01-25T00:00:00.000' AS DateTime), 1058, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (27, 1, N'Cupidatat modi velit', 5, 3, CAST(N'13:58:00' AS Time), CAST(N'04:28:00' AS Time), CAST(N'2019-10-11T00:00:00.000' AS DateTime), 1059, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (28, 2, N'Architecto temporibu', 2, 3, CAST(N'00:19:00' AS Time), CAST(N'14:21:00' AS Time), CAST(N'1989-07-28T00:00:00.000' AS DateTime), 1060, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (29, 2, N'Et rerum qui ab cupi', 4, 6, CAST(N'06:58:00' AS Time), CAST(N'18:56:00' AS Time), CAST(N'1990-05-21T00:00:00.000' AS DateTime), 1061, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (30, 2, N'Cillum quia dolorum ', 4, 5, CAST(N'09:15:00' AS Time), CAST(N'17:41:00' AS Time), CAST(N'1997-07-08T00:00:00.000' AS DateTime), 1062, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (31, 2, N'Laborum Fuga Dolor', 4, 1, CAST(N'05:30:00' AS Time), CAST(N'01:44:00' AS Time), CAST(N'1993-11-23T00:00:00.000' AS DateTime), 1063, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (32, 2, N'Enim quae ratione at', 1, 3, CAST(N'12:53:00' AS Time), CAST(N'10:20:00' AS Time), CAST(N'1999-03-31T00:00:00.000' AS DateTime), 1064, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (33, 1, N'Consequatur Neque a', 1, 6, CAST(N'17:34:00' AS Time), CAST(N'16:44:00' AS Time), CAST(N'2008-02-29T00:00:00.000' AS DateTime), 1065, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (34, 2, N'Quo quidem et irure ', 2, 4, CAST(N'21:37:00' AS Time), CAST(N'17:20:00' AS Time), CAST(N'1998-11-26T00:00:00.000' AS DateTime), 1066, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (35, 1, N'Eos in voluptas lab', 6, 6, CAST(N'02:53:00' AS Time), CAST(N'00:37:00' AS Time), CAST(N'2017-02-17T00:00:00.000' AS DateTime), 1067, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (36, 2, N'Similique exercitati', 1, 5, CAST(N'09:47:00' AS Time), CAST(N'15:53:00' AS Time), CAST(N'1979-05-02T00:00:00.000' AS DateTime), 1068, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (37, 1, N'Culpa in incididunt ', 1, 3, CAST(N'03:16:00' AS Time), CAST(N'10:47:00' AS Time), CAST(N'1992-09-23T00:00:00.000' AS DateTime), 1069, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (38, 1, N'Ipsum esse qui pari', 2, 2, CAST(N'05:23:00' AS Time), CAST(N'21:55:00' AS Time), CAST(N'2021-04-09T00:00:00.000' AS DateTime), 1070, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (39, 2, N'Quo quidem fugiat do', 6, 1, CAST(N'04:18:00' AS Time), CAST(N'22:36:00' AS Time), CAST(N'1993-08-28T00:00:00.000' AS DateTime), 1071, 0)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (40, 1, N'Porro voluptatibus d', 5, 3, CAST(N'06:11:00' AS Time), CAST(N'17:19:00' AS Time), CAST(N'1981-03-15T00:00:00.000' AS DateTime), 1072, 1)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (41, 2, N'Repudiandae laborum', 6, 6, CAST(N'02:39:00' AS Time), CAST(N'18:48:00' AS Time), CAST(N'1970-08-12T00:00:00.000' AS DateTime), 1073, 0)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (42, 1, N'Quos veniam ullamco', 4, 6, CAST(N'13:09:00' AS Time), CAST(N'21:10:00' AS Time), CAST(N'2016-01-02T00:00:00.000' AS DateTime), 1074, 0)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (43, 1, N'Dolore ducimus sequ', 5, 3, CAST(N'22:49:00' AS Time), CAST(N'00:32:00' AS Time), CAST(N'1993-03-18T00:00:00.000' AS DateTime), 1076, 0)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (44, 1, N'Labore velit hic lab', 1, 1, CAST(N'03:18:00' AS Time), CAST(N'12:40:00' AS Time), CAST(N'1970-08-05T00:00:00.000' AS DateTime), 1077, 0)
SET IDENTITY_INSERT [dbo].[flight_details_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[group_of_people_details_tbl] ON 

INSERT [dbo].[group_of_people_details_tbl] ([id], [name], [passport_number], [isDeleted], [client_id]) VALUES (35, N'Fowazan', N'1234567', 0, 1072)
INSERT [dbo].[group_of_people_details_tbl] ([id], [name], [passport_number], [isDeleted], [client_id]) VALUES (36, N'Farhan', N'1234567', 1, 1073)
INSERT [dbo].[group_of_people_details_tbl] ([id], [name], [passport_number], [isDeleted], [client_id]) VALUES (37, N'Elahi', N'1234567', 1, 1073)
INSERT [dbo].[group_of_people_details_tbl] ([id], [name], [passport_number], [isDeleted], [client_id]) VALUES (38, N'Fowazan', N'12345', 0, 1073)
INSERT [dbo].[group_of_people_details_tbl] ([id], [name], [passport_number], [isDeleted], [client_id]) VALUES (42, N'Fow', N'98765434', 0, 1073)
INSERT [dbo].[group_of_people_details_tbl] ([id], [name], [passport_number], [isDeleted], [client_id]) VALUES (47, N'Elahi', N'1234567', 1, 1073)
SET IDENTITY_INSERT [dbo].[group_of_people_details_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[hotel_details_tbl] ON 

INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (44, N'Erasmus Dunn', N'Fatima Pennington', NULL, NULL, NULL, 3, 1046, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (45, N'Venus Moss', N'Rajah Conway', NULL, NULL, NULL, 2, 1047, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (46, N'Daquan Faulkner', N'Russell Holder', NULL, NULL, NULL, 1, 1048, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (47, N'Coby Rivas', N'Mia Ortiz', NULL, NULL, NULL, 2, 1049, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (48, N'Quyn Hancock', N'Conan Odom', NULL, NULL, NULL, 2, 1050, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (49, N'Zena Welch', N'Matthew Swanson', NULL, NULL, NULL, 3, 1051, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (50, N'Zachery Small', N'Alfreda Hoffman', NULL, NULL, NULL, 2, 1052, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (51, N'Forrest Delaney', N'Tara Rhodes', NULL, NULL, NULL, 4, 1053, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (52, N'Phyllis Noel', N'Gretchen Donovan', NULL, NULL, NULL, 2, 1054, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (53, N'Phyllis Noel', N'Gretchen Donovan', NULL, NULL, NULL, 2, 1055, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (54, N'Devin Andrews', N'Sara Perry', NULL, NULL, NULL, 1, 1056, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (55, N'Melodie Buck', N'Scarlet Saunders', NULL, NULL, NULL, 2, 1057, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (56, N'Chadwick Schultz', N'Karina Pacheco', NULL, NULL, NULL, 2, 1058, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (57, N'Ryan Bridges', N'Ariel Martinez', NULL, NULL, NULL, 1, 1059, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (58, N'Alec Cox', N'Blaine William', NULL, NULL, NULL, 2, 1060, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (59, N'Vielka Carey', N'Halla Gould', NULL, NULL, NULL, 2, 1061, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (60, N'Neil Mcbride', N'Simon Knapp', NULL, NULL, NULL, 4, 1062, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (61, N'Philip Huber', N'Maggie Cotton', NULL, NULL, NULL, 2, 1063, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (62, N'Whilemina England', N'Abel Mcmillan', NULL, NULL, NULL, 2, 1064, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (63, N'Alisa Forbes', N'Alec Cleveland', NULL, NULL, NULL, 1, 1065, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (64, N'Constance Jackson', N'Jescie Harris', NULL, NULL, NULL, 1, 1066, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (65, N'Kylan Zimmerman', N'Kai Terry', NULL, NULL, NULL, 1, 1067, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (66, N'Hedda Juarez', N'Sara Ballard', NULL, NULL, NULL, 4, 1068, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (67, N'Leandra Chang', N'Lucas Acevedo', NULL, NULL, NULL, 1, 1069, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (68, N'Xandra Barber', N'Eleanor Puckett', NULL, NULL, NULL, 1, 1070, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (69, N'Orli Mckenzie', N'Odysseus Kemp', NULL, NULL, NULL, 2, 1071, 0)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (70, N'Perry Curry', N'Harper Burton', NULL, NULL, NULL, 2, 1072, 1)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (71, N'Mufutau Byrd', N'Dominique Bryant', NULL, NULL, NULL, 2, 1073, 0)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (72, N'Chaney Cline', N'Kibo Key', NULL, NULL, NULL, 1, 1074, 0)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (73, N'Kylan Tyler', N'Baxter Goodman', 21, 14, NULL, 4, 1075, 0)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (74, N'Brenden Henry', N'Abel Goodman', 24, 12, NULL, 4, 1076, 0)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (75, N'Wayne Britt', N'Kelsie Simon', 18, 24, NULL, 1, 1077, 0)
SET IDENTITY_INSERT [dbo].[hotel_details_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[package_details_tbl] ON 

INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [packageCost], [airlineCost], [visaCost], [transportCost], [costWithTicket], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (1, N'Ginger Monroe', N'7', N'12', N'13', N'13', N'13', N'31', N'Est saepe occaecat f', N'Quis qui incidunt v', 1, 1076, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [packageCost], [airlineCost], [visaCost], [transportCost], [costWithTicket], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (2, N'Quyn Wilkerson', N'26', N'12', N'12', N'12', N'21', N'12', N'In non vitae beatae ', N'Ut laborum Qui nesc', 1, 1077, 0)
SET IDENTITY_INSERT [dbo].[package_details_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[roomtype_tbl] ON 

INSERT [dbo].[roomtype_tbl] ([id], [type_of_room], [isDeleted]) VALUES (1, N'Quad', 0)
INSERT [dbo].[roomtype_tbl] ([id], [type_of_room], [isDeleted]) VALUES (2, N'Double', 0)
INSERT [dbo].[roomtype_tbl] ([id], [type_of_room], [isDeleted]) VALUES (3, N'Triple', 0)
INSERT [dbo].[roomtype_tbl] ([id], [type_of_room], [isDeleted]) VALUES (4, N'Sharing', 0)
SET IDENTITY_INSERT [dbo].[roomtype_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[transportation_details_tbl] ON 

INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (12, N'Neque in et minima e', N'Qui officia tenetur ', CAST(N'2013-11-21T00:00:00.000' AS DateTime), 1046, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (13, N'Aut sunt do sit cons', N'Laborum Mollitia et', CAST(N'2005-03-03T00:00:00.000' AS DateTime), 1047, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (14, N'Aliquip iusto eaque ', N'Corporis tempora vol', CAST(N'2020-05-31T00:00:00.000' AS DateTime), 1048, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (15, N'Nesciunt dicta est ', N'Qui eveniet consequ', CAST(N'1986-05-12T00:00:00.000' AS DateTime), 1049, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (16, N'Velit ut hic lorem ', N'Incididunt consequat', CAST(N'2016-04-18T00:00:00.000' AS DateTime), 1050, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (17, N'Sint ad est iusto ', N'Quod pariatur Tenet', CAST(N'2019-10-08T00:00:00.000' AS DateTime), 1051, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (18, N'Tempora quod ratione', N'Aute sit voluptates ', CAST(N'1999-01-25T00:00:00.000' AS DateTime), 1052, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (19, N'Tenetur omnis sapien', N'Dolorem duis dicta e', CAST(N'2018-04-21T00:00:00.000' AS DateTime), 1053, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (20, N'Provident tempor mo', N'Officia rerum impedi', CAST(N'2001-12-16T00:00:00.000' AS DateTime), 1054, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (21, N'Provident tempor mo', N'Officia rerum impedi', CAST(N'2001-12-16T00:00:00.000' AS DateTime), 1055, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (22, N'Perspiciatis id ad ', N'Assumenda quia minim', CAST(N'1979-05-18T00:00:00.000' AS DateTime), 1056, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (23, N'Ut velit minim elige', N'Necessitatibus nulla', CAST(N'1974-09-05T00:00:00.000' AS DateTime), 1057, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (24, N'Dolorum nulla deseru', N'Cum pariatur Dolor ', CAST(N'2020-06-19T00:00:00.000' AS DateTime), 1058, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (25, N'Doloremque similique', N'Esse et sed irure ne', CAST(N'2019-10-11T00:00:00.000' AS DateTime), 1059, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (26, N'Beatae amet et ipsa', N'Dolor id non dolor n', CAST(N'1991-11-25T00:00:00.000' AS DateTime), 1060, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (27, N'Inventore sed et ess', N'Quod aut aliqua Lab', CAST(N'1975-09-11T00:00:00.000' AS DateTime), 1061, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (28, N'Quam et nostrum susc', N'Dolor consequatur q', CAST(N'2021-12-06T00:00:00.000' AS DateTime), 1062, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (29, N'Aperiam dolor minima', N'Non iusto anim autem', CAST(N'2021-06-27T00:00:00.000' AS DateTime), 1063, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (30, N'At suscipit officia ', N'Asperiores qui quia ', CAST(N'1997-11-29T00:00:00.000' AS DateTime), 1064, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (31, N'Facilis dolore maxim', N'Deleniti pariatur U', CAST(N'1975-11-07T00:00:00.000' AS DateTime), 1065, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (32, N'In aut deserunt modi', N'Autem in maxime dolo', CAST(N'1977-09-12T00:00:00.000' AS DateTime), 1066, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (33, N'Saepe nesciunt temp', N'Ipsum suscipit ipsu', CAST(N'1982-05-25T00:00:00.000' AS DateTime), 1067, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (34, N'Temporibus voluptate', N'Dolor tempore ipsam', CAST(N'2013-06-09T00:00:00.000' AS DateTime), 1068, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (35, N'Dolore earum distinc', N'Consectetur ipsum ', CAST(N'2007-10-27T00:00:00.000' AS DateTime), 1069, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (36, N'Atque dignissimos la', N'Deleniti ullam dolor', CAST(N'1978-05-20T00:00:00.000' AS DateTime), 1070, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (37, N'Dolores mollitia exp', N'Sed error dolorem di', CAST(N'2003-05-09T00:00:00.000' AS DateTime), 1071, 0)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (38, N'Reprehenderit dolor', N'Atque ex quae molest', CAST(N'1978-05-26T00:00:00.000' AS DateTime), 1072, 1)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (39, N'Quod corporis asperi', N'Incididunt aut est e', CAST(N'1981-05-17T00:00:00.000' AS DateTime), 1073, 0)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (40, N'Neque quo occaecat u', N'Nam deserunt asperio', CAST(N'2014-07-16T00:00:00.000' AS DateTime), 1074, 0)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (41, N'Enim labore obcaecat', N'Nihil veniam expedi', CAST(N'2002-11-05T00:00:00.000' AS DateTime), 1076, 0)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (42, N'Cum do reprehenderit', N'Mollit expedita earu', CAST(N'1971-05-17T00:00:00.000' AS DateTime), 1077, 0)
SET IDENTITY_INSERT [dbo].[transportation_details_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[user_tbl] ON 

INSERT [dbo].[user_tbl] ([id], [name], [username], [email], [password], [address], [isDeleted]) VALUES (1, N'Farhan    ', N'farhan1992', N'ahmedfarhan651@gmail.com', N'1234', N'XYZ', 0)
SET IDENTITY_INSERT [dbo].[user_tbl] OFF
GO
ALTER TABLE [dbo].[billing_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_billing_details_tbl_client_details_tbl] FOREIGN KEY([client_id])
REFERENCES [dbo].[client_details_tbl] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[billing_details_tbl] CHECK CONSTRAINT [FK_billing_details_tbl_client_details_tbl]
GO
ALTER TABLE [dbo].[flight_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_flight_details_tbl_airline_tbl] FOREIGN KEY([airline_name])
REFERENCES [dbo].[airline_tbl] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[flight_details_tbl] CHECK CONSTRAINT [FK_flight_details_tbl_airline_tbl]
GO
ALTER TABLE [dbo].[flight_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_flight_details_tbl_cities_tbl] FOREIGN KEY([departure_from])
REFERENCES [dbo].[cities_tbl] ([id])
GO
ALTER TABLE [dbo].[flight_details_tbl] CHECK CONSTRAINT [FK_flight_details_tbl_cities_tbl]
GO
ALTER TABLE [dbo].[flight_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_flight_details_tbl_cities_tbl1] FOREIGN KEY([arrirved_at])
REFERENCES [dbo].[cities_tbl] ([id])
GO
ALTER TABLE [dbo].[flight_details_tbl] CHECK CONSTRAINT [FK_flight_details_tbl_cities_tbl1]
GO
ALTER TABLE [dbo].[flight_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_flight_details_tbl_client_details_tbl] FOREIGN KEY([client_id])
REFERENCES [dbo].[client_details_tbl] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[flight_details_tbl] CHECK CONSTRAINT [FK_flight_details_tbl_client_details_tbl]
GO
ALTER TABLE [dbo].[group_of_people_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_group_of_people_details_tbl_client_details_tbl] FOREIGN KEY([client_id])
REFERENCES [dbo].[client_details_tbl] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[group_of_people_details_tbl] CHECK CONSTRAINT [FK_group_of_people_details_tbl_client_details_tbl]
GO
ALTER TABLE [dbo].[hotel_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_hotel_details_tbl_cities_tbl] FOREIGN KEY([city_id])
REFERENCES [dbo].[cities_tbl] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[hotel_details_tbl] CHECK CONSTRAINT [FK_hotel_details_tbl_cities_tbl]
GO
ALTER TABLE [dbo].[hotel_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_hotel_details_tbl_client_details_tbl] FOREIGN KEY([client_id])
REFERENCES [dbo].[client_details_tbl] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[hotel_details_tbl] CHECK CONSTRAINT [FK_hotel_details_tbl_client_details_tbl]
GO
ALTER TABLE [dbo].[hotel_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_hotel_details_tbl_roomtype_tbl] FOREIGN KEY([roomtype_id])
REFERENCES [dbo].[roomtype_tbl] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[hotel_details_tbl] CHECK CONSTRAINT [FK_hotel_details_tbl_roomtype_tbl]
GO
ALTER TABLE [dbo].[package_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_package_details_tbl_client_details_tbl] FOREIGN KEY([client_id])
REFERENCES [dbo].[client_details_tbl] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[package_details_tbl] CHECK CONSTRAINT [FK_package_details_tbl_client_details_tbl]
GO
ALTER TABLE [dbo].[transportation_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_transportation_details_tbl_client_details_tbl] FOREIGN KEY([client_id])
REFERENCES [dbo].[client_details_tbl] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[transportation_details_tbl] CHECK CONSTRAINT [FK_transportation_details_tbl_client_details_tbl]
GO
USE [master]
GO
ALTER DATABASE [Gulf_HU] SET  READ_WRITE 
GO
