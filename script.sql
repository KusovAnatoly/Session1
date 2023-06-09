USE [Database2]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 03.06.2023 17:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[PassportID] [int] NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[Email] [nvarchar](254) NOT NULL,
	[Password] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 03.06.2023 17:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[PositionID] [int] NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Login] [nvarchar](254) NOT NULL,
	[Password] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginHistory]    Script Date: 03.06.2023 17:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginHistory](
	[LoginHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[Time] [datetime] NOT NULL,
	[LoginStatusID] [int] NOT NULL,
 CONSTRAINT [PK_LoginHistory] PRIMARY KEY CLUSTERED 
(
	[LoginHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginStatus]    Script Date: 03.06.2023 17:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginStatus](
	[LoginStatusID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoginStatus] PRIMARY KEY CLUSTERED 
(
	[LoginStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 03.06.2023 17:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderCode] [nvarchar](50) NOT NULL,
	[DateCreated] [date] NOT NULL,
	[OrderTime] [time](7) NOT NULL,
	[ClientID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
	[DateClosed] [date] NULL,
	[Time] [smallint] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderService]    Script Date: 03.06.2023 17:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderService](
	[OrderServiceID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
 CONSTRAINT [PK_OrderService] PRIMARY KEY CLUSTERED 
(
	[OrderServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 03.06.2023 17:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passport]    Script Date: 03.06.2023 17:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passport](
	[PassportID] [int] IDENTITY(1,1) NOT NULL,
	[Series] [char](4) NOT NULL,
	[Number] [char](6) NOT NULL,
 CONSTRAINT [PK_Passport] PRIMARY KEY CLUSTERED 
(
	[PassportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 03.06.2023 17:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[PositionID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[PositionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 03.06.2023 17:27:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Code] [char](10) NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462526, N'Фролов', N'Андрей', N'Иванович', 1, CAST(N'2001-07-14' AS Date), N'344288, г. Казань, ул. Чехова, 1, кв. 34', N'gohufreilagrau-3818@yopmail.com', N'cl12345')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462527, N'Николаев', N'Даниил', N'Всеволодович', 2, CAST(N'2001-02-10' AS Date), N'614164, г. Казань, ул. Степная, 30, кв. 75', N'xawugosune-1385@yopmail.com', N'cl12346')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462528, N'Снегирев', N'Макар', N'Иванович', 3, CAST(N'1998-05-21' AS Date), N'394242, г. Казань, ул. Коммунистическая, 43, кв. 57', N'satrahuddusei-4458@yopmail.com', N'cl12347')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462529, N'Иванов', N'Иван', N'Ильич', 4, CAST(N'1998-10-01' AS Date), N'660540, г. Казань, ул. Солнечная, 25, кв. 78', N'boippaxeufrepra-7093@yopmail.com', N'cl12348')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462530, N'Филиппова', N'Анна', N'Глебовна', 5, CAST(N'1976-05-31' AS Date), N'125837, г. Казань, ул. Шоссейная, 40, кв. 92', N'zapramaxesu-7741@yopmail.com', N'cl12349')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462531, N'Иванов', N'Михаил', N'Владимирович', 6, CAST(N'1985-11-04' AS Date), N'125703, г. Казань, ул. Партизанская, 49, кв. 84', N'rouzecroummegre-3899@yopmail.com', N'cl12350')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462532, N'Власов', N'Дмитрий', N'Александрович', 7, CAST(N'1998-08-17' AS Date), N'625283, г. Казань, ул. Победы, 46, кв. 7', N'ziyeuddocrabri-4748@yopmail.com', N'cl12351')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462533, N'Серова', N'Екатерина', N'Львовна', 8, CAST(N'1984-10-24' AS Date), N'614611, г. Казань, ул. Молодежная, 50, кв. 78', N'ketameissoinnei-1951@yopmail.com', N'cl12352')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462534, N'Борисова', N'Ирина', N'Ивановна', 9, CAST(N'1976-10-14' AS Date), N'454311, г. Казань, ул. Новая, 19, кв. 78', N'yipraubaponou-5849@yopmail.com', N'cl12353')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462535, N'Зайцев', N'Никита', N'Артёмович', 10, CAST(N'1999-10-14' AS Date), N'660007, г. Казань, ул. Октябрьская, 19, кв. 42', N'crapedocouca-3572@yopmail.com', N'cl12354')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462536, N'Медведев', N'Святослав', N'Евгеньевич', 11, CAST(N'1985-07-13' AS Date), N'603036, г. Казань, ул. Садовая, 4, кв. 13', N'ceigoixakaunni-9227@yopmail.com', N'cl12355')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462537, N'Коротков', N'Кирилл', N'Алексеевич', 12, CAST(N'1976-05-26' AS Date), N'450983, г. Казань, ул. Комсомольская, 26, кв. 60', N'yeimmeiwauzomo-7054@yopmail.com', N'cl12356')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462538, N'Калашникова', N'Арина', N'Максимовна', 13, CAST(N'1999-08-13' AS Date), N'394782, г. Казань, ул. Чехова, 3, кв. 14', N'poleifenevi-1560@yopmail.com', N'cl12357')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462539, N'Минина', N'Таисия', N'Кирилловна', 14, CAST(N'1985-10-13' AS Date), N'603002, г. Казань, ул. Дзержинского, 28, кв. 56', N'kauprezofautei-6607@yopmail.com', N'cl12358')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462540, N'Наумов', N'Серафим', N'Романович', 15, CAST(N'1999-04-15' AS Date), N'450558, г. Казань, ул. Набережная, 30, кв. 71', N'quaffaullelourei-1667@yopmail.com', N'cl12359')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462541, N'Воробьева', N'Василиса', N'Евгеньевна', 16, CAST(N'1999-01-13' AS Date), N'394060, г. Казань, ул. Фрунзе, 43, кв. 79', N'jsteele@rojas-robinson.net', N'cl12360')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462542, N'Калинин', N'Александр', N'Андреевич', 17, CAST(N'1999-01-07' AS Date), N'410661, г. Казань, ул. Школьная, 50, кв. 53', N'vhopkins@lewis-mullen.com', N'cl12361')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462543, N'Кузнецова', N'Милана', N'Владиславовна', 18, CAST(N'1999-01-24' AS Date), N'625590, г. Казань, ул. Коммунистическая, 20, кв. 34', N'nlewis@yahoo.com', N'cl12362')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462544, N'Фирсов', N'Егор', N'Романович', 19, CAST(N'1993-09-02' AS Date), N'625683, г. Казань, ул. 8 Марта, 20, кв. 21', N'garciadavid@mckinney-mcbride.com', N'cl12363')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462545, N'Зимина', N'Агния', N'Александровна', 20, CAST(N'1998-09-03' AS Date), N'400562, г. Казань, ул. Зеленая, 32, кв. 67', N'cbradley@castro.com', N'cl12364')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462546, N'Титов', N'Андрей', N'Глебович', 21, CAST(N'1985-10-23' AS Date), N'614510, г. Казань, ул. Маяковского, 47, кв. 72', N'cuevascatherine@carlson.biz', N'cl12365')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462547, N'Орлов', N'Николай', N'Егорович', 22, CAST(N'1985-07-27' AS Date), N'410542, г. Казань, ул. Светлая, 46, кв. 82', N'thomasmoore@wilson-singh.net', N'cl12366')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462548, N'Кузнецова', N'Аиша', N'Михайловна', 23, CAST(N'1998-10-04' AS Date), N'620839, г. Казань, ул. Цветочная, 8, кв. 100', N'jessica84@hotmail.com', N'cl12367')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462549, N'Куликов', N'Никита', N'Георгиевич', 24, CAST(N'1999-04-23' AS Date), N'443890, г. Казань, ул. Коммунистическая, 1, кв. 10', N'jessicapark@hotmail.com', N'cl12368')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462550, N'Карпова', N'София', N'Егоровна', 25, CAST(N'1993-10-01' AS Date), N'603379, г. Казань, ул. Спортивная, 46, кв. 95', N'ginaritter@schneider-buchanan.com', N'cl12369')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462551, N'Смирнова', N'Дарья', N'Макаровна', 26, CAST(N'1976-03-22' AS Date), N'603721, г. Казань, ул. Гоголя, 41, кв. 57', N'stephen99@yahoo.com', N'cl12370')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462552, N'Абрамова', N'Александра', N'Мироновна', 27, CAST(N'1999-03-26' AS Date), N'410172, г. Казань, ул. Северная, 13, кв. 86', N'lopezlisa@hotmail.com', N'cl12371')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462553, N'Наумов', N'Руслан', N'Михайлович', 28, CAST(N'1999-10-11' AS Date), N'420151, г. Казань, ул. Вишневая, 32, кв. 81', N'lori17@hotmail.com', N'cl12372')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462554, N'Бочаров', N'Никита', N'Матвеевич', 29, CAST(N'1997-06-29' AS Date), N'125061, г. Казань, ул. Подгорная, 8, кв. 74', N'campbellkevin@gardner.com', N'cl12373')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462555, N'Соловьев', N'Давид', N'Ильич', 30, CAST(N'1984-03-06' AS Date), N'630370, г. Казань, ул. Шоссейная, 24, кв. 81', N'morganhoward@clark.com', N'cl12374')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462556, N'Васильева', N'Валерия', N'Дмитриевна', 31, CAST(N'1999-09-30' AS Date), N'614753, г. Казань, ул. Полевая, 35, кв. 39', N'carsontamara@gmail.com', N'cl12375')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462557, N'Макарова', N'Василиса', N'Андреевна', 32, CAST(N'1999-04-08' AS Date), N'426030, г. Казань, ул. Маяковского, 44, кв. 93', N'kevinpatel@gmail.com', N'cl12376')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462558, N'Алексеев', N'Матвей', N'Викторович', 33, CAST(N'1998-08-02' AS Date), N'450375, г. Казань, ул. Клубная, 44, кв. 80', N'sethbishop@yahoo.com', N'cl12377')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462559, N'Никитина', N'Полина', N'Александровна', 34, CAST(N'1976-09-19' AS Date), N'625560, г. Казань, ул. Некрасова, 12, кв. 66', N'drollins@schultz-soto.net', N'cl12378')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462560, N'Окулова', N'Олеся', N'Алексеевна', 35, CAST(N'1999-04-03' AS Date), N'630201, г. Казань, ул. Комсомольская, 17, кв. 25', N'pblack@copeland-winters.org', N'cl12379')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462561, N'Захарова', N'Полина', N'Яновна', 36, CAST(N'1976-04-21' AS Date), N'190949, г. Казань, ул. Мичурина, 26, кв. 93', N'johnathon.oberbrunner@yahoo.com', N'cl12380')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462562, N'Зайцев', N'Владимир', N'Давидович', 37, CAST(N'1998-01-26' AS Date), N'350501, г. Казань, ул. Парковая, 2, кв. 7', N'bradly29@gmail.com', N'cl12381')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462563, N'Иванов', N'Виталий', N'Даниилович', 38, CAST(N'1976-08-11' AS Date), N'450048, г. Казань, ул. Коммунистическая, 21, кв. 3', N'stark.cristina@hilpert.biz', N'cl12382')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462564, N'Захаров', N'Матвей', N'Романович', 39, CAST(N'1993-07-12' AS Date), N'644921, г. Казань, ул. Школьная, 46, кв. 37', N'bruen.eleanore@yahoo.com', N'cl12383')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462565, N'Иванов', N'Степан', N'Степанович', 40, CAST(N'1998-09-19' AS Date), N'614228, г. Казань, ул. Дорожная, 36, кв. 54', N'percival.halvorson@yahoo.com', N'cl12384')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462566, N'Ткачева', N'Милана', N'Тимуровна', 41, CAST(N'1998-05-24' AS Date), N'350940, г. Казань, ул. Первомайская, 23, кв. 2', N'javonte71@kuhlman.biz', N'cl12385')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462567, N'Семенов', N'Даниил', N'Иванович', 42, CAST(N'1976-01-04' AS Date), N'344990, г. Казань, ул. Красноармейская, 19, кв. 92', N'vconnelly@kautzer.com', N'cl12386')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462568, N'Виноградов', N'Вячеслав', N'Дмитриевич', 43, CAST(N'1976-07-12' AS Date), N'410248, г. Казань, ул. Чкалова, 11, кв. 75', N'anabelle07@schultz.info', N'cl12387')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462569, N'Соболева', N'Николь', N'Фёдоровна', 44, CAST(N'1976-05-02' AS Date), N'400839, г. Казань, ул. 8 Марта, 46, кв. 44', N'nitzsche.katlynn@yahoo.com', N'cl12388')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462570, N'Тихонова', N'Анна', N'Львовна', 45, CAST(N'1985-03-23' AS Date), N'450539, г. Казань, ул. Заводская, 3, кв. 81', N'corine16@von.com', N'cl12389')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462571, N'Кузнецова', N'Ульяна', N'Савельевна', 46, CAST(N'1999-06-03' AS Date), N'614591, г. Казань, ул. Цветочная, 20, кв. 40', N'otha.wisozk@lubowitz.org', N'cl12390')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462572, N'Смирнова', N'Анна', N'Германовна', 47, CAST(N'1997-07-18' AS Date), N'400260, г. Казань, ул. Больничная, 30, кв. 53', N'may.kirlin@hotmail.com', N'cl12391')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462573, N'Черепанова', N'Анна', N'Давидовна', 48, CAST(N'1985-11-06' AS Date), N'660924, г. Казань, ул. Молодежная, 32, кв. 59', N'bryana.kautzer@yahoo.com', N'cl12392')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462574, N'Григорьев', N'Максим', N'Кириллович', 49, CAST(N'1999-05-26' AS Date), N'644133, г. Казань, ул. Гагарина, 28, кв. 69', N'deborah.christiansen@quigley.biz', N'cl12393')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462575, N'Голубев', N'Даниэль', N'Александрович', 50, CAST(N'1999-06-14' AS Date), N'450698, г. Казань, ул. Вокзальная, 14, кв. 37', N'connelly.makayla@yahoo.com', N'cl12394')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462576, N'Миронов', N'Юрий', N'Денисович', 51, CAST(N'1985-01-26' AS Date), N'620653, г. Казань, ул. Западная, 15, кв. 25', N'tatum.collins@fay.org', N'cl12395')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462577, N'Терехов', N'Михаил', N'Андреевич', 52, CAST(N'1976-07-06' AS Date), N'644321, г. Казань, ул. Клубная, 32, кв. 10', N'itzel73@anderson.com', N'cl12396')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462578, N'Орлова', N'Алиса', N'Михайловна', 53, CAST(N'1997-02-24' AS Date), N'603653, г. Казань, ул. Молодежная, 2, кв. 45', N'arjun39@hotmail.com', N'cl12397')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462579, N'Кулаков', N'Константин', N'Даниилович', 54, CAST(N'1993-06-20' AS Date), N'410181, г. Казань, ул. Механизаторов, 16, кв. 74', N'ohara.rebeka@yahoo.com', N'cl12398')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462580, N'Кудрявцев', N'Максим', N'Романович', 55, CAST(N'1998-05-10' AS Date), N'394207, г. Казань, ул. Свердлова, 31, кв. 28', N'danika58@rath.com', N'cl12399')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462581, N'Соболева', N'Кира', N'Фёдоровна', 56, CAST(N'1998-03-14' AS Date), N'420633, г. Казань, ул. Матросова, 18, кв. 41', N'janae.bogan@gmail.com', N'cl12400')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462582, N'Коновалов', N'Арсений', N'Максимович', 57, CAST(N'1985-02-18' AS Date), N'445720, г. Казань, ул. Матросова, 50, кв. 67', N'vern91@yahoo.com', N'cl12401')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462583, N'Гусев', N'Михаил', N'Дмитриевич', 58, CAST(N'1999-11-23' AS Date), N'400646, г. Казань, ул. Октябрьская, 47, кв. 65', N'mariana.leannon@larkin.net', N'cl12402')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462584, N'Суханова', N'Варвара', N'Матвеевна', 59, CAST(N'1993-09-13' AS Date), N'644410, г. Казань, ул. Красная, 17, кв. 69', N'vmoore@gmail.com', N'cl12403')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462585, N'Орлова', N'Ясмина', N'Васильевна', 60, CAST(N'1984-06-24' AS Date), N'400750, г. Казань, ул. Школьная, 36, кв. 71', N'damon.mcclure@mills.com', N'cl12404')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462586, N'Васильева', N'Ксения', N'Константиновна', 61, CAST(N'1999-08-01' AS Date), N'660590, г. Казань, ул. Дачная, 37, кв. 70', N'grady.reilly@block.com', N'cl12405')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462587, N'Борисова', N'Тамара', N'Данииловна', 62, CAST(N'1993-05-29' AS Date), N'426083, г. Казань, ул. Механизаторов, 41, кв. 26', N'boyd.koss@yahoo.com', N'cl12406')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462588, N'Дмитриев', N'Мирон', N'Ильич', 63, CAST(N'1985-04-13' AS Date), N'410569, г. Казань, ул. Парковая, 36, кв. 17', N'obartell@franecki.info', N'cl12407')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462589, N'Лебедева', N'Анна', N'Александровна', 64, CAST(N'1985-03-30' AS Date), N'443375, г. Казань, ул. Дзержинского, 50, кв. 95', N'reina75@ferry.net', N'cl12408')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462590, N'Пономарев', N'Артём', N'Маркович', 65, CAST(N'1984-06-02' AS Date), N'614316, г. Казань, ул. Первомайская, 48, кв. 31', N'karson28@hotmail.com', N'cl12409')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462591, N'Борисова', N'Елена', N'Михайловна', 66, CAST(N'1976-05-23' AS Date), N'445685, г. Казань, ул. Зеленая, 7, кв. 47', N'damaris61@okon.com', N'cl12410')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462592, N'Моисеев', N'Камиль', N'Максимович', 67, CAST(N'1999-06-17' AS Date), N'614505, г. Казань, ул. Нагорная, 37, кв. 31', N'carroll.jerod@hotmail.com', N'cl12411')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462593, N'Герасимова', N'Дарья', N'Константиновна', 68, CAST(N'1984-10-13' AS Date), N'426629, г. Казань, ул. Весенняя, 32, кв. 46', N'ron.treutel@quitzon.com', N'cl12412')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462594, N'Михайлова', N'Мария', N'Марковна', 69, CAST(N'1976-12-02' AS Date), N'603743, г. Казань, ул. Матросова, 19, кв. 20', N'olen79@yahoo.com', N'cl12413')
