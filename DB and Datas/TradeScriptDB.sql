USE [master]
GO
/****** Object:  Database [Trade]    Script Date: 24.03.2023 17:44:50 ******/
CREATE DATABASE [Trade]
GO
USE [Trade]
GO
/****** Object:  Table [dbo].[CategoryItem]    Script Date: 24.03.2023 17:44:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManufacturerItem]    Script Date: 24.03.2023 17:44:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManufacturerItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameItem]    Script Date: 24.03.2023 17:44:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 24.03.2023 17:44:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DateOrder] [date] NULL,
	[DateProvide] [date] NULL,
	[PickupPointMailIndex] [int] NULL,
	[UserInfoID] [int] NULL,
	[CodeForGet] [int] NULL,
	[StatusOrderID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderHasProduct]    Script Date: 24.03.2023 17:44:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHasProduct](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[CountProducts] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickupPoint]    Script Date: 24.03.2023 17:44:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickupPoint](
	[NumberPickupPoint] [int] NOT NULL,
	[City] [nvarchar](50) NULL,
	[Street] [nvarchar](50) NULL,
	[House] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[NumberPickupPoint] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 24.03.2023 17:44:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ArticleNumber] [nvarchar](100) NOT NULL,
	[Name] [int] NOT NULL,
	[Unit] [nvarchar](20) NULL,
	[Price] [money] NULL,
	[MaxDiscount] [int] NULL,
	[ManufacturerID] [int] NULL,
	[ProviderItemID] [int] NULL,
	[CategoryItemID] [int] NULL,
	[CurrentDiscount] [int] NULL,
	[CountProductStock] [int] NULL,
	[Discription] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProviderItem]    Script Date: 24.03.2023 17:44:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProviderItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 24.03.2023 17:44:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusOrder]    Script Date: 24.03.2023 17:44:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusOrder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 24.03.2023 17:44:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserLogin] [nvarchar](50) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL,
	[UserInfoID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 24.03.2023 17:44:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CategoryItem] ON 

INSERT [dbo].[CategoryItem] ([ID], [Name]) VALUES (1, N'Товары для кошек')
INSERT [dbo].[CategoryItem] ([ID], [Name]) VALUES (2, N'Для животных')
INSERT [dbo].[CategoryItem] ([ID], [Name]) VALUES (3, N'Товары для собак')
SET IDENTITY_INSERT [dbo].[CategoryItem] OFF
GO
SET IDENTITY_INSERT [dbo].[ManufacturerItem] ON 

INSERT [dbo].[ManufacturerItem] ([ID], [Name]) VALUES (1, N'Dreames')
INSERT [dbo].[ManufacturerItem] ([ID], [Name]) VALUES (2, N'True Touch')
INSERT [dbo].[ManufacturerItem] ([ID], [Name]) VALUES (3, N'Pro Plan')
INSERT [dbo].[ManufacturerItem] ([ID], [Name]) VALUES (4, N'TitBit')
INSERT [dbo].[ManufacturerItem] ([ID], [Name]) VALUES (5, N'Chappy')
INSERT [dbo].[ManufacturerItem] ([ID], [Name]) VALUES (6, N'LIKER')
INSERT [dbo].[ManufacturerItem] ([ID], [Name]) VALUES (7, N'Fancy Pets')
INSERT [dbo].[ManufacturerItem] ([ID], [Name]) VALUES (8, N'Nobby')
INSERT [dbo].[ManufacturerItem] ([ID], [Name]) VALUES (9, N'Triol')
INSERT [dbo].[ManufacturerItem] ([ID], [Name]) VALUES (10, N'Cat Chow')
INSERT [dbo].[ManufacturerItem] ([ID], [Name]) VALUES (11, N'ZooM')
INSERT [dbo].[ManufacturerItem] ([ID], [Name]) VALUES (12, N'trixie')
INSERT [dbo].[ManufacturerItem] ([ID], [Name]) VALUES (13, N'Dog Chow')
SET IDENTITY_INSERT [dbo].[ManufacturerItem] OFF
GO
SET IDENTITY_INSERT [dbo].[NameItem] ON 

INSERT [dbo].[NameItem] ([ID], [Name]) VALUES (1, N'Лакомство')
INSERT [dbo].[NameItem] ([ID], [Name]) VALUES (2, N'Щетка-варежка')
INSERT [dbo].[NameItem] ([ID], [Name]) VALUES (3, N'Сухой корм')
INSERT [dbo].[NameItem] ([ID], [Name]) VALUES (4, N'Мячик')
INSERT [dbo].[NameItem] ([ID], [Name]) VALUES (5, N'Игрушка')
INSERT [dbo].[NameItem] ([ID], [Name]) VALUES (6, N'Миска')
INSERT [dbo].[NameItem] ([ID], [Name]) VALUES (7, N'Лежак')
INSERT [dbo].[NameItem] ([ID], [Name]) VALUES (8, N'Клетка')
SET IDENTITY_INSERT [dbo].[NameItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [DateOrder], [DateProvide], [PickupPointMailIndex], [UserInfoID], [CodeForGet], [StatusOrderID]) VALUES (1, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 603379, NULL, 601, 1)
INSERT [dbo].[Order] ([ID], [DateOrder], [DateProvide], [PickupPointMailIndex], [UserInfoID], [CodeForGet], [StatusOrderID]) VALUES (2, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 400562, NULL, 602, 1)
INSERT [dbo].[Order] ([ID], [DateOrder], [DateProvide], [PickupPointMailIndex], [UserInfoID], [CodeForGet], [StatusOrderID]) VALUES (3, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 410542, 8, 603, 2)
INSERT [dbo].[Order] ([ID], [DateOrder], [DateProvide], [PickupPointMailIndex], [UserInfoID], [CodeForGet], [StatusOrderID]) VALUES (4, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 443890, NULL, 604, 2)
INSERT [dbo].[Order] ([ID], [DateOrder], [DateProvide], [PickupPointMailIndex], [UserInfoID], [CodeForGet], [StatusOrderID]) VALUES (5, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 603379, NULL, 605, 2)
INSERT [dbo].[Order] ([ID], [DateOrder], [DateProvide], [PickupPointMailIndex], [UserInfoID], [CodeForGet], [StatusOrderID]) VALUES (6, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 420151, 7, 606, 2)
INSERT [dbo].[Order] ([ID], [DateOrder], [DateProvide], [PickupPointMailIndex], [UserInfoID], [CodeForGet], [StatusOrderID]) VALUES (7, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 190949, NULL, 607, 1)
INSERT [dbo].[Order] ([ID], [DateOrder], [DateProvide], [PickupPointMailIndex], [UserInfoID], [CodeForGet], [StatusOrderID]) VALUES (8, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 426030, NULL, 608, 1)
INSERT [dbo].[Order] ([ID], [DateOrder], [DateProvide], [PickupPointMailIndex], [UserInfoID], [CodeForGet], [StatusOrderID]) VALUES (9, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 625560, 10, 609, 1)
INSERT [dbo].[Order] ([ID], [DateOrder], [DateProvide], [PickupPointMailIndex], [UserInfoID], [CodeForGet], [StatusOrderID]) VALUES (10, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 190949, 9, 610, 2)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderHasProduct] ON 

INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (1, 1, N'А112Т4', 15)
INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (2, 2, N'F432F4', 15)
INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (3, 3, N'E532Q5', 10)
INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (4, 4, N'G345E4', 1)
INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (5, 5, N'R356F4', 1)
INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (6, 6, N'H436R4', 1)
INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (7, 7, N'H342F5', 2)
INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (8, 8, N'K436T5', 1)
INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (9, 9, N'V527T5', 1)
INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (10, 10, N'M356R4', 1)
INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (11, 1, N'G453T5', 1)
INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (12, 2, N'Y324F4', 15)
INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (13, 3, N'T432F4', 10)
INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (14, 4, N'E345R4', 2)
INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (15, 5, N'E431R5', 10)
INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (16, 6, N'D643B5', 1)
INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (17, 7, N'Q245F5', 2)
INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (18, 8, N'V527T5', 1)
INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (19, 9, N'K452T5', 1)
INSERT [dbo].[OrderHasProduct] ([ID], [OrderID], [ProductArticleNumber], [CountProducts]) VALUES (20, 10, N'W548O7', 1)
SET IDENTITY_INSERT [dbo].[OrderHasProduct] OFF
GO
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (125061, N' г. Нефтеюганск', N' ул. Подгорная', 8)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (125703, N' г. Нефтеюганск', N' ул. Партизанская', 49)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (125837, N' г. Нефтеюганск', N' ул. Шоссейная', 40)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (190949, N' г. Нефтеюганск', N' ул. Мичурина', 26)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (344288, N' г. Нефтеюганск', N' ул. Чехова', 1)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (394060, N' г. Нефтеюганск', N' ул. Фрунзе', 43)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (394242, N' г. Нефтеюганск', N' ул. Коммунистическая', 43)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (394782, N' г. Нефтеюганск', N' ул. Чехова', 3)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (400562, N' г. Нефтеюганск', N' ул. Зеленая', 32)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (410172, N' г. Нефтеюганск', N' ул. Северная', 13)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (410542, N' г. Нефтеюганск', N' ул. Светлая', 46)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (410661, N' г. Нефтеюганск', N' ул. Школьная', 50)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (420151, N' г. Нефтеюганск', N' ул. Вишневая', 32)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (426030, N' г. Нефтеюганск', N' ул. Маяковского', 44)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (443890, N' г. Нефтеюганск', N' ул. Коммунистическая', 1)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (450375, N' г. Нефтеюганск', N' ул. Клубная', 44)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (450558, N' г. Нефтеюганск', N' ул. Набережная', 30)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (450983, N' г. Нефтеюганск', N' ул. Комсомольская', 26)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (454311, N' г. Нефтеюганск', N' ул. Новая', 19)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (603002, N' г. Нефтеюганск', N' ул. Дзержинского', 28)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (603036, N' г. Нефтеюганск', N' ул. Садовая', 4)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (603379, N' г. Нефтеюганск', N' ул. Спортивная', 46)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (603721, N' г. Нефтеюганск', N' ул. Гоголя', 41)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (614164, N' г. Нефтеюганск', N' ул. Степная', 30)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (614510, N' г. Нефтеюганск', N' ул. Маяковского', 47)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (614611, N' г. Нефтеюганск', N' ул. Молодежная', 50)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (614753, N' г. Нефтеюганск', N' ул. Полевая', 35)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (620839, N' г. Нефтеюганск', N' ул. Цветочная', 8)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (625283, N' г. Нефтеюганск', N' ул. Победы', 46)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (625560, N' г. Нефтеюганск', N' ул. Некрасова', 12)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (625590, N' г. Нефтеюганск', N' ул. Коммунистическая', 20)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (625683, N' г. Нефтеюганск', N' ул. 8 Марта', NULL)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (630201, N' г. Нефтеюганск', N' ул. Комсомольская', 17)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (630370, N' г. Нефтеюганск', N' ул. Шоссейная', 24)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (660007, N' г. Нефтеюганск', N' ул. Октябрьская', 19)
INSERT [dbo].[PickupPoint] ([NumberPickupPoint], [City], [Street], [House]) VALUES (660540, N' г. Нефтеюганск', N' ул. Солнечная', 25)
GO
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'B427R5', 6, N'шт.', 400.0000, 15, 9, 2, 2, 4, 5, N'Миска для животных Triol "Стрекоза", 450 мл')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'D356R4', 4, N'шт.', 600.0000, 15, 12, 1, 3, 2, 16, N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'D563F4', 5, N'шт.', 600.0000, 10, 9, 1, 3, 5, 5, N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'D643B5', 3, N'шт.', 4100.0000, 30, 10, 1, 1, 4, 9, N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'E345R4', 5, N'шт.', 199.0000, 5, 7, 2, 1, 5, 7, N'Игрушка для животных «Котик» с кошачьей мятой FANCY PETS')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'E431R5', 1, N'шт.', 170.0000, 5, 9, 2, 3, 5, 5, N'Лакомство для собак Triol Кость из жил 7.5 см, 4шт. в уп.')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'E434U6', 1, N'шт.', 140.0000, 20, 4, 2, 3, 3, 19, N'Лакомство для собак Titbit Лакомый кусочек Нарезка из говядины, 80 г')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'E466T6', 8, N'шт.', 3500.0000, 30, 9, 2, 3, 5, 3, N'Клетка для собак Triol 30671002 61х45.5х52 см серый/белый')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'E532Q5', 1, N'шт.', 166.0000, 15, 4, 1, 3, 5, 18, N'Лакомство для собак Titbit Печенье Био Десерт с лососем стандарт, 350 г')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'F432F4', 3, N'шт.', 1200.0000, 10, 3, 2, 1, 3, 15, N'Сухой корм для кошек Pro Plan с чувствительным пищеварением')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'G345E4', 4, N'шт.', 300.0000, 5, 6, 2, 3, 3, 19, N'Мячик для собак LIKER Мячик Лайкер (6294) оранжевый')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'G453T5', 2, N'шт.', 149.0000, 15, 2, 2, 2, 2, 7, N'Щетка-варежка True Touch для вычесывания шерсти, синий')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'G542F5', 3, N'шт.', 2190.0000, 30, 3, 1, 3, 4, 7, N'Сухой корм для собак Pro Plan при чувствительном пищеварении, ягненок')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'H342F5', 5, N'шт.', 510.0000, 5, 9, 2, 3, 2, 17, N'Игрушка для собак Triol Енот 41 см 12141063 серый')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'H432F4', 6, N'шт.', 385.0000, 10, 9, 2, 2, 2, 17, N'Миска Triol 9002/KIDP3211/30261087 400 мл серебристый')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'H436R4', 5, N'шт.', 300.0000, 15, 9, 1, 3, 2, 15, N'Игрушка для собак Triol 3D плетение EC-04/12171005 бежевый')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'H542R6', 1, N'шт.', 177.0000, 15, 9, 2, 3, 3, 15, N'Лакомство для собак Triol Мясные полоски из кролика, 70 г')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'H643W2', 6, N'шт.', 292.0000, 25, 9, 1, 2, 3, 13, N'Миска Triol CB02/30231002 100 мл бежевый/голубой')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'K436T5', 4, N'шт.', 100.0000, 5, 9, 2, 3, 4, 21, N'Мячик для собак Triol с косточками 12101096 желтый/зеленый')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'K452T5', 7, N'шт.', 800.0000, 25, 11, 2, 3, 2, 17, N'Лежак для собак и кошек ZooM Lama 40х30х8 см бежевый')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'M356R4', 1, N'шт.', 50.0000, 5, 4, 2, 3, 4, 6, N'Лакомство для собак Titbit Гематоген мясной Classic, 35 г')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'Q245F5', 5, N'шт.', 510.0000, 5, 9, 2, 3, 2, 17, N'Игрушка для собак Triol Бобер 41 см 12141063 серый')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'R356F4', 6, N'шт.', 234.0000, 10, 8, 1, 3, 3, 17, N'Миска Nobby с рисунком Dog для собак 130 мл красный')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'S245R4', 3, N'шт.', 280.0000, 15, 10, 2, 1, 3, 8, N'Сухой корм для кошек CAT CHOW')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'T432F4', 3, N'шт.', 1700.0000, 25, 5, 2, 3, 2, 5, N'Сухой корм для собак Chappi говядина по-домашнему, с овощами')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'V352R4', 3, N'шт.', 1700.0000, 25, 5, 1, 3, 4, 9, N'Сухой корм для собак Chappi Мясное изобилие, мясное ассорти')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'V527T5', 5, N'шт.', 640.0000, 5, 9, 1, 3, 5, 4, N'Игрушка для собак Triol Ящерица 39 см коричневый')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'W548O7', 3, N'шт.', 600.0000, 15, 13, 1, 3, 5, 15, N'Сухой корм для щенков DOG CHOW Puppy, ягненок 2.5 кг')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'Y324F4', 1, N'шт.', 86.0000, 5, 4, 1, 3, 4, 17, N'Лакомство для собак Titbit Косточки мясные с индейкой и ягненком, 145 г')
INSERT [dbo].[Product] ([ArticleNumber], [Name], [Unit], [Price], [MaxDiscount], [ManufacturerID], [ProviderItemID], [CategoryItemID], [CurrentDiscount], [CountProductStock], [Discription]) VALUES (N'А112Т4', 1, N'шт.', 123.0000, 30, 1, 1, 1, 3, 6, N'Лакомство для кошек Dreamies Подушечки с курицей, 140 г')
GO
SET IDENTITY_INSERT [dbo].[ProviderItem] ON 

INSERT [dbo].[ProviderItem] ([ID], [Name]) VALUES (1, N'PetShop')
INSERT [dbo].[ProviderItem] ([ID], [Name]) VALUES (2, N'ZooMir')
SET IDENTITY_INSERT [dbo].[ProviderItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([ID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([ID], [RoleName]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[StatusOrder] ON 

INSERT [dbo].[StatusOrder] ([ID], [Name]) VALUES (1, N'Новый ')
INSERT [dbo].[StatusOrder] ([ID], [Name]) VALUES (2, N'Завершен')
SET IDENTITY_INSERT [dbo].[StatusOrder] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserLogin], [UserPassword], [UserInfoID]) VALUES (1, N'pixil59@gmail.com', N'2L6KZG', 1)
INSERT [dbo].[User] ([ID], [UserLogin], [UserPassword], [UserInfoID]) VALUES (2, N'deummecillummu-4992@mail.ru', N'uzWC67', 2)
INSERT [dbo].[User] ([ID], [UserLogin], [UserPassword], [UserInfoID]) VALUES (3, N'vilagajaunne-5170@yandex.ru', N'8ntwUp', 3)
INSERT [dbo].[User] ([ID], [UserLogin], [UserPassword], [UserInfoID]) VALUES (4, N'frusubroppotou656@yandex.ru', N'YOyhfR', 4)
INSERT [dbo].[User] ([ID], [UserLogin], [UserPassword], [UserInfoID]) VALUES (5, N'leuttevitrafo1998@mail.ru', N'RSbvHv', 5)
INSERT [dbo].[User] ([ID], [UserLogin], [UserPassword], [UserInfoID]) VALUES (6, N'frapreubrulloba1141@yandex.ru', N'rwVDh9', 6)
INSERT [dbo].[User] ([ID], [UserLogin], [UserPassword], [UserInfoID]) VALUES (7, N'loudittoimmolau1900@gmail.com', N'LdNyos', 7)
INSERT [dbo].[User] ([ID], [UserLogin], [UserPassword], [UserInfoID]) VALUES (8, N'hittuprofassa4984@mail.com', N'gynQMT', 8)
INSERT [dbo].[User] ([ID], [UserLogin], [UserPassword], [UserInfoID]) VALUES (9, N'freineiciweijau888@yandex.ru', N'AtnDjr', 9)
INSERT [dbo].[User] ([ID], [UserLogin], [UserPassword], [UserInfoID]) VALUES (10, N'nokupekidda2001@gmail.com', N'JlFRCZ', 10)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([ID], [UserSurname], [UserName], [UserPatronymic], [UserRole]) VALUES (1, N'Суслов', N'Илья', N'Арсентьевич', 1)
INSERT [dbo].[UserInfo] ([ID], [UserSurname], [UserName], [UserPatronymic], [UserRole]) VALUES (2, N'Яковлева', N'Ярослава', N'Даниэльевна', 1)
INSERT [dbo].[UserInfo] ([ID], [UserSurname], [UserName], [UserPatronymic], [UserRole]) VALUES (3, N'Игнатьева', N'Алина', N'Михайловна', 1)
INSERT [dbo].[UserInfo] ([ID], [UserSurname], [UserName], [UserPatronymic], [UserRole]) VALUES (4, N'Денисов', N'Михаил', N'Романович', 2)
INSERT [dbo].[UserInfo] ([ID], [UserSurname], [UserName], [UserPatronymic], [UserRole]) VALUES (5, N'Тимофеев', N'Михаил', N'Елисеевич', 2)
INSERT [dbo].[UserInfo] ([ID], [UserSurname], [UserName], [UserPatronymic], [UserRole]) VALUES (6, N'Соловьев', N'Ярослав', N'Маркович', 2)
INSERT [dbo].[UserInfo] ([ID], [UserSurname], [UserName], [UserPatronymic], [UserRole]) VALUES (7, N'Филимонов', N'Роберт', N'Васильевич', 3)
INSERT [dbo].[UserInfo] ([ID], [UserSurname], [UserName], [UserPatronymic], [UserRole]) VALUES (8, N'Шилова', N'Майя', N'Артемьевна', 3)
INSERT [dbo].[UserInfo] ([ID], [UserSurname], [UserName], [UserPatronymic], [UserRole]) VALUES (9, N'Чистякова', N'Виктория', N'Степановна', 3)
INSERT [dbo].[UserInfo] ([ID], [UserSurname], [UserName], [UserPatronymic], [UserRole]) VALUES (10, N'Волкова', N'Эмилия', N'Артёмовна', 3)
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([PickupPointMailIndex])
REFERENCES [dbo].[PickupPoint] ([NumberPickupPoint])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([StatusOrderID])
REFERENCES [dbo].[StatusOrder] ([ID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserInfoID])
REFERENCES [dbo].[UserInfo] ([ID])
GO
ALTER TABLE [dbo].[OrderHasProduct]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[OrderHasProduct]  WITH CHECK ADD FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Product] ([ArticleNumber])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryItemID])
REFERENCES [dbo].[CategoryItem] ([ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[ManufacturerItem] ([ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Name])
REFERENCES [dbo].[NameItem] ([ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProviderItemID])
REFERENCES [dbo].[ProviderItem] ([ID])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserInfoID])
REFERENCES [dbo].[UserInfo] ([ID])
GO
ALTER TABLE [dbo].[UserInfo]  WITH CHECK ADD FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([ID])
GO
USE [master]
GO
ALTER DATABASE [Trade] SET  READ_WRITE 
GO
