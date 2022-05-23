USE [master]
GO
/****** Object:  Database [Gulf_HU]    Script Date: 5/23/2022 5:33:08 PM ******/
CREATE DATABASE [Gulf_HU]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Gulf_HU', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Gulf_HU.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Gulf_HU_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Gulf_HU_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Gulf_HU] SET COMPATIBILITY_LEVEL = 120
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
ALTER DATABASE [Gulf_HU] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Gulf_HU] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Gulf_HU]
GO
/****** Object:  Table [billing_details_tbl]    Script Date: 5/23/2022 5:33:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [billing_details_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[detail_of_payment] [varchar](300) NULL,
	[total_amount] [varchar](10) NULL,
	[payment_type] [varchar](50) NULL,
	[amount_recieved] [varchar](50) NULL,
	[amount_pending] [varchar](50) NULL,
	[expense] [varchar](10) NULL,
	[profit_loss] [varchar](10) NULL,
	[date] [datetime] NULL,
	[client_id] [int] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_billing_details_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [cities_tbl]    Script Date: 5/23/2022 5:33:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [cities_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cityname] [varchar](50) NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_cities_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [client_details_tbl]    Script Date: 5/23/2022 5:33:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [client_details_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[dispatched_to] [varchar](50) NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [flight_details_tbl]    Script Date: 5/23/2022 5:33:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [flight_details_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[airline_name] [varchar](50) NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [group_of_people_details_tbl]    Script Date: 5/23/2022 5:33:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [group_of_people_details_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[passport_number] [varchar](50) NULL,
	[isDeleted] [bit] NULL,
	[client_id] [int] NULL,
 CONSTRAINT [PK_group_of_people_details_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [hotel_details_tbl]    Script Date: 5/23/2022 5:33:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [hotel_details_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hotel_name] [varchar](50) NULL,
	[checkin_time] [time](7) NULL,
	[checkout_time] [time](7) NULL,
	[city_id] [int] NULL,
	[roomtype_id] [int] NULL,
	[client_id] [int] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_hotel_details_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [package_details_tbl]    Script Date: 5/23/2022 5:33:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [package_details_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[package_name] [varchar](50) NULL,
	[no_of_days] [varchar](5) NULL,
	[date_of_departure] [datetime] NULL,
	[date_of_arrival] [datetime] NULL,
	[pnr] [varchar](50) NULL,
	[other_details] [varchar](300) NULL,
	[airline_id] [int] NULL,
	[client_id] [int] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_package_details_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [roomtype_tbl]    Script Date: 5/23/2022 5:33:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [roomtype_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type_of_room] [varchar](50) NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_roomtype_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [transportation_details_tbl]    Script Date: 5/23/2022 5:33:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [transportation_details_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vechile_type] [varchar](50) NULL,
	[route] [varchar](100) NULL,
	[date] [datetime] NULL,
	[client_id] [int] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_transportation_details_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [cities_tbl] ON 

INSERT [cities_tbl] ([id], [cityname], [isDeleted]) VALUES (1, N'Karachi', NULL)
INSERT [cities_tbl] ([id], [cityname], [isDeleted]) VALUES (2, N'Karachi', 0)
INSERT [cities_tbl] ([id], [cityname], [isDeleted]) VALUES (3, N'Quetta', 1)
INSERT [cities_tbl] ([id], [cityname], [isDeleted]) VALUES (4, N'Quetta', 0)
INSERT [cities_tbl] ([id], [cityname], [isDeleted]) VALUES (5, N'Jeddah', 0)
INSERT [cities_tbl] ([id], [cityname], [isDeleted]) VALUES (6, N'Makkah', 0)
INSERT [cities_tbl] ([id], [cityname], [isDeleted]) VALUES (7, N'Madina', 0)
INSERT [cities_tbl] ([id], [cityname], [isDeleted]) VALUES (8, N'Dubai', 0)
SET IDENTITY_INSERT [cities_tbl] OFF
SET IDENTITY_INSERT [client_details_tbl] ON 

INSERT [client_details_tbl] ([id], [name], [dispatched_to], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1031, N'b', N'b', N'2', N'b', N'b', CAST(N'2022-05-23 03:29:54.703' AS DateTime), NULL, NULL, N'b', N'2', 0)
INSERT [client_details_tbl] ([id], [name], [dispatched_to], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1032, N'asd', N'asd', N'87', N'sad', N'asd', CAST(N'2022-05-23 03:30:41.430' AS DateTime), NULL, NULL, N'asd', N'asd', 0)
INSERT [client_details_tbl] ([id], [name], [dispatched_to], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1033, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [client_details_tbl] OFF
SET IDENTITY_INSERT [flight_details_tbl] ON 

INSERT [flight_details_tbl] ([id], [airline_name], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (19, N'aasdasd', 5, 1, CAST(N'01:00:00' AS Time), CAST(N'01:00:00' AS Time), CAST(N'2022-01-01 00:00:00.000' AS DateTime), 1031, NULL)
INSERT [flight_details_tbl] ([id], [airline_name], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (22, N'asd', 1, 1, CAST(N'12:59:00' AS Time), CAST(N'12:59:00' AS Time), CAST(N'2022-12-31 00:00:00.000' AS DateTime), 1032, NULL)
SET IDENTITY_INSERT [flight_details_tbl] OFF
SET IDENTITY_INSERT [group_of_people_details_tbl] ON 

INSERT [group_of_people_details_tbl] ([id], [name], [passport_number], [isDeleted], [client_id]) VALUES (6, N'Ahsanassdasdasd', N'0811231231', NULL, 1032)
INSERT [group_of_people_details_tbl] ([id], [name], [passport_number], [isDeleted], [client_id]) VALUES (7, N'asdasd', N'1231231', NULL, 1031)
INSERT [group_of_people_details_tbl] ([id], [name], [passport_number], [isDeleted], [client_id]) VALUES (8, N'asdasd', N'1312312311', NULL, 1031)
INSERT [group_of_people_details_tbl] ([id], [name], [passport_number], [isDeleted], [client_id]) VALUES (9, N'asdasdas', N'13123123', NULL, 1031)
SET IDENTITY_INSERT [group_of_people_details_tbl] OFF
SET IDENTITY_INSERT [hotel_details_tbl] ON 

INSERT [hotel_details_tbl] ([id], [hotel_name], [checkin_time], [checkout_time], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (30, N'b', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), NULL, NULL, 1031, NULL)
INSERT [hotel_details_tbl] ([id], [hotel_name], [checkin_time], [checkout_time], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (31, N'asd', CAST(N'12:59:00' AS Time), CAST(N'12:59:00' AS Time), NULL, NULL, 1032, NULL)
SET IDENTITY_INSERT [hotel_details_tbl] OFF
SET IDENTITY_INSERT [package_details_tbl] ON 

INSERT [package_details_tbl] ([id], [package_name], [no_of_days], [date_of_departure], [date_of_arrival], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (19, N'b', N'2', CAST(N'2022-02-01 00:00:00.000' AS DateTime), CAST(N'2022-02-26 00:00:00.000' AS DateTime), N'2', N'b', NULL, 1031, NULL)
INSERT [package_details_tbl] ([id], [package_name], [no_of_days], [date_of_departure], [date_of_arrival], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (20, N'asd', N'12', CAST(N'2022-12-31 00:00:00.000' AS DateTime), CAST(N'2022-12-31 00:00:00.000' AS DateTime), N'12', N'asd', NULL, 1032, NULL)
SET IDENTITY_INSERT [package_details_tbl] OFF
SET IDENTITY_INSERT [roomtype_tbl] ON 

INSERT [roomtype_tbl] ([id], [type_of_room], [isDeleted]) VALUES (1, N'Quad', 0)
INSERT [roomtype_tbl] ([id], [type_of_room], [isDeleted]) VALUES (2, N'Double', 0)
INSERT [roomtype_tbl] ([id], [type_of_room], [isDeleted]) VALUES (3, N'Triple', 0)
INSERT [roomtype_tbl] ([id], [type_of_room], [isDeleted]) VALUES (4, N'Sharing', 0)
SET IDENTITY_INSERT [roomtype_tbl] OFF
ALTER TABLE [billing_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_billing_details_tbl_client_details_tbl] FOREIGN KEY([client_id])
REFERENCES [client_details_tbl] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [billing_details_tbl] CHECK CONSTRAINT [FK_billing_details_tbl_client_details_tbl]
GO
ALTER TABLE [flight_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_flight_details_tbl_cities_tbl] FOREIGN KEY([departure_from])
REFERENCES [cities_tbl] ([id])
GO
ALTER TABLE [flight_details_tbl] CHECK CONSTRAINT [FK_flight_details_tbl_cities_tbl]
GO
ALTER TABLE [flight_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_flight_details_tbl_cities_tbl1] FOREIGN KEY([arrirved_at])
REFERENCES [cities_tbl] ([id])
GO
ALTER TABLE [flight_details_tbl] CHECK CONSTRAINT [FK_flight_details_tbl_cities_tbl1]
GO
ALTER TABLE [flight_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_flight_details_tbl_client_details_tbl] FOREIGN KEY([client_id])
REFERENCES [client_details_tbl] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [flight_details_tbl] CHECK CONSTRAINT [FK_flight_details_tbl_client_details_tbl]
GO
ALTER TABLE [group_of_people_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_group_of_people_details_tbl_client_details_tbl] FOREIGN KEY([client_id])
REFERENCES [client_details_tbl] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [group_of_people_details_tbl] CHECK CONSTRAINT [FK_group_of_people_details_tbl_client_details_tbl]
GO
ALTER TABLE [hotel_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_hotel_details_tbl_cities_tbl] FOREIGN KEY([city_id])
REFERENCES [cities_tbl] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [hotel_details_tbl] CHECK CONSTRAINT [FK_hotel_details_tbl_cities_tbl]
GO
ALTER TABLE [hotel_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_hotel_details_tbl_client_details_tbl] FOREIGN KEY([client_id])
REFERENCES [client_details_tbl] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [hotel_details_tbl] CHECK CONSTRAINT [FK_hotel_details_tbl_client_details_tbl]
GO
ALTER TABLE [hotel_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_hotel_details_tbl_roomtype_tbl] FOREIGN KEY([roomtype_id])
REFERENCES [roomtype_tbl] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [hotel_details_tbl] CHECK CONSTRAINT [FK_hotel_details_tbl_roomtype_tbl]
GO
ALTER TABLE [package_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_package_details_tbl_client_details_tbl] FOREIGN KEY([client_id])
REFERENCES [client_details_tbl] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [package_details_tbl] CHECK CONSTRAINT [FK_package_details_tbl_client_details_tbl]
GO
ALTER TABLE [package_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_package_details_tbl_flight_details_tbl] FOREIGN KEY([airline_id])
REFERENCES [flight_details_tbl] ([id])
GO
ALTER TABLE [package_details_tbl] CHECK CONSTRAINT [FK_package_details_tbl_flight_details_tbl]
GO
ALTER TABLE [transportation_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_transportation_details_tbl_client_details_tbl] FOREIGN KEY([client_id])
REFERENCES [client_details_tbl] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [transportation_details_tbl] CHECK CONSTRAINT [FK_transportation_details_tbl_client_details_tbl]
GO
USE [master]
GO
ALTER DATABASE [Gulf_HU] SET  READ_WRITE 
GO
