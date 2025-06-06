USE [OurDecorSerov]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 29.05.2025 14:16:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[MaterialId] [int] IDENTITY(1,1) NOT NULL,
	[MaterialName] [nvarchar](255) NULL,
	[MaterialType] [nvarchar](255) NULL,
	[MaterialTypeId] [int] NOT NULL,
	[Cost] [int] NULL,
	[AmountStorage] [int] NULL,
	[MinAmount] [int] NULL,
	[AmountBox] [int] NULL,
	[Unit] [nvarchar](255) NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialsType]    Script Date: 29.05.2025 14:16:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialsType](
	[MaterialTypeId] [int] IDENTITY(1,1) NOT NULL,
	[MaterialType] [nvarchar](255) NULL,
	[ProcentBrak] [float] NULL,
 CONSTRAINT [PK_MaterialsType] PRIMARY KEY CLUSTERED 
(
	[MaterialTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 29.05.2025 14:16:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductType] [nvarchar](255) NULL,
	[ProdcutTypeId] [int] NOT NULL,
	[ProductName] [nvarchar](255) NULL,
	[Arcticle] [float] NULL,
	[MinCostForPartner] [float] NULL,
	[WidtRulon] [float] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsMaterials]    Script Date: 29.05.2025 14:16:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsMaterials](
	[ProductMaterialId] [int] IDENTITY(1,1) NOT NULL,
	[Product] [nvarchar](255) NULL,
	[ProductId] [int] NOT NULL,
	[MaterialName] [nvarchar](255) NULL,
	[MaterialId] [int] NOT NULL,
	[MinAmountMaterial] [float] NULL,
 CONSTRAINT [PK_ProductsMaterials] PRIMARY KEY CLUSTERED 
(
	[ProductMaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsType]    Script Date: 29.05.2025 14:16:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsType](
	[ProductTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ProductType] [nvarchar](255) NULL,
	[CoiffecentProductType] [float] NULL,
 CONSTRAINT [PK_ProductsType] PRIMARY KEY CLUSTERED 
(
	[ProductTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Materials] ON 

INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (1, N'Бумага-основа с покрытием для флизелиновых обоев', N'Бумага', 1, 1700, 2500, 1000, 100, N'рул')
INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (2, N'Бумага-основа для флизелиновых обоев', N'Бумага', 1, 1500, 3000, 1000, 100, N'рул')
INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (3, N'Бумага обойная для вспененных виниловых обоев', N'Бумага', 1, 1200, 1500, 1000, 100, N'рул')
INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (4, N'Концентрат водоразбавляемой печатной краски', N'Краска', 2, 1500, 550, 500, 200, N'кг')
INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (5, N'Перламутровый пигмент', N'Краска', 2, 3100, 200, 100, 10, N'кг')
INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (6, N'Сухой клей на основе ПВС', N'Клей', 3, 360, 700, 500, 50, N'кг')
INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (7, N'Флизелин', N'Бумага', 1, 1600, 2000, 1000, 140, N'рул')
INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (8, N'Стирол-акриловая дисперсия для производства обоев', N'Дисперсия', 4, 14, 2000, 880, 220, N'л')
INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (9, N'Стирол-акриловая дисперсия для гидрофобных покрытий', N'Дисперсия', 4, 14, 1200, 880, 220, N'л')
INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (10, N'Акрилат-винилацетатная дисперсия для производства бумаги', N'Дисперсия', 4, 15, 1000, 660, 220, N'л')
INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (11, N'Цветная пластизоль', N'Краска', 2, 650, 200, 100, 5, N'кг')
INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (12, N'Дисперсия анионно-стабилизированного стирол-акрилового сополимера', N'Клей', 3, 170, 800, 660, 220, N'л')
INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (13, N'Водорастворимая краска водная', N'Краска', 2, 500, 400, 300, 25, N'кг')
INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (14, N'Диспергатор минеральных пигментов и наполнителей', N'Дисперсия', 4, 16, 400, 360, 120, N'л')
INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (15, N'Ассоциативный акриловый загуститель', N'Дисперсия', 4, 16, 400, 360, 120, N'л')
INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (16, N'Водорастворимая краска спецводная ', N'Краска', 2, 700, 350, 300, 25, N'кг')
INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (17, N'Металлический пигмент', N'Краска', 2, 4100, 250, 100, 15, N'кг')
INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (18, N'Акриловая дисперсия', N'Дисперсия', 4, 14, 1000, 880, 220, N'л')
INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (19, N'Бумага-основа для обоев марки АФ', N'Бумага', 1, 1200, 2000, 1000, 100, N'рул')
INSERT [dbo].[Materials] ([MaterialId], [MaterialName], [MaterialType], [MaterialTypeId], [Cost], [AmountStorage], [MinAmount], [AmountBox], [Unit]) VALUES (20, N'Бумага с подложкой устойчивая к атмосферным воздействиям', N'Бумага', 1, 3500, 2000, 800, 50, N'рул')
SET IDENTITY_INSERT [dbo].[Materials] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialsType] ON 

INSERT [dbo].[MaterialsType] ([MaterialTypeId], [MaterialType], [ProcentBrak]) VALUES (1, N'Бумага', 0.007)
INSERT [dbo].[MaterialsType] ([MaterialTypeId], [MaterialType], [ProcentBrak]) VALUES (2, N'Краска', 0.005)
INSERT [dbo].[MaterialsType] ([MaterialTypeId], [MaterialType], [ProcentBrak]) VALUES (3, N'Клей', 0.0015)
INSERT [dbo].[MaterialsType] ([MaterialTypeId], [MaterialType], [ProcentBrak]) VALUES (4, N'Дисперсия', 0.002)
SET IDENTITY_INSERT [dbo].[MaterialsType] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (1, N'Декоративные обои', 1, N'Обои из природного материала Традиционный принт светло-коричневые', 1549922, 16950, 0.91)
INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (2, N'Фотообои', 2, N'Фотообои флизелиновые Горы 500x270 см', 2018556, 15880, 0.5)
INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (3, N'Обои под покраску', 3, N'Обои под покраску флизелиновые Рельеф', 3028272, 11080, 0.75)
INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (4, N'Стеклообои', 4, N'Стеклообои Рогожка белые', 4029272, 5898, 1)
INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (5, N'Декоративные обои', 1, N'Обои флизелиновые Эвелин светло-серые', 1028248, 15200, 1.06)
INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (6, N'Фотообои', 2, N'Фотообои флизелиновые 3D Лес и горы 300x280 см', 2118827, 12500.96, 0.3)
INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (7, N'Обои под покраску', 3, N'Обои под покраску флизелиновые цвет белый', 3130981, 4320.56, 1.06)
INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (8, N'Стеклообои', 4, N'Стеклохолст', 4029784, 2998.99, 1)
INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (9, N'Декоративные обои', 1, N'Флизелиновые обои Принт Вензель серые', 1658953, 16200.96, 0.68)
INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (10, N'Фотообои', 2, N'Фотообои флизелиновые Узор 300x270 см', 2026662, 8780.69, 0.3)
INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (11, N'Обои под покраску', 3, N'Обои под покраску флизелиновые Кирпичная стена', 3159043, 15750, 1.06)
INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (12, N'Стеклообои', 4, N'Стеклообои Средняя елка белые', 4588376, 5500, 1)
INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (13, N'Декоративные обои', 1, N'Обои бумажные Полосы цвет бежевый', 1758375, 13500.96, 0.68)
INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (14, N'Фотообои', 2, N'Фотообои Тропики 290x260 см', 2759324, 6980, 0.29)
INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (15, N'Обои под покраску', 3, N'Обои под покраску Рисунок Штукатурка белые', 3118827, 5890, 1.06)
INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (16, N'Стеклообои', 4, N'Стеклообои Геометрические фигуры белые ', 4559898, 5369, 1)
INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (17, N'Декоративные обои', 1, N'Обои флизелиновые Лилия бежевые', 1259474, 9750.79, 1.06)
INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (18, N'Фотообои', 2, N'Фотообои флизелиновые 3D Пейзаж 300x280 см', 2115947, 16850, 0.3)
INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (19, N'Обои под покраску', 3, N'Обои под покраску флизелиновые однотонные цвет белый ', 3033136, 3390, 1.06)
INSERT [dbo].[Products] ([ProductId], [ProductType], [ProdcutTypeId], [ProductName], [Arcticle], [MinCostForPartner], [WidtRulon]) VALUES (20, N'Стеклообои', 4, N'Стеклохолст малярный Паутинка', 4028048, 1750, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductsMaterials] ON 

INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (1, N'Обои флизелиновые Эвелин светло-серые', 5, N'Акрилат-винилацетатная дисперсия для производства бумаги', 10, 1.95)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (2, N'Стеклообои Средняя елка белые', 12, N'Акрилат-винилацетатная дисперсия для производства бумаги', 10, 0.21)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (3, N'Фотообои Тропики 290x260 см', 14, N'Акриловая дисперсия', 18, 1.5)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (4, N'Фотообои флизелиновые 3D Пейзаж 300x280 см', 18, N'Акриловая дисперсия', 18, 1)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (5, N'Фотообои флизелиновые Узор 300x270 см', 10, N'Акриловая дисперсия', 18, 1)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (6, N'Обои из природного материала Традиционный принт светло-коричневые', 1, N'Ассоциативный акриловый загуститель', 15, 0.5)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (7, N'Стеклообои Геометрические фигуры белые ', 16, N'Ассоциативный акриловый загуститель', 15, 0.5)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (8, N'Обои под покраску флизелиновые Кирпичная стена', 11, N'Бумага обойная для вспененных виниловых обоев', 3, 2.55)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (9, N'Стеклообои Геометрические фигуры белые ', 16, N'Бумага обойная для вспененных виниловых обоев', 3, 3.6)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (10, N'Стеклообои Средняя елка белые', 12, N'Бумага обойная для вспененных виниловых обоев', 3, 2.5)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (11, N'Обои из природного материала Традиционный принт светло-коричневые', 1, N'Бумага с подложкой устойчивая к атмосферным воздействиям', 20, 2.9)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (12, N'Обои под покраску флизелиновые Кирпичная стена', 11, N'Бумага с подложкой устойчивая к атмосферным воздействиям', 20, 2.55)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (13, N'Фотообои флизелиновые 3D Лес и горы 300x280 см', 6, N'Бумага с подложкой устойчивая к атмосферным воздействиям', 20, 1.8)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (14, N'Фотообои флизелиновые 3D Пейзаж 300x280 см', 18, N'Бумага с подложкой устойчивая к атмосферным воздействиям', 20, 2.2)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (15, N'Фотообои флизелиновые Горы 500x270 см', 2, N'Бумага с подложкой устойчивая к атмосферным воздействиям', 20, 3.4)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (16, N'Обои бумажные Полосы цвет бежевый', 13, N'Бумага-основа для обоев марки АФ', 19, 3.6)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (17, N'Обои под покраску Рисунок Штукатурка белые', 15, N'Бумага-основа для обоев марки АФ', 19, 3.7)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (18, N'Фотообои Тропики 290x260 см', 14, N'Бумага-основа для обоев марки АФ', 19, 1.6)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (19, N'Фотообои флизелиновые Узор 300x270 см', 10, N'Бумага-основа для обоев марки АФ', 19, 3.56)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (20, N'Обои флизелиновые Эвелин светло-серые', 5, N'Бумага-основа для флизелиновых обоев', 2, 4.6)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (21, N'Обои под покраску флизелиновые Рельеф', 3, N'Бумага-основа с покрытием для флизелиновых обоев', 1, 2.5)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (22, N'Флизелиновые обои Принт Вензель серые', 9, N'Бумага-основа с покрытием для флизелиновых обоев', 1, 3.5)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (23, N'Обои флизелиновые Эвелин светло-серые', 5, N'Водорастворимая краска спецводная ', 16, 3.5)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (24, N'Флизелиновые обои Принт Вензель серые', 9, N'Водорастворимая краска спецводная ', 16, 5.25)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (25, N'Фотообои флизелиновые 3D Пейзаж 300x280 см', 18, N'Водорастворимая краска спецводная ', 16, 5)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (26, N'Фотообои флизелиновые Узор 300x270 см', 10, N'Водорастворимая краска спецводная ', 16, 3.5)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (27, N'Обои бумажные Полосы цвет бежевый', 13, N'Водорастворимая краска водная', 13, 4.75)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (28, N'Обои из природного материала Традиционный принт светло-коричневые', 1, N'Водорастворимая краска водная', 13, 3)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (29, N'Обои под покраску Рисунок Штукатурка белые', 15, N'Диспергатор минеральных пигментов и наполнителей', 14, 1.3)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (30, N'Обои под покраску флизелиновые однотонные цвет белый ', 19, N'Диспергатор минеральных пигментов и наполнителей', 14, 1.3)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (31, N'Обои под покраску флизелиновые цвет белый', 7, N'Диспергатор минеральных пигментов и наполнителей', 14, 1.8)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (32, N'Стеклообои Рогожка белые', 4, N'Диспергатор минеральных пигментов и наполнителей', 14, 0.2)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (33, N'Стеклохолст', 8, N'Диспергатор минеральных пигментов и наполнителей', 14, 0.2)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (34, N'Флизелиновые обои Принт Вензель серые', 9, N'Диспергатор минеральных пигментов и наполнителей', 14, 0.25)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (35, N'Обои из природного материала Традиционный принт светло-коричневые', 1, N'Дисперсия анионно-стабилизированного стирол-акрилового сополимера', 12, 0.2)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (36, N'Обои под покраску флизелиновые однотонные цвет белый ', 19, N'Дисперсия анионно-стабилизированного стирол-акрилового сополимера', 12, 0.2)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (37, N'Обои флизелиновые Эвелин светло-серые', 5, N'Дисперсия анионно-стабилизированного стирол-акрилового сополимера', 12, 0.5)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (38, N'Стеклообои Геометрические фигуры белые ', 16, N'Дисперсия анионно-стабилизированного стирол-акрилового сополимера', 12, 0.2)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (39, N'Стеклохолст малярный Паутинка', 20, N'Дисперсия анионно-стабилизированного стирол-акрилового сополимера', 12, 0.25)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (40, N'Фотообои Тропики 290x260 см', 14, N'Дисперсия анионно-стабилизированного стирол-акрилового сополимера', 12, 0.5)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (41, N'Фотообои флизелиновые 3D Лес и горы 300x280 см', 6, N'Дисперсия анионно-стабилизированного стирол-акрилового сополимера', 12, 0.5)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (42, N'Фотообои флизелиновые 3D Пейзаж 300x280 см', 18, N'Дисперсия анионно-стабилизированного стирол-акрилового сополимера', 12, 0.7)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (43, N'Фотообои флизелиновые Горы 500x270 см', 2, N'Дисперсия анионно-стабилизированного стирол-акрилового сополимера', 12, 1)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (44, N'Фотообои флизелиновые Узор 300x270 см', 10, N'Дисперсия анионно-стабилизированного стирол-акрилового сополимера', 12, 0.5)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (45, N'Обои флизелиновые Лилия бежевые', 17, N'Концентрат водоразбавляемой печатной краски', 4, 2.55)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (46, N'Фотообои Тропики 290x260 см', 14, N'Концентрат водоразбавляемой печатной краски', 4, 2)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (47, N'Фотообои флизелиновые 3D Лес и горы 300x280 см', 6, N'Концентрат водоразбавляемой печатной краски', 4, 2)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (48, N'Фотообои флизелиновые Горы 500x270 см', 2, N'Концентрат водоразбавляемой печатной краски', 4, 1)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (49, N'Обои флизелиновые Эвелин светло-серые', 5, N'Металлический пигмент', 17, 0.45)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (50, N'Стеклообои Рогожка белые', 4, N'Металлический пигмент', 17, 0.3)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (51, N'Флизелиновые обои Принт Вензель серые', 9, N'Металлический пигмент', 17, 1)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (52, N'Обои бумажные Полосы цвет бежевый', 13, N'Перламутровый пигмент', 5, 1)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (53, N'Обои из природного материала Традиционный принт светло-коричневые', 1, N'Перламутровый пигмент', 5, 0.5)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (54, N'Стеклообои Средняя елка белые', 12, N'Перламутровый пигмент', 5, 0.35)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (55, N'Фотообои флизелиновые 3D Пейзаж 300x280 см', 18, N'Перламутровый пигмент', 5, 1.25)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (56, N'Обои под покраску Рисунок Штукатурка белые', 15, N'Стирол-акриловая дисперсия для гидрофобных покрытий', 9, 1)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (57, N'Обои под покраску флизелиновые Кирпичная стена', 11, N'Стирол-акриловая дисперсия для гидрофобных покрытий', 9, 1)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (58, N'Обои бумажные Полосы цвет бежевый', 13, N'Стирол-акриловая дисперсия для производства обоев', 8, 0.15)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (59, N'Обои под покраску флизелиновые однотонные цвет белый ', 19, N'Стирол-акриловая дисперсия для производства обоев', 8, 1)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (60, N'Обои под покраску флизелиновые Рельеф', 3, N'Стирол-акриловая дисперсия для производства обоев', 8, 1.2)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (61, N'Обои под покраску флизелиновые цвет белый', 7, N'Стирол-акриловая дисперсия для производства обоев', 8, 1.2)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (62, N'Обои флизелиновые Лилия бежевые', 17, N'Стирол-акриловая дисперсия для производства обоев', 8, 1)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (63, N'Фотообои флизелиновые 3D Лес и горы 300x280 см', 6, N'Стирол-акриловая дисперсия для производства обоев', 8, 1.2)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (64, N'Фотообои флизелиновые Горы 500x270 см', 2, N'Стирол-акриловая дисперсия для производства обоев', 8, 0.33)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (65, N'Обои бумажные Полосы цвет бежевый', 13, N'Сухой клей на основе ПВС', 6, 0.5)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (66, N'Обои под покраску флизелиновые Кирпичная стена', 11, N'Сухой клей на основе ПВС', 6, 2.9)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (67, N'Обои под покраску флизелиновые цвет белый', 7, N'Сухой клей на основе ПВС', 6, 1.4)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (68, N'Обои флизелиновые Лилия бежевые', 17, N'Сухой клей на основе ПВС', 6, 1.7)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (69, N'Стеклохолст', 8, N'Сухой клей на основе ПВС', 6, 0.3)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (70, N'Флизелиновые обои Принт Вензель серые', 9, N'Сухой клей на основе ПВС', 6, 1)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (71, N'Обои под покраску флизелиновые однотонные цвет белый ', 19, N'Флизелин', 7, 1.5)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (72, N'Обои под покраску флизелиновые Рельеф', 3, N'Флизелин', 7, 2.5)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (73, N'Обои под покраску флизелиновые цвет белый', 7, N'Флизелин', 7, 1.75)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (74, N'Обои флизелиновые Лилия бежевые', 17, N'Флизелин', 7, 1.85)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (75, N'Стеклообои Рогожка белые', 4, N'Флизелин', 7, 2.2)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (76, N'Стеклохолст', 8, N'Флизелин', 7, 1.3)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (77, N'Стеклохолст малярный Паутинка', 20, N'Флизелин', 7, 0.8)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (78, N'Обои под покраску флизелиновые Рельеф', 3, N'Цветная пластизоль', 11, 1.65)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (79, N'Фотообои Тропики 290x260 см', 14, N'Цветная пластизоль', 11, 1.25)
INSERT [dbo].[ProductsMaterials] ([ProductMaterialId], [Product], [ProductId], [MaterialName], [MaterialId], [MinAmountMaterial]) VALUES (80, N'Фотообои флизелиновые 3D Лес и горы 300x280 см', 6, N'Цветная пластизоль', 11, 1)
SET IDENTITY_INSERT [dbo].[ProductsMaterials] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductsType] ON 

INSERT [dbo].[ProductsType] ([ProductTypeId], [ProductType], [CoiffecentProductType]) VALUES (1, N'Декоративные обои', 5.5)
INSERT [dbo].[ProductsType] ([ProductTypeId], [ProductType], [CoiffecentProductType]) VALUES (2, N'Фотообои', 7.54)
INSERT [dbo].[ProductsType] ([ProductTypeId], [ProductType], [CoiffecentProductType]) VALUES (3, N'Обои под покраску', 3.25)
INSERT [dbo].[ProductsType] ([ProductTypeId], [ProductType], [CoiffecentProductType]) VALUES (4, N'Стеклообои', 2.5)
SET IDENTITY_INSERT [dbo].[ProductsType] OFF
GO
ALTER TABLE [dbo].[Materials]  WITH CHECK ADD  CONSTRAINT [FK_Materials_MaterialsType] FOREIGN KEY([MaterialTypeId])
REFERENCES [dbo].[MaterialsType] ([MaterialTypeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Materials] CHECK CONSTRAINT [FK_Materials_MaterialsType]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductsType] FOREIGN KEY([ProdcutTypeId])
REFERENCES [dbo].[ProductsType] ([ProductTypeId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductsType]
GO
ALTER TABLE [dbo].[ProductsMaterials]  WITH CHECK ADD  CONSTRAINT [FK_ProductsMaterials_Materials] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Materials] ([MaterialId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductsMaterials] CHECK CONSTRAINT [FK_ProductsMaterials_Materials]
GO
ALTER TABLE [dbo].[ProductsMaterials]  WITH CHECK ADD  CONSTRAINT [FK_ProductsMaterials_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductsMaterials] CHECK CONSTRAINT [FK_ProductsMaterials_Products]
GO
