USE [master]
GO
/****** Object:  Database [Gulf_HU]    Script Date: 8/11/2022 12:19:30 AM ******/
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
/****** Object:  Table [dbo].[airline_tbl]    Script Date: 8/11/2022 12:19:30 AM ******/
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
/****** Object:  Table [dbo].[billing_details_tbl]    Script Date: 8/11/2022 12:19:30 AM ******/
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
/****** Object:  Table [dbo].[cities_tbl]    Script Date: 8/11/2022 12:19:30 AM ******/
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
/****** Object:  Table [dbo].[client_details_tbl]    Script Date: 8/11/2022 12:19:30 AM ******/
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
/****** Object:  Table [dbo].[flight_details_tbl]    Script Date: 8/11/2022 12:19:30 AM ******/
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
/****** Object:  Table [dbo].[group_of_people_details_tbl]    Script Date: 8/11/2022 12:19:30 AM ******/
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
 CONSTRAINT [PK_group_of_people_details_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotel_details_tbl]    Script Date: 8/11/2022 12:19:30 AM ******/
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
/****** Object:  Table [dbo].[package_details_tbl]    Script Date: 8/11/2022 12:19:30 AM ******/
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
/****** Object:  Table [dbo].[roomtype_tbl]    Script Date: 8/11/2022 12:19:30 AM ******/
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
/****** Object:  Table [dbo].[transportation_details_tbl]    Script Date: 8/11/2022 12:19:30 AM ******/
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
/****** Object:  Table [dbo].[user_tbl]    Script Date: 8/11/2022 12:19:30 AM ******/
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

INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [clientPaymentForOne], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (56, NULL, 1000, 1000, NULL, 0, 1000, NULL, NULL, CAST(N'2022-08-10T23:53:25.797' AS DateTime), NULL, 1106, NULL)
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

INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [whatsAppNumber], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted], [userID]) VALUES (1106, N'Brody Jacobson', N'Temporibus veniam b', N'15', N'Sed officia soluta c', N'+1 (688) 463-4989', N'572', N'Cupiditate sunt et s', N'Sed Nam aliquam sit ', CAST(N'2022-08-10T23:53:25.173' AS DateTime), NULL, NULL, N'Tenetur commodo et d', N'658', 0, NULL)
SET IDENTITY_INSERT [dbo].[client_details_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[flight_details_tbl] ON 

INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [airlineNameReturn], [returnTicketNumber], [returnArrival], [returnDeparture], [dateOfReturn], [client_id], [isDeleted]) VALUES (64, 2, N'Quia ad dolores pers', 1, 3, CAST(N'09:05:00' AS Time), CAST(N'01:02:00' AS Time), CAST(N'2002-04-05T00:00:00.000' AS DateTime), 1, N'774', 3, 4, CAST(N'1972-06-01T00:00:00.000' AS DateTime), 1106, 0)
SET IDENTITY_INSERT [dbo].[flight_details_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[hotel_details_tbl] ON 

INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [daysMakkah], [daysMadina], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (104, N'Cullen Hopkins', N'Kato Hays', 9, 13, NULL, 1, 1106, 0)
SET IDENTITY_INSERT [dbo].[hotel_details_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[package_details_tbl] ON 

INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [packageCost], [airlineCost], [visaCost], [transportCost], [costWithTicket], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (28, N'Finn Castillo', NULL, N'1200', N'1200', N'1200', N'1200', N'1200', N'1234', N'Explicabo Praesenti', 1, NULL, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [packageCost], [airlineCost], [visaCost], [transportCost], [costWithTicket], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (29, N'Emma Hall', NULL, N'1200', N'1200', N'1200', N'1200', N'1200', N'1234', N'Officia sit in vero', 1, NULL, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [packageCost], [airlineCost], [visaCost], [transportCost], [costWithTicket], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (30, N'Castor Hopkins', NULL, N'1200', N'1200', N'1200', N'1200', N'1200', N'1234', N'Qui deserunt dolor s', 2, 1106, 0)
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

INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (62, N'Anim et id aut provi', N'Culpa autem exercit', CAST(N'2004-03-13T00:00:00.000' AS DateTime), 1106, 0)
SET IDENTITY_INSERT [dbo].[transportation_details_tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[user_tbl] ON 

INSERT [dbo].[user_tbl] ([id], [name], [username], [email], [password], [address], [isDeleted]) VALUES (1, N'Farhan    ', N'admin', N'ahmedfarhan651@gmail.com', N'1234', N'XYZ', 0)
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
ALTER DATABASE [Gulf_HU] SET  READ_WRITE 
GO
