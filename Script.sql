USE [master]
GO
/****** Object:  Database [GULF_HU]    Script Date: 8/18/2022 12:42:59 AM ******/
CREATE DATABASE [GULF_HU]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GULF_HU', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\GULF_HU.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GULF_HU_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\GULF_HU_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [GULF_HU] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GULF_HU].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GULF_HU] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GULF_HU] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GULF_HU] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GULF_HU] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GULF_HU] SET ARITHABORT OFF 
GO
ALTER DATABASE [GULF_HU] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GULF_HU] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GULF_HU] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GULF_HU] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GULF_HU] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GULF_HU] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GULF_HU] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GULF_HU] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GULF_HU] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GULF_HU] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GULF_HU] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GULF_HU] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GULF_HU] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GULF_HU] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GULF_HU] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GULF_HU] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GULF_HU] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GULF_HU] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GULF_HU] SET  MULTI_USER 
GO
ALTER DATABASE [GULF_HU] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GULF_HU] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GULF_HU] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GULF_HU] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GULF_HU] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GULF_HU] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [GULF_HU] SET QUERY_STORE = OFF
GO
USE [GULF_HU]
GO
/****** Object:  Table [dbo].[airline_tbl]    Script Date: 8/18/2022 12:42:59 AM ******/
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
/****** Object:  Table [dbo].[billing_details_tbl]    Script Date: 8/18/2022 12:42:59 AM ******/
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
/****** Object:  Table [dbo].[cities_tbl]    Script Date: 8/18/2022 12:42:59 AM ******/
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
/****** Object:  Table [dbo].[client_details_tbl]    Script Date: 8/18/2022 12:42:59 AM ******/
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
	[whatsAppNumber] [varchar](20) NULL,
	[address] [varchar](200) NULL,
	[shirka] [varchar](50) NULL,
	[date] [datetime] NULL,
	[passport_doc] [varchar](300) NULL,
	[picture] [varchar](300) NULL,
	[reference_by] [varchar](50) NULL,
	[reference_contact_number] [varchar](20) NULL,
	[isDeleted] [bit] NULL,
	[userID] [int] NULL,
 CONSTRAINT [PK_client_details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[flight_details_tbl]    Script Date: 8/18/2022 12:42:59 AM ******/
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
	[airlineNameReturn] [int] NULL,
	[returnTicketNumber] [varchar](50) NULL,
	[returnArrival] [int] NULL,
	[returnDeparture] [int] NULL,
	[dateOfReturn] [datetime] NULL,
	[client_id] [int] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_airline_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[group_of_people_details_tbl]    Script Date: 8/18/2022 12:42:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group_of_people_details_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[passport_number] [varchar](50) NULL,
	[phoneNumber] [varchar](20) NULL,
	[isDeleted] [bit] NULL,
	[client_id] [int] NULL,
	[packageAmount] [float] NULL,
	[airlineAmount] [float] NULL,
	[visaAmount] [float] NULL,
	[transportAmount] [float] NULL,
	[ticketAmount] [float] NULL,
 CONSTRAINT [PK_group_of_people_details_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotel_details_tbl]    Script Date: 8/18/2022 12:42:59 AM ******/
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
/****** Object:  Table [dbo].[package_details_tbl]    Script Date: 8/18/2022 12:42:59 AM ******/
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
/****** Object:  Table [dbo].[roomtype_tbl]    Script Date: 8/18/2022 12:42:59 AM ******/
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
/****** Object:  Table [dbo].[transportation_details_tbl]    Script Date: 8/18/2022 12:42:59 AM ******/
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
/****** Object:  Table [dbo].[user_tbl]    Script Date: 8/18/2022 12:42:59 AM ******/
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
	[roles] [int] NULL,
 CONSTRAINT [PK_user_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[airline_tbl] ON 

INSERT [dbo].[airline_tbl] ([id], [airlineName], [isDeleted]) VALUES (1, N'PIA', 0)
INSERT [dbo].[airline_tbl] ([id], [airlineName], [isDeleted]) VALUES (2, N'Air Blue', 0)
INSERT [dbo].[airline_tbl] ([id], [airlineName], [isDeleted]) VALUES (3, N'Serene', 0)
SET IDENTITY_INSERT [dbo].[airline_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[billing_details_tbl] ON 

INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (1, NULL, 1000, NULL, NULL, 2000, NULL, NULL, NULL, CAST(N'2022-08-17T17:50:49.923' AS DateTime), NULL, 2, NULL)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (2, NULL, 10000, 10000, NULL, 0, 10000, NULL, NULL, CAST(N'2022-08-18T00:22:07.113' AS DateTime), NULL, 4, NULL)
SET IDENTITY_INSERT [dbo].[billing_details_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[cities_tbl] ON 

INSERT [dbo].[cities_tbl] ([id], [cityname], [isDeleted]) VALUES (1, N'Quetta', 0)
INSERT [dbo].[cities_tbl] ([id], [cityname], [isDeleted]) VALUES (2, N'Karachi', 0)
INSERT [dbo].[cities_tbl] ([id], [cityname], [isDeleted]) VALUES (3, N'Makkah', 0)
INSERT [dbo].[cities_tbl] ([id], [cityname], [isDeleted]) VALUES (4, N'Madina', 0)
INSERT [dbo].[cities_tbl] ([id], [cityname], [isDeleted]) VALUES (5, N'Jeddah', 0)
INSERT [dbo].[cities_tbl] ([id], [cityname], [isDeleted]) VALUES (6, N'Lahore', 0)
SET IDENTITY_INSERT [dbo].[cities_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[client_details_tbl] ON 

INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [whatsAppNumber], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted], [userID]) VALUES (2, N'Farhan', N'Ahsan', N'12345', N'abc-123', N'03138275508', N'03138275508', N'Brewery Road Quetta', N'Hajj Ul Qaisar', CAST(N'2022-08-17T17:50:49.670' AS DateTime), N'3225049670.jpg', N'2225049673.jpg', N'Adil', N'0321233455', 0, NULL)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [whatsAppNumber], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted], [userID]) VALUES (3, N'Briar Diaz', N'Dicta beatae velit a', N'569', N'Molestiae aute rem m', N'+1 (346) 629-1292', N'709', N'Incidunt sunt aliqu', N'Magnam cupidatat quo', CAST(N'2022-08-18T00:17:20.050' AS DateTime), NULL, NULL, N'Qui et esse cumque e', N'798', 0, NULL)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [whatsAppNumber], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted], [userID]) VALUES (4, N'Tyrone Dominguez', N'Quam ut quo ratione ', N'307', N'Numquam enim sit cup', N'+1 (343) 883-3596', N'207', N'Iusto duis sit ad al', N'Deserunt totam eum v', CAST(N'2022-08-18T00:22:06.053' AS DateTime), NULL, NULL, N'Consequat Quo solut', N'996', 0, NULL)
SET IDENTITY_INSERT [dbo].[client_details_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[flight_details_tbl] ON 

INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [airlineNameReturn], [returnTicketNumber], [returnArrival], [returnDeparture], [dateOfReturn], [client_id], [isDeleted]) VALUES (1, 1, N'PBX12345', 1, 2, CAST(N'17:54:00' AS Time), CAST(N'17:53:00' AS Time), CAST(N'2022-08-31T00:00:00.000' AS DateTime), 1, N'PBX12345', 3, 2, CAST(N'2022-09-01T00:00:00.000' AS DateTime), 2, 0)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [airlineNameReturn], [returnTicketNumber], [returnArrival], [returnDeparture], [dateOfReturn], [client_id], [isDeleted]) VALUES (2, 3, N'Nisi quos quidem iur', 1, 4, CAST(N'09:56:00' AS Time), CAST(N'20:58:00' AS Time), CAST(N'2007-06-10T00:00:00.000' AS DateTime), 3, N'389', 2, 2, CAST(N'1975-09-07T00:00:00.000' AS DateTime), 4, 0)
SET IDENTITY_INSERT [dbo].[flight_details_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[group_of_people_details_tbl] ON 

INSERT [dbo].[group_of_people_details_tbl] ([id], [name], [passport_number], [phoneNumber], [isDeleted], [client_id], [packageAmount], [airlineAmount], [visaAmount], [transportAmount], [ticketAmount]) VALUES (1, N'Elahi', N'abc1235', N'933222`', 1, 2, 1000, 1000, 1000, 1000, NULL)
INSERT [dbo].[group_of_people_details_tbl] ([id], [name], [passport_number], [phoneNumber], [isDeleted], [client_id], [packageAmount], [airlineAmount], [visaAmount], [transportAmount], [ticketAmount]) VALUES (2, N'Elahi', N'ABC-12345', N'03138275508', NULL, 2, 10000, 10000, NULL, 10000, NULL)
SET IDENTITY_INSERT [dbo].[group_of_people_details_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[hotel_details_tbl] ON 

INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (2, N'Makkah Hotel', N'Madina Hotel', 2, 4, NULL, 2, 2, 0)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (3, N'Linus Juarez', N'Galvin Bishop', 26, 27, NULL, 3, 3, 0)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (4, N'Hedy Pugh', N'Megan Hoffman', 4, 25, NULL, 1, 4, 0)
SET IDENTITY_INSERT [dbo].[hotel_details_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[package_details_tbl] ON 

INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [packageCost], [airlineCost], [visaCost], [transportCost], [costWithTicket], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (2, N'Golden', NULL, N'1000', N'1000', N'1000', N'1000', N'1000', N'1234', N'No Other Details', 1, 2, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [packageCost], [airlineCost], [visaCost], [transportCost], [costWithTicket], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (3, N'Quon Love', NULL, N'1000', N'1000', N'1000', N'1000', N'1000', N'Ipsa qui aliquam in', N'Unde hic accusantium', 3, 4, 0)
SET IDENTITY_INSERT [dbo].[package_details_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[roomtype_tbl] ON 

INSERT [dbo].[roomtype_tbl] ([id], [type_of_room], [isDeleted]) VALUES (1, N'Single', 0)
INSERT [dbo].[roomtype_tbl] ([id], [type_of_room], [isDeleted]) VALUES (2, N'Double', 0)
INSERT [dbo].[roomtype_tbl] ([id], [type_of_room], [isDeleted]) VALUES (3, N'Triple', 0)
INSERT [dbo].[roomtype_tbl] ([id], [type_of_room], [isDeleted]) VALUES (4, N'Quad', 0)
SET IDENTITY_INSERT [dbo].[roomtype_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[transportation_details_tbl] ON 

INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (1, N'Bus', N'Jeddah to Makkah', CAST(N'2022-08-18T00:00:00.000' AS DateTime), 2, 0)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (2, N'Harum blanditiis quo', N'Iusto molestias culp', CAST(N'2000-10-02T00:00:00.000' AS DateTime), 4, 0)
SET IDENTITY_INSERT [dbo].[transportation_details_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[user_tbl] ON 

INSERT [dbo].[user_tbl] ([id], [name], [username], [email], [password], [address], [isDeleted], [roles]) VALUES (2, N'Ahsan     ', N'ahsan', N'ahsan@ahsan.com', N'123', N'Brewery Road Quetta', 1, NULL)
INSERT [dbo].[user_tbl] ([id], [name], [username], [email], [password], [address], [isDeleted], [roles]) VALUES (3, N'master    ', N'master', N'master@master.com', N'123', N'House # 64, Muhalla Killi Deba Gulshanabad Phase 2, Quetta Cantt', 0, NULL)
SET IDENTITY_INSERT [dbo].[user_tbl] OFF
GO
ALTER TABLE [dbo].[billing_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_billing_details_tbl_client_details_tbl] FOREIGN KEY([client_id])
REFERENCES [dbo].[client_details_tbl] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[billing_details_tbl] CHECK CONSTRAINT [FK_billing_details_tbl_client_details_tbl]
GO
ALTER TABLE [dbo].[client_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_client_details_tbl_user_tbl] FOREIGN KEY([userID])
REFERENCES [dbo].[user_tbl] ([id])
GO
ALTER TABLE [dbo].[client_details_tbl] CHECK CONSTRAINT [FK_client_details_tbl_user_tbl]
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
ALTER DATABASE [GULF_HU] SET  READ_WRITE 
GO
