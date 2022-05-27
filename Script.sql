
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
/****** Object:  Table [dbo].[billing_details_tbl]    Script Date: 5/27/2022 4:22:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[billing_details_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[detail_of_payment] [varchar](300) NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cities_tbl]    Script Date: 5/27/2022 4:22:50 AM ******/
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
/****** Object:  Table [dbo].[client_details_tbl]    Script Date: 5/27/2022 4:22:50 AM ******/
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
/****** Object:  Table [dbo].[flight_details_tbl]    Script Date: 5/27/2022 4:22:50 AM ******/
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
/****** Object:  Table [dbo].[group_of_people_details_tbl]    Script Date: 5/27/2022 4:22:50 AM ******/
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
/****** Object:  Table [dbo].[hotel_details_tbl]    Script Date: 5/27/2022 4:22:50 AM ******/
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
/****** Object:  Table [dbo].[package_details_tbl]    Script Date: 5/27/2022 4:22:50 AM ******/
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
/****** Object:  Table [dbo].[roomtype_tbl]    Script Date: 5/27/2022 4:22:50 AM ******/
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
/****** Object:  Table [dbo].[transportation_details_tbl]    Script Date: 5/27/2022 4:22:50 AM ******/
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
SET IDENTITY_INSERT [dbo].[airline_tbl] ON 

INSERT [dbo].[airline_tbl] ([id], [airlineName], [isDeleted]) VALUES (1, N'PIA', 0)
INSERT [dbo].[airline_tbl] ([id], [airlineName], [isDeleted]) VALUES (2, N'Airblue', 0)
SET IDENTITY_INSERT [dbo].[airline_tbl] OFF
SET IDENTITY_INSERT [dbo].[billing_details_tbl] ON 

INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (6, NULL, 500000.12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1046, NULL)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (7, NULL, 2000.3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1047, NULL)
INSERT [dbo].[billing_details_tbl] ([id], [detail_of_payment], [total_amount], [payment_type], [amount_recieved], [amount_pending], [expense], [profit_loss], [dateRegistered], [datePayment], [client_id], [isDeleted]) VALUES (8, NULL, 2000.3, NULL, NULL, NULL, NULL, NULL, CAST(N'2022-05-27 03:53:27.837' AS DateTime), NULL, 1048, NULL)
SET IDENTITY_INSERT [dbo].[billing_details_tbl] OFF
SET IDENTITY_INSERT [dbo].[cities_tbl] ON 

INSERT [dbo].[cities_tbl] ([id], [cityname], [isDeleted]) VALUES (1, N'Karachi', 0)
INSERT [dbo].[cities_tbl] ([id], [cityname], [isDeleted]) VALUES (2, N'Quetta', 0)
INSERT [dbo].[cities_tbl] ([id], [cityname], [isDeleted]) VALUES (3, N'Jeddah', 0)
INSERT [dbo].[cities_tbl] ([id], [cityname], [isDeleted]) VALUES (4, N'Makkah', 0)
INSERT [dbo].[cities_tbl] ([id], [cityname], [isDeleted]) VALUES (5, N'Madina', 0)
INSERT [dbo].[cities_tbl] ([id], [cityname], [isDeleted]) VALUES (6, N'Dubai', 0)
SET IDENTITY_INSERT [dbo].[cities_tbl] OFF
SET IDENTITY_INSERT [dbo].[client_details_tbl] ON 

INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1046, N'Ima Rollins', N'Quibusdam sint vitae', N'19', N'Aliquip amet et ali', N'+1 (699) 279-5847', N'Non omnis velit quo', N'Ut voluptas enim nih', CAST(N'2022-05-27 03:34:03.893' AS DateTime), NULL, NULL, N'Unde do reprehenderi', N'531', 0)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1047, N'Brendan Wilson', N'Qui rerum nisi quam ', N'454', N'Et accusamus dolores', N'+1 (197) 494-9993', N'Labore sed sint duis', N'Voluptas et repudian', CAST(N'2022-05-27 03:49:48.547' AS DateTime), NULL, NULL, N'Voluptate fugit aut', N'423', 0)
INSERT [dbo].[client_details_tbl] ([id], [name], [dispatched_to], [passportNumber], [hotelVoucherNo], [phone_number], [address], [shirka], [date], [passport_doc], [picture], [reference_by], [reference_contact_number], [isDeleted]) VALUES (1048, N'Jelani Tran', N'Dolorum culpa totam ', N'896', N'Ex commodo consequat', N'+1 (875) 763-6022', N'Aute esse ut quia et', N'Est at perferendis ', CAST(N'2022-05-27 03:53:42.977' AS DateTime), NULL, NULL, N'Omnis et sed facilis', N'623', 0)
SET IDENTITY_INSERT [dbo].[client_details_tbl] OFF
SET IDENTITY_INSERT [dbo].[flight_details_tbl] ON 

INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (14, 1, N'Odio asperiores cons', 2, 6, CAST(N'20:03:00' AS Time), CAST(N'20:18:00' AS Time), CAST(N'2013-11-21 00:00:00.000' AS DateTime), 1046, 0)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (15, 2, N'Est quia aut quaera', 2, 6, CAST(N'22:27:00' AS Time), CAST(N'21:00:00' AS Time), CAST(N'2005-03-03 00:00:00.000' AS DateTime), 1047, 0)
INSERT [dbo].[flight_details_tbl] ([id], [airline_name], [ticketNo], [departure_from], [arrirved_at], [departure_time], [arrival_time], [date], [client_id], [isDeleted]) VALUES (16, 2, N'Voluptatem facilis ', 6, 6, CAST(N'10:50:00' AS Time), CAST(N'08:22:00' AS Time), CAST(N'2020-05-31 00:00:00.000' AS DateTime), 1048, 0)
SET IDENTITY_INSERT [dbo].[flight_details_tbl] OFF
SET IDENTITY_INSERT [dbo].[group_of_people_details_tbl] ON 

INSERT [dbo].[group_of_people_details_tbl] ([id], [name], [passport_number], [isDeleted], [client_id]) VALUES (10, N'asdasd', N'1231233', NULL, 1046)
INSERT [dbo].[group_of_people_details_tbl] ([id], [name], [passport_number], [isDeleted], [client_id]) VALUES (11, N'asdasd', N'121231', NULL, 1046)
INSERT [dbo].[group_of_people_details_tbl] ([id], [name], [passport_number], [isDeleted], [client_id]) VALUES (12, N'asdasdasd', N'13123123', NULL, 1047)
INSERT [dbo].[group_of_people_details_tbl] ([id], [name], [passport_number], [isDeleted], [client_id]) VALUES (13, N'asdasdad', N'123123123', NULL, 1047)
SET IDENTITY_INSERT [dbo].[group_of_people_details_tbl] OFF
SET IDENTITY_INSERT [dbo].[hotel_details_tbl] ON 

INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [checkin_time], [checkout_time], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (44, N'Erasmus Dunn', N'Fatima Pennington', CAST(N'15:18:00' AS Time), CAST(N'09:02:00' AS Time), NULL, 3, 1046, 0)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [checkin_time], [checkout_time], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (45, N'Venus Moss', N'Rajah Conway', CAST(N'09:26:00' AS Time), CAST(N'20:00:00' AS Time), NULL, 2, 1047, 0)
INSERT [dbo].[hotel_details_tbl] ([id], [hotel_name], [hotelNameMadina], [checkin_time], [checkout_time], [city_id], [roomtype_id], [client_id], [isDeleted]) VALUES (46, N'Daquan Faulkner', N'Russell Holder', CAST(N'19:31:00' AS Time), CAST(N'19:35:00' AS Time), NULL, 1, 1048, 0)
SET IDENTITY_INSERT [dbo].[hotel_details_tbl] OFF
SET IDENTITY_INSERT [dbo].[package_details_tbl] ON 

INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [date_of_departure], [date_of_arrival], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (19, N'b', N'2', CAST(N'2022-02-01 00:00:00.000' AS DateTime), CAST(N'2022-02-26 00:00:00.000' AS DateTime), N'2', N'b', NULL, NULL, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [date_of_departure], [date_of_arrival], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (20, N'asd', N'12', CAST(N'2022-12-31 00:00:00.000' AS DateTime), CAST(N'2022-12-31 00:00:00.000' AS DateTime), N'12', N'asd', NULL, NULL, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [date_of_departure], [date_of_arrival], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (21, N'Economy', N'12', CAST(N'2022-12-03 00:00:00.000' AS DateTime), CAST(N'2022-05-26 00:00:00.000' AS DateTime), N'1233', N'none', NULL, NULL, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [date_of_departure], [date_of_arrival], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (22, N'Henry Cabrera', N'5', CAST(N'1996-04-24 00:00:00.000' AS DateTime), CAST(N'2021-01-14 00:00:00.000' AS DateTime), N'Voluptatum sit non q', N'Qui lorem reiciendis', NULL, NULL, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [date_of_departure], [date_of_arrival], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (23, N'Robert Douglas', N'2', CAST(N'2005-03-15 00:00:00.000' AS DateTime), CAST(N'1984-04-26 00:00:00.000' AS DateTime), N'Velit qui provident', N'Quisquam architecto ', NULL, NULL, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [date_of_departure], [date_of_arrival], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (24, N'Bruno Tucker', N'15', CAST(N'1980-10-09 00:00:00.000' AS DateTime), CAST(N'2004-08-31 00:00:00.000' AS DateTime), N'At quis et ut sed qu', N'Minima facere aut ni', NULL, NULL, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [date_of_departure], [date_of_arrival], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (25, N'Harlan Carey', N'15', CAST(N'1987-12-05 00:00:00.000' AS DateTime), CAST(N'1989-02-16 00:00:00.000' AS DateTime), N'Nam ullamco animi u', N'Quasi consequatur v', NULL, NULL, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [date_of_departure], [date_of_arrival], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (26, N'Elvis Larsen', N'2', CAST(N'1980-02-02 00:00:00.000' AS DateTime), CAST(N'2003-05-11 00:00:00.000' AS DateTime), N'Excepturi dolor porr', N'Qui adipisicing temp', NULL, NULL, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [date_of_departure], [date_of_arrival], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (27, N'Danielle Chan', N'13', CAST(N'2021-03-25 00:00:00.000' AS DateTime), CAST(N'1989-06-05 00:00:00.000' AS DateTime), N'Iusto cum nulla mini', N'Placeat dolor in ve', 2, NULL, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [date_of_departure], [date_of_arrival], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (28, N'Joel Bruce', N'25', CAST(N'1993-04-26 00:00:00.000' AS DateTime), CAST(N'1996-08-09 00:00:00.000' AS DateTime), N'Autem nostrud dolore', N'Eiusmod aliquam amet', 2, NULL, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [date_of_departure], [date_of_arrival], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (29, N'Dylan Potter', N'17', CAST(N'2004-07-02 00:00:00.000' AS DateTime), CAST(N'1981-08-07 00:00:00.000' AS DateTime), N'Quae beatae est reru', N'Velit est sint aliqu', 2, NULL, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [date_of_departure], [date_of_arrival], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (30, N'Kathleen Harrell', N'17', CAST(N'2007-01-05 00:00:00.000' AS DateTime), CAST(N'1996-06-15 00:00:00.000' AS DateTime), N'Ullam velit aut labo', N'Asperiores dicta vel', 1, NULL, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [date_of_departure], [date_of_arrival], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (31, N'Cally Holden', N'27', CAST(N'2013-06-08 00:00:00.000' AS DateTime), CAST(N'2010-09-10 00:00:00.000' AS DateTime), N'Quia id dolore quis ', N'Tempore neque id et', 1, NULL, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [date_of_departure], [date_of_arrival], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (32, N'Logan Delgado', N'25', CAST(N'1975-11-25 00:00:00.000' AS DateTime), CAST(N'2016-01-13 00:00:00.000' AS DateTime), N'Incididunt ea commod', N'Cumque quo Nam maxim', 1, NULL, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [date_of_departure], [date_of_arrival], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (33, N'Stewart Jimenez', N'10', CAST(N'1996-08-22 00:00:00.000' AS DateTime), CAST(N'1992-05-31 00:00:00.000' AS DateTime), N'Ea et sapiente vitae', N'Elit corrupti cons', 1, 1046, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [date_of_departure], [date_of_arrival], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (34, N'Walker Hayes', N'10', CAST(N'2008-12-08 00:00:00.000' AS DateTime), CAST(N'1985-06-12 00:00:00.000' AS DateTime), N'Autem voluptate sint', N'Aut rerum velit obca', 2, 1047, 0)
INSERT [dbo].[package_details_tbl] ([id], [package_name], [no_of_days], [date_of_departure], [date_of_arrival], [pnr], [other_details], [airline_id], [client_id], [isDeleted]) VALUES (35, N'Jolene Camacho', N'14', CAST(N'2014-08-05 00:00:00.000' AS DateTime), CAST(N'1972-02-07 00:00:00.000' AS DateTime), N'Dolor excepteur volu', N'Omnis omnis amet re', 2, 1048, 0)
SET IDENTITY_INSERT [dbo].[package_details_tbl] OFF
SET IDENTITY_INSERT [dbo].[roomtype_tbl] ON 

INSERT [dbo].[roomtype_tbl] ([id], [type_of_room], [isDeleted]) VALUES (1, N'Quad', 0)
INSERT [dbo].[roomtype_tbl] ([id], [type_of_room], [isDeleted]) VALUES (2, N'Double', 0)
INSERT [dbo].[roomtype_tbl] ([id], [type_of_room], [isDeleted]) VALUES (3, N'Triple', 0)
INSERT [dbo].[roomtype_tbl] ([id], [type_of_room], [isDeleted]) VALUES (4, N'Sharing', 0)
SET IDENTITY_INSERT [dbo].[roomtype_tbl] OFF
SET IDENTITY_INSERT [dbo].[transportation_details_tbl] ON 

INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (12, N'Neque in et minima e', N'Qui officia tenetur ', CAST(N'2013-11-21 00:00:00.000' AS DateTime), 1046, 0)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (13, N'Aut sunt do sit cons', N'Laborum Mollitia et', CAST(N'2005-03-03 00:00:00.000' AS DateTime), 1047, 0)
INSERT [dbo].[transportation_details_tbl] ([id], [vechile_type], [route], [date], [client_id], [isDeleted]) VALUES (14, N'Aliquip iusto eaque ', N'Corporis tempora vol', CAST(N'2020-05-31 00:00:00.000' AS DateTime), 1048, 0)
SET IDENTITY_INSERT [dbo].[transportation_details_tbl] OFF
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