INSERT [dbo].[Client] ([ClientID], [Surname], [Name], [Patronymic], [PassportID], [BirthDate], [Address], [Email], [Password]) VALUES (45462595, N'Коршунов', N'Кирилл', N'Максимович', 70, CAST(N'1985-05-22' AS Date), N'450750, г. Казань, ул. Клубная, 23, кв. 90', N'pacocha.robbie@yahoo.com', N'cl12414')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (101, 1, N'Иванов', N'Иван', N'Иванович', N'Ivanov@namecomp.ru', N'2L6KZG')
INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (102, 1, N'Петров', N'Петр', N'Петрович', N'petrov@namecomp.ru', N'uzWC67')
INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (103, 2, N'Федоров', N'Федор', N'Федорович', N'fedorov@namecomp.ru', N'8ntwUp')
INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (104, 3, N'Миронов', N'Вениамин', N'Куприянович', N'mironov@namecomp.ru', N'YOyhfR')
INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (105, 3, N'Ширяев', N'Ермолай', N'Вениаминович', N'shiryev@namecomp.ru', N'RSbvHv')
INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (106, 3, N'Игнатов', N'Кассиан', N'Васильевич', N'ignatov@namecomp.ru', N'rwVDh9')
INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (107, 1, N'Хохлов', N'Владимир', N'Мэлсович', N'hohlov@namecomp.ru', N'LdNyos')
INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (108, 1, N'Стрелков', N'Мстислав', N'Георгьевич', N'strelkov@namecomp.ru', N'gynQMT')
INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (109, 1, N'Беляева', N'Лилия', N'Наумовна', N'belyeva@@namecomp.ru', N'AtnDjr')
INSERT [dbo].[Employee] ([EmployeeID], [PositionID], [Surname], [Name], [Patronymic], [Login], [Password]) VALUES (110, 1, N'Смирнова', N'Ульяна', N'Гордеевна', N'smirnova@@namecomp.ru', N'JlFRCZ')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[LoginHistory] ON 

INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (1, 101, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (2, 102, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (3, 103, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (4, 104, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (5, 105, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 2)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (6, 106, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (7, 107, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (8, 108, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 2)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (9, 109, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (10, 110, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (11, 101, CAST(N'2023-06-03T16:33:49.503' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (12, 103, CAST(N'2023-06-03T16:34:01.580' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (13, 103, CAST(N'2023-06-03T16:38:13.247' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (14, 103, CAST(N'2023-06-03T16:39:20.637' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (15, 101, CAST(N'2023-06-03T16:50:40.593' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (16, 101, CAST(N'2023-06-03T16:52:55.343' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (17, 101, CAST(N'2023-06-03T17:03:02.110' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (18, 101, CAST(N'2023-06-03T17:05:30.340' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (19, 101, CAST(N'2023-06-03T17:08:32.583' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (20, 101, CAST(N'2023-06-03T17:10:17.417' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (21, 101, CAST(N'2023-06-03T17:13:07.420' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (22, 101, CAST(N'2023-06-03T17:15:05.820' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (23, 101, CAST(N'2023-06-03T17:15:41.020' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (24, 101, CAST(N'2023-06-03T17:19:14.093' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([LoginHistoryID], [EmployeeID], [Time], [LoginStatusID]) VALUES (25, 101, CAST(N'2023-06-03T17:20:57.467' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[LoginHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[LoginStatus] ON 

INSERT [dbo].[LoginStatus] ([LoginStatusID], [Name]) VALUES (1, N'Успешно')
INSERT [dbo].[LoginStatus] ([LoginStatusID], [Name]) VALUES (2, N'Неуспешно')
SET IDENTITY_INSERT [dbo].[LoginStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (1, N'45462526/12.03.2022', CAST(N'2022-03-12' AS Date), CAST(N'09:10:00' AS Time), 45462526, 1, NULL, 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (2, N'45462527/13.03.2022', CAST(N'2022-03-13' AS Date), CAST(N'10:10:00' AS Time), 45462527, 2, NULL, 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (3, N'45462528/14.03.2022', CAST(N'2022-03-14' AS Date), CAST(N'11:10:00' AS Time), 45462528, 2, NULL, 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (4, N'45462529/15.03.2022', CAST(N'2022-03-15' AS Date), CAST(N'12:10:00' AS Time), 45462529, 1, NULL, 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (5, N'45462530/16.03.2022', CAST(N'2022-03-16' AS Date), CAST(N'13:10:00' AS Time), 45462530, 3, CAST(N'2022-04-16' AS Date), 320)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (6, N'45462531/17.03.2022', CAST(N'2022-03-17' AS Date), CAST(N'14:10:00' AS Time), 45462531, 1, NULL, 480)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (7, N'45462532/18.03.2022', CAST(N'2022-03-18' AS Date), CAST(N'15:10:00' AS Time), 45462532, 1, NULL, 240)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (8, N'45462533/19.03.2022', CAST(N'2022-03-19' AS Date), CAST(N'16:10:00' AS Time), 45462533, 2, NULL, 360)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (9, N'45462534/20.03.2022', CAST(N'2022-03-20' AS Date), CAST(N'10:00:00' AS Time), 45462534, 2, NULL, 720)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (10, N'45462535/21.03.2022', CAST(N'2022-03-21' AS Date), CAST(N'11:00:00' AS Time), 45462535, 1, NULL, 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (11, N'45462536/22.03.2022', CAST(N'2022-03-22' AS Date), CAST(N'12:00:00' AS Time), 45462536, 3, CAST(N'2022-03-22' AS Date), 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (12, N'45462537/23.03.2022', CAST(N'2022-03-23' AS Date), CAST(N'13:00:00' AS Time), 45462537, 2, NULL, 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (13, N'45462538/24.03.2022', CAST(N'2022-03-24' AS Date), CAST(N'14:00:00' AS Time), 45462538, 2, NULL, 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (14, N'45462539/25.03.2022', CAST(N'2022-03-25' AS Date), CAST(N'15:00:00' AS Time), 45462539, 2, NULL, 320)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (15, N'45462540/26.03.2022', CAST(N'2022-03-26' AS Date), CAST(N'16:00:00' AS Time), 45462540, 3, CAST(N'2022-04-26' AS Date), 480)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (16, N'45462541/27.03.2022', CAST(N'2022-03-27' AS Date), CAST(N'17:00:00' AS Time), 45462541, 1, NULL, 240)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (17, N'45462542/28.03.2022', CAST(N'2022-03-28' AS Date), CAST(N'18:00:00' AS Time), 45462542, 2, NULL, 360)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (18, N'45462543/29.03.2022', CAST(N'2022-03-29' AS Date), CAST(N'19:00:00' AS Time), 45462543, 2, NULL, 720)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (19, N'45462544/30.03.2022', CAST(N'2022-03-30' AS Date), CAST(N'12:30:00' AS Time), 45462544, 1, NULL, 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (20, N'45462545/31.03.2022', CAST(N'2022-03-31' AS Date), CAST(N'13:30:00' AS Time), 45462545, 1, NULL, 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (21, N'45462546/01.04.2022', CAST(N'2022-04-01' AS Date), CAST(N'14:30:00' AS Time), 45462546, 3, CAST(N'2022-04-01' AS Date), 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (22, N'45462547/02.04.2022', CAST(N'2022-04-02' AS Date), CAST(N'15:30:00' AS Time), 45462547, 1, NULL, 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (23, N'45462548/03.04.2022', CAST(N'2022-04-03' AS Date), CAST(N'16:30:00' AS Time), 45462548, 1, NULL, 320)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (24, N'45462549/04.04.2022', CAST(N'2022-04-04' AS Date), CAST(N'17:30:00' AS Time), 45462549, 2, NULL, 480)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (25, N'45462550/05.04.2022', CAST(N'2022-04-05' AS Date), CAST(N'18:30:00' AS Time), 45462550, 2, NULL, 240)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (26, N'45462551/06.04.2022', CAST(N'2022-04-06' AS Date), CAST(N'15:30:00' AS Time), 45462551, 2, NULL, 360)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (27, N'45462552/07.04.2022', CAST(N'2022-04-07' AS Date), CAST(N'16:30:00' AS Time), 45462552, 2, NULL, 720)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (28, N'45462553/08.04.2022', CAST(N'2022-04-08' AS Date), CAST(N'17:30:00' AS Time), 45462553, 3, CAST(N'2022-04-08' AS Date), 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (29, N'45462554/09.04.2022', CAST(N'2022-04-09' AS Date), CAST(N'18:30:00' AS Time), 45462554, 1, NULL, 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (30, N'45462555/10.04.2022', CAST(N'2022-04-10' AS Date), CAST(N'19:30:00' AS Time), 45462555, 2, NULL, 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (31, N'45462556/11.04.2022', CAST(N'2022-04-11' AS Date), CAST(N'10:30:00' AS Time), 45462556, 2, NULL, 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (32, N'45462557/12.04.2022', CAST(N'2022-04-12' AS Date), CAST(N'11:30:00' AS Time), 45462557, 1, NULL, 320)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (33, N'45462558/13.04.2022', CAST(N'2022-04-13' AS Date), CAST(N'12:30:00' AS Time), 45462558, 1, NULL, 480)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (34, N'45462559/14.04.2022', CAST(N'2022-04-14' AS Date), CAST(N'13:30:00' AS Time), 45462559, 1, NULL, 240)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (35, N'45462560/15.04.2022', CAST(N'2022-04-15' AS Date), CAST(N'14:30:00' AS Time), 45462560, 2, NULL, 360)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (36, N'45462561/02.04.2022', CAST(N'2022-04-02' AS Date), CAST(N'15:30:00' AS Time), 45462561, 2, NULL, 720)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (37, N'45462562/03.04.2022', CAST(N'2022-04-03' AS Date), CAST(N'16:30:00' AS Time), 45462562, 2, NULL, 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (38, N'45462563/04.04.2022', CAST(N'2022-04-04' AS Date), CAST(N'17:30:00' AS Time), 45462563, 3, CAST(N'2022-04-04' AS Date), 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (39, N'45462564/05.04.2022', CAST(N'2022-04-05' AS Date), CAST(N'10:15:00' AS Time), 45462564, 2, NULL, 120)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (40, N'45462565/06.04.2022', CAST(N'2022-04-06' AS Date), CAST(N'11:15:00' AS Time), 45462565, 1, NULL, 600)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (41, N'45462566/07.04.2022', CAST(N'2022-04-07' AS Date), CAST(N'12:15:00' AS Time), 45462566, 3, CAST(N'2022-04-07' AS Date), 320)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (42, N'45462567/08.04.2022', CAST(N'2022-04-08' AS Date), CAST(N'13:15:00' AS Time), 45462567, 2, NULL, 480)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (43, N'45462568/09.04.2022', CAST(N'2022-04-09' AS Date), CAST(N'14:15:00' AS Time), 45462568, 2, NULL, 240)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (44, N'45462569/01.04.2022', CAST(N'2022-04-01' AS Date), CAST(N'15:15:00' AS Time), 45462569, 2, NULL, 360)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (45, N'45462570/02.04.2022', CAST(N'2022-04-02' AS Date), CAST(N'16:15:00' AS Time), 45462570, 2, NULL, 720)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (46, N'45462571/03.04.2022', CAST(N'2022-04-03' AS Date), CAST(N'10:45:00' AS Time), 45462571, 2, NULL, 480)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (47, N'45462572/04.04.2022', CAST(N'2022-04-04' AS Date), CAST(N'11:45:00' AS Time), 45462572, 3, CAST(N'2022-04-04' AS Date), 320)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (48, N'45462573/05.04.2022', CAST(N'2022-04-05' AS Date), CAST(N'12:45:00' AS Time), 45462573, 1, NULL, 480)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (49, N'45462574/06.04.2022', CAST(N'2022-04-06' AS Date), CAST(N'13:45:00' AS Time), 45462574, 1, NULL, 240)
INSERT [dbo].[Order] ([OrderID], [OrderCode], [DateCreated], [OrderTime], [ClientID], [StatusID], [DateClosed], [Time]) VALUES (50, N'45462575/07.04.2022', CAST(N'2022-04-07' AS Date), CAST(N'14:45:00' AS Time), 45462575, 1, NULL, 360)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderService] ON 

INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (241, 1, 34)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (242, 2, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (243, 3, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (244, 4, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (245, 5, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (246, 6, 34)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (247, 7, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (248, 8, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (249, 9, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (250, 10, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (251, 11, 34)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (252, 12, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (253, 13, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (254, 14, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (255, 15, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (256, 16, 34)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (257, 17, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (258, 18, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (259, 19, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (260, 20, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (261, 21, 34)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (262, 22, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (263, 23, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (264, 24, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (265, 25, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (266, 26, 34)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (267, 27, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (268, 28, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (269, 29, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (270, 30, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (271, 31, 34)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (272, 32, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (273, 33, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (274, 34, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (275, 35, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (276, 36, 34)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (277, 37, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (278, 38, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (279, 39, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (280, 40, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (281, 41, 34)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (282, 42, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (283, 43, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (284, 44, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (285, 45, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (286, 46, 34)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (287, 47, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (288, 48, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (289, 49, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (290, 50, 98)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (291, 1, 31)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (292, 2, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (293, 3, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (294, 4, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (295, 5, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (296, 6, 31)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (297, 7, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (298, 8, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (299, 9, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (300, 10, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (301, 11, 31)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (302, 12, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (303, 13, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (304, 14, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (305, 15, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (306, 16, 31)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (307, 17, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (308, 18, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (309, 19, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (310, 20, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (311, 21, 31)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (312, 22, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (313, 23, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (314, 24, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (315, 25, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (316, 26, 31)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (317, 27, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (318, 28, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (319, 29, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (320, 30, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (321, 31, 31)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (322, 32, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (323, 33, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (324, 34, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (325, 35, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (326, 36, 31)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (327, 37, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (328, 38, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (329, 39, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (330, 40, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (331, 41, 31)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (332, 42, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (333, 43, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (334, 44, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (335, 45, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (336, 46, 31)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (337, 47, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (338, 48, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (339, 49, 45)
GO
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (340, 50, 45)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (341, 1, 353)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (342, 2, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (343, 3, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (344, 4, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (345, 5, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (346, 6, 353)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (347, 7, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (348, 8, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (349, 9, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (350, 10, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (351, 11, 353)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (352, 12, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (353, 13, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (354, 14, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (355, 15, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (356, 16, 353)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (357, 17, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (358, 18, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (359, 19, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (360, 20, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (361, 21, 353)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (362, 22, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (363, 23, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (364, 24, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (365, 25, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (366, 26, 353)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (367, 27, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (368, 28, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (369, 29, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (370, 30, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (371, 31, 353)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (372, 32, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (373, 33, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (374, 34, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (375, 35, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (376, 36, 353)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (377, 37, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (378, 38, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (379, 39, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (380, 40, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (381, 41, 353)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (382, 42, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (383, 43, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (384, 44, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (385, 45, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (386, 46, 353)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (387, 47, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (388, 48, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (389, 49, 57)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (390, 50, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (391, 1, 336)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (392, 2, 99)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (393, 3, 88)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (394, 4, 88)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (395, 5, 353)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (397, 7, 99)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (398, 8, 89)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (399, 9, 88)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (400, 10, 353)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (402, 12, 99)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (404, 14, 88)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (405, 15, 353)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (407, 17, 99)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (409, 19, 88)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (410, 20, 353)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (412, 22, 99)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (413, 23, 92)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (414, 24, 88)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (415, 25, 353)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (417, 27, 99)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (419, 29, 88)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (420, 30, 353)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (422, 32, 99)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (424, 34, 88)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (425, 35, 353)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (427, 37, 99)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (429, 39, 88)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (430, 40, 353)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (432, 42, 99)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (434, 44, 88)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (435, 45, 353)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (437, 47, 99)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (439, 49, 88)
INSERT [dbo].[OrderService] ([OrderServiceID], [OrderID], [ServiceID]) VALUES (440, 50, 353)
SET IDENTITY_INSERT [dbo].[OrderService] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] ON 

INSERT [dbo].[OrderStatus] ([StatusID], [Name]) VALUES (1, N'Новая')
INSERT [dbo].[OrderStatus] ([StatusID], [Name]) VALUES (2, N'В прокате')
INSERT [dbo].[OrderStatus] ([StatusID], [Name]) VALUES (3, N'Закрыта')
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Passport] ON 

INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (1, N'1180', N'176596')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (2, N'2280', N'223523')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (3, N'4560', N'354155')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (4, N'9120', N'554296')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (5, N'2367', N'558134')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (6, N'7101', N'669343')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (7, N'3455', N'719630')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (8, N'2377', N'871623')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (9, N'8755', N'921148')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (10, N'4355', N'104594')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (11, N'2791', N'114390')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (12, N'5582', N'126286')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (13, N'2978', N'133653')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (14, N'7512', N'141956')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (15, N'5046', N'158433')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (16, N'2460', N'169505')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (17, N'3412', N'174593')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (18, N'4950', N'183034')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (19, N'5829', N'219464')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (20, N'6443', N'208059')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (21, N'7079', N'213265')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (22, N'8207', N'522702')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (23, N'9307', N'232158')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (24, N'1357', N'242839')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (25, N'1167', N'256636')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (26, N'1768', N'266986')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (27, N'1710', N'427875')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (28, N'1806', N'289145')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (29, N'1587', N'291249')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (30, N'1647', N'306372')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (31, N'1742', N'316556')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (32, N'1474', N'326347')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (33, N'1452', N'339539')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (34, N'2077', N'443480')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (35, N'2147', N'357518')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (36, N'2687', N'363884')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (37, N'2376', N'443711')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (38, N'2568', N'386237')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (39, N'2556', N'439376')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (40, N'2737', N'407501')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (41, N'2581', N'441645')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (42, N'2675', N'427933')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (43, N'2967', N'434531')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (44, N'3070', N'449655')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (45, N'3108', N'451174')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (46, N'3250', N'464705')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (47, N'3392', N'471644')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (48, N'3497', N'487819')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (49, N'3560', N'491260')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (50, N'3620', N'506034')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (51, N'3774', N'511438')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (52, N'3862', N'521377')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (53, N'3084', N'535966')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (54, N'4021', N'541528')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (55, N'4109', N'554053')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (56, N'4537', N'564868')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (57, N'4914', N'572471')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (58, N'4445', N'581302')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (59, N'4743', N'598180')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (60, N'4741', N'601821')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (61, N'4783', N'612567')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (62, N'4658', N'621200')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (63, N'4908', N'634613')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (64, N'5092', N'642468')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (65, N'5155', N'465274')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (66, N'5086', N'666893')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (67, N'5333', N'675375')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (68, N'5493', N'684572')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (69, N'5150', N'696226')
INSERT [dbo].[Passport] ([PassportID], [Series], [Number]) VALUES (70, N'1308', N'703305')
SET IDENTITY_INSERT [dbo].[Passport] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([PositionID], [Name]) VALUES (1, N'Продавец')
INSERT [dbo].[Position] ([PositionID], [Name]) VALUES (2, N'Администратор')
INSERT [dbo].[Position] ([PositionID], [Name]) VALUES (3, N'Старший смены')
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [Price]) VALUES (31, N'Прокат сноуборда', N'JUR8R     ', 1200.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [Price]) VALUES (34, N'Прокат обуви для сноуборда', N'JKFBJ09   ', 400.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [Price]) VALUES (44, N'Прокат коньков', N'DHBGFY563 ', 900.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [Price]) VALUES (45, N'Прокат защитных подушек для сноубордистов', N'JFH7382   ', 300.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [Price]) VALUES (57, N'Подъем на 1 уровень', N'JHVSJF6   ', 300.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [Price]) VALUES (88, N'Подъем на 2  уровень', N'DJHGBS982 ', 700.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [Price]) VALUES (89, N'Прокат очков для лыжников', N'OIJNB12   ', 150.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [Price]) VALUES (92, N'Прокат санок', N'HJBUJE21J ', 300.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [Price]) VALUES (98, N'Прокат шлема', N'63748HF   ', 300.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [Price]) VALUES (99, N'Прокат вартушки', N'BSFBHV63  ', 100.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [Price]) VALUES (123, N'Подъем на 3 уровень', N'638VVNQ3  ', 1200.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [Price]) VALUES (336, N'Прокат лыж', N'8HFJHG443 ', 800.0000)
INSERT [dbo].[Service] ([ServiceID], [Name], [Code], [Price]) VALUES (353, N'Прокат лыжных палок', N'87FDJKHJ  ', 100.0000)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Passport] FOREIGN KEY([PassportID])
REFERENCES [dbo].[Passport] ([PassportID])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Passport]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Position] FOREIGN KEY([PositionID])
REFERENCES [dbo].[Position] ([PositionID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Position]
GO
ALTER TABLE [dbo].[LoginHistory]  WITH CHECK ADD  CONSTRAINT [FK_LoginHistory_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[LoginHistory] CHECK CONSTRAINT [FK_LoginHistory_Employee]
GO
ALTER TABLE [dbo].[LoginHistory]  WITH CHECK ADD  CONSTRAINT [FK_LoginHistory_LoginStatus] FOREIGN KEY([LoginStatusID])
REFERENCES [dbo].[LoginStatus] ([LoginStatusID])
GO
ALTER TABLE [dbo].[LoginHistory] CHECK CONSTRAINT [FK_LoginHistory_LoginStatus]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Client]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([StatusID])
REFERENCES [dbo].[OrderStatus] ([StatusID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[OrderService]  WITH CHECK ADD  CONSTRAINT [FK_OrderService_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderService] CHECK CONSTRAINT [FK_OrderService_Order]
GO
ALTER TABLE [dbo].[OrderService]  WITH CHECK ADD  CONSTRAINT [FK_OrderService_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[OrderService] CHECK CONSTRAINT [FK_OrderService_Service]
GO
