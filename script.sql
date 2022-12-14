USE [framework]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 30-11-2022 1:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[id_empresa] [int] NOT NULL,
	[nombre_empresa] [varchar](40) NULL,
	[num_docum_empresa] [varchar](10) NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[id_empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa_Modulo]    Script Date: 30-11-2022 1:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa_Modulo](
	[id_empresa] [int] NOT NULL,
	[id_modulo] [int] NOT NULL,
 CONSTRAINT [PK_Empresa_Modulo] PRIMARY KEY CLUSTERED 
(
	[id_empresa] ASC,
	[id_modulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 30-11-2022 1:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[id_menu] [int] NOT NULL,
	[nombre_menu] [varchar](50) NULL,
	[id_modulo] [int] NULL,
	[recurso_menu] [varchar](50) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[id_menu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu_Rol]    Script Date: 30-11-2022 1:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu_Rol](
	[id_menu] [int] NOT NULL,
	[id_rol] [int] NOT NULL,
 CONSTRAINT [PK_Menu-Rol] PRIMARY KEY CLUSTERED 
(
	[id_menu] ASC,
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modulo]    Script Date: 30-11-2022 1:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modulo](
	[id_modulo] [int] NOT NULL,
	[nombre_modulo] [varchar](40) NULL,
 CONSTRAINT [PK_Modulo] PRIMARY KEY CLUSTERED 
(
	[id_modulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 30-11-2022 1:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[id_rol] [int] NOT NULL,
	[nombre_rol] [varchar](50) NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubMenu]    Script Date: 30-11-2022 1:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubMenu](
	[id_submenu] [int] NOT NULL,
	[nombre_submenu] [varchar](30) NULL,
	[id_menu] [int] NULL,
	[recurso_submenu] [varchar](50) NULL,
 CONSTRAINT [PK_SubMenu] PRIMARY KEY CLUSTERED 
(
	[id_submenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubMenu_Rol]    Script Date: 30-11-2022 1:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubMenu_Rol](
	[id_submenu] [int] NOT NULL,
	[id_rol] [int] NOT NULL,
 CONSTRAINT [PK_SubMenu_Rol] PRIMARY KEY CLUSTERED 
(
	[id_submenu] ASC,
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 30-11-2022 1:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id_usuario] [varchar](15) NOT NULL,
	[nombre_usuario] [varchar](50) NULL,
	[apell_pat_usu] [varchar](50) NULL,
	[apell_mat_usu] [varchar](50) NULL,
	[numero_documento] [varchar](50) NULL,
	[num_intentos] [int] NULL,
	[id_empresa] [int] NULL,
	[id_rol] [int] NULL,
	[password] [varchar](10) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Empresa] ([id_empresa], [nombre_empresa], [num_docum_empresa]) VALUES (1, N'Empresa1', N'77256666-K')
INSERT [dbo].[Empresa] ([id_empresa], [nombre_empresa], [num_docum_empresa]) VALUES (2, N'Empresa2', N'88255477-1')
INSERT [dbo].[Empresa] ([id_empresa], [nombre_empresa], [num_docum_empresa]) VALUES (3, N'Empresa3', N'54770899-K')
GO
INSERT [dbo].[Empresa_Modulo] ([id_empresa], [id_modulo]) VALUES (1, 1)
INSERT [dbo].[Empresa_Modulo] ([id_empresa], [id_modulo]) VALUES (1, 2)
INSERT [dbo].[Empresa_Modulo] ([id_empresa], [id_modulo]) VALUES (2, 1)
INSERT [dbo].[Empresa_Modulo] ([id_empresa], [id_modulo]) VALUES (2, 2)
INSERT [dbo].[Empresa_Modulo] ([id_empresa], [id_modulo]) VALUES (2, 3)
INSERT [dbo].[Empresa_Modulo] ([id_empresa], [id_modulo]) VALUES (3, 1)
INSERT [dbo].[Empresa_Modulo] ([id_empresa], [id_modulo]) VALUES (3, 2)
INSERT [dbo].[Empresa_Modulo] ([id_empresa], [id_modulo]) VALUES (3, 3)
GO
INSERT [dbo].[Menu] ([id_menu], [nombre_menu], [id_modulo], [recurso_menu]) VALUES (1, N'Menu1', 1, N'menu1/')
INSERT [dbo].[Menu] ([id_menu], [nombre_menu], [id_modulo], [recurso_menu]) VALUES (2, N'Menu2', 1, N'menu2/')
INSERT [dbo].[Menu] ([id_menu], [nombre_menu], [id_modulo], [recurso_menu]) VALUES (3, N'Menu3', 1, N'menu3/')
INSERT [dbo].[Menu] ([id_menu], [nombre_menu], [id_modulo], [recurso_menu]) VALUES (4, N'Menu4', 2, N'menu4/')
INSERT [dbo].[Menu] ([id_menu], [nombre_menu], [id_modulo], [recurso_menu]) VALUES (5, N'Menu5', 2, N'menu5/')
INSERT [dbo].[Menu] ([id_menu], [nombre_menu], [id_modulo], [recurso_menu]) VALUES (6, N'Menu6', 2, N'menu6/')
INSERT [dbo].[Menu] ([id_menu], [nombre_menu], [id_modulo], [recurso_menu]) VALUES (7, N'Menu7', 3, N'menu7/')
INSERT [dbo].[Menu] ([id_menu], [nombre_menu], [id_modulo], [recurso_menu]) VALUES (8, N'Menu8', 3, N'menu8/')
INSERT [dbo].[Menu] ([id_menu], [nombre_menu], [id_modulo], [recurso_menu]) VALUES (9, N'Menu9', 3, N'menu9/')
INSERT [dbo].[Menu] ([id_menu], [nombre_menu], [id_modulo], [recurso_menu]) VALUES (10, N'Menu10', 3, N'menu10/')
GO
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (1, 1)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (1, 2)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (1, 3)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (2, 1)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (2, 2)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (2, 3)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (3, 1)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (3, 2)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (3, 3)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (4, 1)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (4, 2)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (4, 3)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (5, 1)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (5, 2)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (5, 3)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (6, 2)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (6, 3)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (7, 2)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (7, 3)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (8, 2)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (8, 3)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (9, 2)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (9, 3)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (10, 1)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (10, 2)
INSERT [dbo].[Menu_Rol] ([id_menu], [id_rol]) VALUES (10, 3)
GO
INSERT [dbo].[Modulo] ([id_modulo], [nombre_modulo]) VALUES (1, N'Modulo1')
INSERT [dbo].[Modulo] ([id_modulo], [nombre_modulo]) VALUES (2, N'Modulo2')
INSERT [dbo].[Modulo] ([id_modulo], [nombre_modulo]) VALUES (3, N'Modulo3')
GO
INSERT [dbo].[Rol] ([id_rol], [nombre_rol]) VALUES (1, N'Rol1')
INSERT [dbo].[Rol] ([id_rol], [nombre_rol]) VALUES (2, N'Rol2')
INSERT [dbo].[Rol] ([id_rol], [nombre_rol]) VALUES (3, N'Rol3')
GO
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (1, N'SubMenu1', 1, N'submenu1/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (2, N'SubMenu2', 1, N'submenu2/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (3, N'SubMenu3', 1, N'submenu3/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (4, N'SubMenu4', 1, N'submenu4/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (5, N'SubMenu5', 1, N'submenu5/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (6, N'SubMenu6', 2, N'submenu6/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (7, N'SubMenu7', 2, N'submenu7/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (8, N'SubMenu8', 2, N'submenu8/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (9, N'SubMenu9', 2, N'submenu9/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (10, N'SubMenu10', 2, N'submenu10/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (11, N'SubMenu11', 3, N'submenu11/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (12, N'SubMenu12', 3, N'submenu12/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (13, N'SubMenu13', 3, N'submenu13/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (14, N'SubMenu14', 3, N'submenu14/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (15, N'SubMenu15', 3, N'submenu15/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (16, N'SubMenu16', 4, N'submenu16/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (17, N'SubMenu17', 4, N'submenu17/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (18, N'SubMenu18', 4, N'submenu18/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (19, N'SubMenu19', 4, N'submenu19/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (20, N'SubMenu20', 4, N'submenu20/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (21, N'SubMenu21', 5, N'submenu21/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (22, N'SubMenu22', 5, N'submenu22/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (23, N'SubMenu23', 5, N'submenu23/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (24, N'SubMenu24', 5, N'submenu24/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (25, N'SubMenu25', 5, N'submenu25/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (26, N'SubMenu31', 6, N'submenu31/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (27, N'SubMenu32', 6, N'submenu32/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (28, N'SubMenu33', 6, N'submenu33/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (29, N'SubMenu34', 6, N'submenu34/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (30, N'SubMenu35', 6, N'submenu35/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (31, N'SubMenu31', 7, N'submenu31/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (32, N'SubMenu32', 7, N'submenu32/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (33, N'SubMenu33', 7, N'submenu33/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (34, N'SubMenu34', 7, N'submenu34/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (35, N'SubMenu35', 7, N'submenu35/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (36, N'SubMenu36', 8, N'submenu36/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (37, N'SubMenu37', 8, N'submenu37/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (38, N'SubMenu38', 8, N'submenu38/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (39, N'SubMenu39', 8, N'submenu39/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (40, N'SubMenu40', 8, N'submenu40/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (41, N'SubMenu41', 9, N'submenu41/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (42, N'SubMenu42', 9, N'submenu42/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (43, N'SubMenu43', 9, N'submenu43/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (44, N'SubMenu44', 9, N'submenu44/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (45, N'SubMenu45', 9, N'submenu45/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (46, N'SubMenu46', 10, N'submenu46/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (47, N'SubMenu47', 10, N'submenu47/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (48, N'SubMenu48', 10, N'submenu48/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (49, N'SubMenu49', 10, N'submenu49/')
INSERT [dbo].[SubMenu] ([id_submenu], [nombre_submenu], [id_menu], [recurso_submenu]) VALUES (50, N'SubMenu50', 10, N'submenu50/')
GO
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (1, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (1, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (1, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (2, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (2, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (2, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (3, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (3, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (3, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (4, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (4, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (4, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (5, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (5, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (5, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (6, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (6, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (6, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (7, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (7, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (7, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (8, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (8, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (8, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (9, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (9, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (9, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (10, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (10, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (10, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (11, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (11, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (11, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (12, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (12, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (12, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (13, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (13, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (13, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (14, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (14, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (14, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (15, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (15, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (15, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (16, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (16, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (16, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (17, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (17, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (17, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (18, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (18, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (18, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (19, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (19, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (19, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (20, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (20, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (20, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (21, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (21, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (21, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (22, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (22, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (22, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (23, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (23, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (23, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (24, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (24, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (24, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (25, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (25, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (25, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (26, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (26, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (26, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (27, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (27, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (27, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (28, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (28, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (28, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (29, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (29, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (29, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (30, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (30, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (30, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (31, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (31, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (31, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (32, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (32, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (32, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (33, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (33, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (33, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (34, 1)
GO
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (34, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (34, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (35, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (35, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (35, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (36, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (36, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (36, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (37, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (37, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (37, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (38, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (38, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (38, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (39, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (39, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (39, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (40, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (40, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (40, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (41, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (41, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (41, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (42, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (42, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (42, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (43, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (43, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (43, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (44, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (44, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (44, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (45, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (45, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (45, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (46, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (46, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (46, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (47, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (47, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (47, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (48, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (48, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (48, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (49, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (49, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (49, 3)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (50, 1)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (50, 2)
INSERT [dbo].[SubMenu_Rol] ([id_submenu], [id_rol]) VALUES (50, 3)
GO
INSERT [dbo].[Usuario] ([id_usuario], [nombre_usuario], [apell_pat_usu], [apell_mat_usu], [numero_documento], [num_intentos], [id_empresa], [id_rol], [password]) VALUES (N'JPEREZ', N'Jose', N'Perez', N'Soto', N'14222547-K', 1, 1, 2, N'clave02')
INSERT [dbo].[Usuario] ([id_usuario], [nombre_usuario], [apell_pat_usu], [apell_mat_usu], [numero_documento], [num_intentos], [id_empresa], [id_rol], [password]) VALUES (N'MIBARRA', N'Miguel', N'Ibarra', N'Ortega', N'15470789-1', 14, 1, 1, N'clave01')
INSERT [dbo].[Usuario] ([id_usuario], [nombre_usuario], [apell_pat_usu], [apell_mat_usu], [numero_documento], [num_intentos], [id_empresa], [id_rol], [password]) VALUES (N'RGONZALEZ', N'Ricardo', N'Gonzalez', N'Alarcon', N'9699877-3-1', 0, 2, 1, N'clave03')
GO
ALTER TABLE [dbo].[Empresa_Modulo]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Modulo_Empresa] FOREIGN KEY([id_empresa])
REFERENCES [dbo].[Empresa] ([id_empresa])
GO
ALTER TABLE [dbo].[Empresa_Modulo] CHECK CONSTRAINT [FK_Empresa_Modulo_Empresa]
GO
ALTER TABLE [dbo].[Empresa_Modulo]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Modulo_Modulo] FOREIGN KEY([id_modulo])
REFERENCES [dbo].[Modulo] ([id_modulo])
GO
ALTER TABLE [dbo].[Empresa_Modulo] CHECK CONSTRAINT [FK_Empresa_Modulo_Modulo]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_Modulo] FOREIGN KEY([id_modulo])
REFERENCES [dbo].[Modulo] ([id_modulo])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_Modulo]
GO
ALTER TABLE [dbo].[Menu_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Menu-Rol_Menu] FOREIGN KEY([id_menu])
REFERENCES [dbo].[Menu] ([id_menu])
GO
ALTER TABLE [dbo].[Menu_Rol] CHECK CONSTRAINT [FK_Menu-Rol_Menu]
GO
ALTER TABLE [dbo].[Menu_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Menu-Rol_Rol] FOREIGN KEY([id_rol])
REFERENCES [dbo].[Rol] ([id_rol])
GO
ALTER TABLE [dbo].[Menu_Rol] CHECK CONSTRAINT [FK_Menu-Rol_Rol]
GO
ALTER TABLE [dbo].[SubMenu]  WITH CHECK ADD  CONSTRAINT [FK_SubMenu_Menu] FOREIGN KEY([id_menu])
REFERENCES [dbo].[Menu] ([id_menu])
GO
ALTER TABLE [dbo].[SubMenu] CHECK CONSTRAINT [FK_SubMenu_Menu]
GO
ALTER TABLE [dbo].[SubMenu_Rol]  WITH CHECK ADD  CONSTRAINT [FK_SubMenu_Rol_Rol] FOREIGN KEY([id_rol])
REFERENCES [dbo].[Rol] ([id_rol])
GO
ALTER TABLE [dbo].[SubMenu_Rol] CHECK CONSTRAINT [FK_SubMenu_Rol_Rol]
GO
ALTER TABLE [dbo].[SubMenu_Rol]  WITH CHECK ADD  CONSTRAINT [FK_SubMenu_Rol_SubMenu] FOREIGN KEY([id_submenu])
REFERENCES [dbo].[SubMenu] ([id_submenu])
GO
ALTER TABLE [dbo].[SubMenu_Rol] CHECK CONSTRAINT [FK_SubMenu_Rol_SubMenu]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Empresa] FOREIGN KEY([id_empresa])
REFERENCES [dbo].[Empresa] ([id_empresa])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Empresa]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Rol] FOREIGN KEY([id_rol])
REFERENCES [dbo].[Rol] ([id_rol])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Rol]
GO
/****** Object:  StoredProcedure [dbo].[AutenticaUsuario]    Script Date: 30-11-2022 1:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   procedure [dbo].[AutenticaUsuario]
  @Usuario varchar(10),
  @Password varchar(10),
  @IdEmpresa int,
  @CodSalida int OUTPUT,
  @MsnSalida varchar(30) OUTPUT,
  @Empresa varchar(30) OUTPUT,
  @Valido int = 0,
  @Intentos int = 0
 as
 Begin
	select @Valido =count(*)
	from Usuario	 
	where id_usuario = @Usuario 
	and  password = @Password 
	and id_empresa = @IdEmpresa 
	and num_intentos < 3; 

	if ( @Valido = 0 ) 
		Begin
			set @MsnSalida = 'Usuario o Password no validos';		
			set @CodSalida = 1 ;
			
			select @Intentos = num_intentos 
			from Usuario
			where id_usuario = @Usuario;

			update Usuario set num_intentos = @Intentos + 1
			where id_usuario = @Usuario;

			if ( @Intentos+1 >= 3 )
				Begin
					set @MsnSalida = 'Usuario bloqueado';		
					set @CodSalida = 2 ;
				End


		End
	else
		Begin
			set  @MsnSalida = 'Usuario valido';
			set @CodSalida = 0;
			select @Empresa = nombre_empresa 
			from Empresa
			where id_empresa = @IdEmpresa ;
		End

	
   End
GO
/****** Object:  StoredProcedure [dbo].[PermisosUsuario]    Script Date: 30-11-2022 1:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procedure [dbo].[PermisosUsuario]
  @Usuario varchar(10),
  @IdEmpresa int
 as
 Begin
	select usu.id_usuario, ro.nombre_rol, ro.id_rol, emp.nombre_empresa, emp.id_empresa,  modu.nombre_modulo, modu.id_modulo, men.nombre_menu, men.id_menu, 
	sub.nombre_submenu, sub.id_submenu
	from Usuario usu, Empresa emp, Menu men, Rol ro, SubMenu sub, Modulo modu, Empresa_Modulo empmodu, Menu_Rol menrol,SubMenu_Rol subrol
	where usu.id_empresa = emp.id_empresa and emp.id_empresa = empmodu.id_empresa and modu.id_modulo = empmodu.id_modulo
	and ro.id_rol = menrol.id_rol and men.id_menu = menrol.id_menu and usu.id_rol = ro.id_rol and men.id_modulo = modu.id_modulo
	and men.id_menu = sub.id_menu and sub.id_submenu = subrol.id_submenu and ro.id_rol = subrol.id_rol
	and usu.id_usuario = @Usuario and usu.id_empresa = @IdEmpresa order by modu.id_modulo asc;

  End
GO
