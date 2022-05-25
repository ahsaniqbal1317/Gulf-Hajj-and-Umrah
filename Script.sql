USE [master]
GO
/****** Object:  Database [Gulf_HU]    Script Date: 5/26/2022 3:01:02 AM ******/
CREATE DATABASE [Gulf_HU]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Gulf_HU', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Gulf_HU.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
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
/****** Object:  Table [dbo].[airline_tbl]    Script Date: 5/26/2022 3:01:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[airline_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[airlineName] [varchar](50) NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_airline_tbl_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[billing_details_tbl]    Script Date: 5/26/2022 3:01:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[billing_details_tbl](
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
/****** Object:  Table [dbo].[cities_tbl]    Script Date: 5/26/2022 3:01:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cities_tbl](
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
/****** Object:  Table [dbo].[client_details_tbl]    Script Date: 5/26/2022 3:01:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[flight_details_tbl]    Script Date: 5/26/2022 3:01:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[group_of_people_details_tbl]    Script Date: 5/26/2022 3:01:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hotel_details_tbl]    Script Date: 5/26/2022 3:01:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hotel_details_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hotel_name] [varchar](50) NULL,
	[hotelNameMadina] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[package_details_tbl]    Script Date: 5/26/2022 3:01:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[package_details_tbl](
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
/****** Object:  Table [dbo].[roomtype_tbl]    Script Date: 5/26/2022 3:01:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[roomtype_tbl](
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
/****** Object:  Table [dbo].[transportation_details_tbl]    Script Date: 5/26/2022 3:01:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
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
ALTER TABLE [dbo].[package_details_tbl]  WITH CHECK ADD  CONSTRAINT [FK_package_details_tbl_flight_details_tbl] FOREIGN KEY([airline_id])
REFERENCES [dbo].[flight_details_tbl] ([id])
GO
ALTER TABLE [dbo].[package_details_tbl] CHECK CONSTRAINT [FK_package_details_tbl_flight_details_tbl]
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
