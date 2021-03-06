USE [QuanLyBanGIay]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 20/07/2021 12:18:17 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[ID_admin] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[FullName] [nvarchar](50) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[ID_admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 20/07/2021 12:18:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[ID_GioHang] [int] IDENTITY(1,1) NOT NULL,
	[ID_ThongTinKhachHang] [int] NULL,
	[ID_SanPham] [int] NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[ID_GioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoadon]    Script Date: 20/07/2021 12:18:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoadon](
	[ID_HoaDon] [int] IDENTITY(1,1) NOT NULL,
	[ID_ThongTinKhachHang] [int] NULL,
	[ID_SanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[TongTien] [decimal](10, 0) NULL,
	[NgayDatHang] [date] NULL,
 CONSTRAINT [PK_Hoadon] PRIMARY KEY CLUSTERED 
(
	[ID_HoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 20/07/2021 12:18:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[ID_loaiSanPham] [nvarchar](50) NOT NULL,
	[GroupName] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[ID_loaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 20/07/2021 12:18:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[ID_SanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](80) NULL,
	[GiaTien] [decimal](10, 0) NULL,
	[ID_loaiSanPham] [nvarchar](50) NULL,
	[ID_SoSize] [int] NULL,
	[Hinh] [varchar](255) NULL,
	[Mau] [nvarchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[ID_SanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 20/07/2021 12:18:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[ID_SoSize] [int] NOT NULL,
	[value1] [int] NULL,
	[value2] [int] NULL,
	[value3] [int] NULL,
	[value4] [int] NULL,
	[value5] [int] NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[ID_SoSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinKhachHang]    Script Date: 20/07/2021 12:18:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinKhachHang](
	[ID_ThongTinKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[password] [varchar](45) NOT NULL,
	[email] [varchar](80) NOT NULL,
	[firstName] [nvarchar](45) NULL,
	[lastName] [nvarchar](45) NULL,
	[SDT] [varchar](12) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[QuocTich] [varchar](45) NULL,
	[NgaySinh] [varchar](45) NULL,
 CONSTRAINT [PK_ThongTinKhachHang] PRIMARY KEY CLUSTERED 
(
	[ID_ThongTinKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YeuThich]    Script Date: 20/07/2021 12:18:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YeuThich](
	[ID_YeuThich] [int] IDENTITY(1,1) NOT NULL,
	[ID_ThongTinKhachHang] [int] NULL,
	[ID_SanPham] [int] NULL,
 CONSTRAINT [PK_YeuThich] PRIMARY KEY CLUSTERED 
(
	[ID_YeuThich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin] ON 

INSERT [dbo].[admin] ([ID_admin], [username], [password], [email], [FullName]) VALUES (1, N'minhkhanh', N'020901', N'khanhdoan693@gmail.com', N'Đoàn Minh Khánh')
SET IDENTITY_INSERT [dbo].[admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Hoadon] ON 

INSERT [dbo].[Hoadon] ([ID_HoaDon], [ID_ThongTinKhachHang], [ID_SanPham], [SoLuong], [TongTien], [NgayDatHang]) VALUES (1, 2, 3, 2, CAST(2980000 AS Decimal(10, 0)), CAST(N'2021-07-18' AS Date))
INSERT [dbo].[Hoadon] ([ID_HoaDon], [ID_ThongTinKhachHang], [ID_SanPham], [SoLuong], [TongTien], [NgayDatHang]) VALUES (2, 2, 2, 3, CAST(2999997 AS Decimal(10, 0)), CAST(N'2021-07-19' AS Date))
INSERT [dbo].[Hoadon] ([ID_HoaDon], [ID_ThongTinKhachHang], [ID_SanPham], [SoLuong], [TongTien], [NgayDatHang]) VALUES (3, 2, 5, 5, CAST(7495000 AS Decimal(10, 0)), CAST(N'2021-07-21' AS Date))
SET IDENTITY_INSERT [dbo].[Hoadon] OFF
GO
INSERT [dbo].[LoaiSanPham] ([ID_loaiSanPham], [GroupName]) VALUES (N'Hunter Nam', N'Hunter Nam')
INSERT [dbo].[LoaiSanPham] ([ID_loaiSanPham], [GroupName]) VALUES (N'Hunter Nữ', N'Hunter Nữ')
INSERT [dbo].[LoaiSanPham] ([ID_loaiSanPham], [GroupName]) VALUES (N'Phụ Kiện', N'Phụ Kiện')
INSERT [dbo].[LoaiSanPham] ([ID_loaiSanPham], [GroupName]) VALUES (N'Sandal Bé Gái', N'Sandal Bé Gái')
INSERT [dbo].[LoaiSanPham] ([ID_loaiSanPham], [GroupName]) VALUES (N'Sandal Bé Trai', N'Sandal Bé Trai')
INSERT [dbo].[LoaiSanPham] ([ID_loaiSanPham], [GroupName]) VALUES (N'Sandal Nữ', N'Sandal Nữ')
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (2, N'Giày Thể Thao Cao Cấp Nam Biti''s Hunter X Washed Grey', CAST(999000 AS Decimal(10, 0)), N'Hunter Nam', 3, N'/image/Hunter-Nam/dsmh05100xam-2_9d8f1677eed34c7f807c077d3115d951_medium.jpg', N'
Xám')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (3, N'Giày Thể Thao Cao Cấp Nam Biti''s Hunter X Army Green', CAST(1490000 AS Decimal(10, 0)), N'Hunter Nam', 5, N'/image/Hunter-nam/dsmh05100reu-2_2e3534c18d1d45968c3a41f9055db2e3_medium.jpg', N' Xanh Lá')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (4, N'Giày Thể Thao Nam Biti''s Hunter Street x VietMax', CAST(1399000 AS Decimal(10, 0)), N'Hunter Nam', 5, N'/image/Hunter-Nam/03_9eb0ee34c5f34c25b1a22a3a007e0339_medium.jpg', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (5, N'Giày Thể Thao Nam Biti''s Hunter Street x VietMax ', CAST(1499000 AS Decimal(10, 0)), N'Hunter Nam', 4, N'/image/Hunter-Nam/02_fb96605aaf6941a19ca8a037ad2c769a_medium.jpg', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (6, N'Giày Thể Thao Nam Biti''s Hunter Street x VietMax', CAST(1499000 AS Decimal(10, 0)), N'Hunter Nam', 4, N'/image/Hunter-Nam/01_e07b5f71bd82468da19d879d25014315_medium.jpg', N'Nâu')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (7, N'Giày Thể Thao Cao Cấp Nam Biti''s Hunter Core Classic Blue', CAST(699000 AS Decimal(10, 0)), N'Hunter Nam', 4, N'/image/Hunter-Nam/dsmh0500xdg-2_1e5fbe11780b4564b4959fe8750cc113_medium.jpg', N'Xanh Nước')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (8, N'Giày Thể Thao Cao Cấp Nam Biti''s Hunter Core Classic Grey', CAST(699000 AS Decimal(10, 0)), N'Hunter Nam', 5, N'/image/Hunter-Nam/dsmh05000xam__7__1eef9705616447ed9de490c30692d10a_medium.jpg', N'Xám')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (9, N'Giày Thể Thao Nam Biti''s Hunter Street Vintage Green', CAST(599000 AS Decimal(10, 0)), N'Hunter Nam', 4, N'/image/Hunter-Nam/dswh04000xng-1_fdd231b2b0ca44808f2d811cda188213_medium.jpg', N'Xanh Lá')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (10, N'Giày Thể Thao Nam Biti''s Hunter Street Vintage Black', CAST(599000 AS Decimal(10, 0)), N'Hunter Nam', 3, N'/image/Hunter-Nam/dsmh0400den-2_f9306264a1bf467fba65764b6fdb3ece_medium.jpg', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (11, N'Giày Thể Thao Nam Biti''s Hunter X Festive Aurora Black', CAST(849150 AS Decimal(10, 0)), N'Hunter Nam', 5, N'/image/Hunter-Nam/dswh03401hod__7__ead78fcb663a44fd8b3a073831021d67_medium.jpg', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (12, N'Giày Thể Thao Nam Biti''s Hunter Nameless Edition x Công Trí ', CAST(1499000 AS Decimal(10, 0)), N'Hunter Nam', 4, N'/image/Hunter-Nam/dsmh06100kem-2_b90bbc7a721a4b0893bc3a73c4cd0492_1024x1024.jpg', N'Trắng')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (13, N'Giày Thể Thao Nữ Biti''s Hunter Nameless Edition x Công Trí', CAST(1499000 AS Decimal(10, 0)), N'Hunter Nữ', 5, N'/image/Hunter-Nu/dsmh06100kem-2_661cd2a87990466393eebab7dad1ee7c_1024x1024.jpg', N'Trắng')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (14, N'Giày Thể Thao Nữ Biti''s Hunter Nameless Edition x Công Trí', CAST(1499000 AS Decimal(10, 0)), N'Hunter Nữ', 2, N'/image/Hunter-Nu/dsmh05900kem-2_ad4cab7a6be34871af5ef1a2292489ec_1024x1024.jpg', N'Trắng')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (15, N'Giày Thể Thao Cao Cấp Nữ Biti''s Hunter X Pale Purple', CAST(929000 AS Decimal(10, 0)), N'Hunter Nữ', 4, N'/image/Hunter-Nu/dswh05100tim-2_739795810a0f40d08faeb7aa75bb855e_1024x1024.jpg', N'Tím')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (16, N'Giày Thể Thao Cao Cấp Nữ Biti''s Hunter X Army Green', CAST(929000 AS Decimal(10, 0)), N'Hunter Nữ ', 3, N'/image/Hunter-Nu/dswh05100reu-2_28ca85e01d9f42a9b89d66b7d0cff89a_1024x1024.jpg', N'Xanh LÁ')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (17, N'Giày Thể Thao Nữ Biti''s Hunter Street x VietMax', CAST(1399000 AS Decimal(10, 0)), N'Hunter Nữ ', 5, N'/image/Hunter-Nu/03_71f08d0206194d05b868ddb96a0cdecc_1024x1024.jpg', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (18, N'Giày Thể Thao Nữ Biti''s Hunter Street x VietMax', CAST(1149000 AS Decimal(10, 0)), N'Hunter Nữ ', 4, N'/image/Hunter-Nu/02_807fa569fb4d472381563da79bde2f81_1024x1024.jpg', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (19, N'Giày Thể Thao Nữ Biti''s Hunter Street x VietMax', CAST(1499000 AS Decimal(10, 0)), N'Hunter Nữ ', 5, N'/image/Hunter-Nu/01_d4f6cfb316e048de998fb66ed73a4dc3_1024x1024.jpg', N'Nâu')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (20, N'Giày Thể Thao Cao Cấp Nữ Biti''s Hunter Core Classic Grey', CAST(699000 AS Decimal(10, 0)), N'Hunter Nữ ', 3, N'/image/Hunter-Nu/dswh0500xam-2_a17385c00d8c44b1aa718dedae3acfb2_1024x1024.jpg', N'Xám')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (21, N'Giày Thể Thao Cao Cấp Nữ Biti''s Hunter Core Classic Pink ', CAST(699000 AS Decimal(10, 0)), N'Hunter Nữ ', 4, N'/image/Hunter-Nu/dswh0500den-2_76cfb2fd696a4c418a4d34c3e450921f_1024x1024.jpg', N'Hồng')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (22, N'Giày Thể Thao Nữ Biti''s Hunter Street Vintage Green', CAST(579000 AS Decimal(10, 0)), N'Hunter Nữ ', 5, N'/image/Hunter-Nu/dswh04000xng-1_7cd08e869b39487c92e1a99ad93faab8_1024x1024.jpg', N'Xanh Lá')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (23, N'Giày Thể Thao Nữ Biti''s Hunter Street Vintage Purple', CAST(579000 AS Decimal(10, 0)), N'Hunter Nữ ', 2, N'/image/Hunter-Nu/dswh04000tim-1_a74d935ca4b64c7ca115f6e644be17c0_1024x1024.jpg', N'Tím')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (24, N'Giày Thể Thao Nữ Biti''s Hunter Street Vintage Blue ', CAST(579000 AS Decimal(10, 0)), N'Hunter Nữ ', 1, N'/image/Hunter-Nu/dswh04000xdl-1_4becc8e577324438b85049fbe5b12ffd_1024x1024.jpg', N'Xanh Nước')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (26, N'Nón Biti''s Hunter X AHUH00300TRG (Trắng)', CAST(157250 AS Decimal(10, 0)), N'Phụ Kiện ', 0, N'/image/Phu-Kien/ahuh00300trg__3__3988f87ca24d4588b3531392ff2df45e_1024x1024.jpg', N'Trắng')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (27, N'Lót Đế Giày Biti''s Hunter X AIUH00100DEN (Đen)', CAST(211650 AS Decimal(10, 0)), N'Phụ Kiện', 5, N'/image/Phu-Kien/aiuh00100den__1__1024x1024.jpg', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (28, N'Lót Đế Giày Biti''s Hunter Core AIUH00200DEN (Đen)', CAST(99000 AS Decimal(10, 0)), N'Phụ Kiện ', 5, N'/image/Phu-Kien/aiuh00200den__1__1024x1024.jpg', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (29, N'Dây Giày Biti''s ALUH00100XAM (Xám)', CAST(41500 AS Decimal(10, 0)), N'Phụ Kiện ', 0, N'/image/Phu-Kien/dsc_0121_2587281032cb4ba881e075c8959b7cc1_1024x1024.jpg', N'Xám')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (30, N'Dây Giày Biti''s ALUH00100CAM (Cam)', CAST(41500 AS Decimal(10, 0)), N'Phụ Kiện ', 0, N'/image/Phu-Kien/dsc_0119_9d0e21ac345543b6b0772227862e0ca0_1024x1024.jpg', N'Cam')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (31, N'Dây Giày Biti''s ALUH00100XNH (Xanh Nhớt)', CAST(41500 AS Decimal(10, 0)), N'Phụ Kiện', 0, N'/image/Phu-Kien/dsc_0123_b91a4ee9907342bca935e3c588725c1c_1024x1024.jpg', N'Xanh Nhớt')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (32, N'Dây Giày Biti''s ALUH00100TRG (Trắng)', CAST(41600 AS Decimal(10, 0)), N'Phụ Kiện', 0, N'/image/Phu-Kien/dsc_0118_64d1bef22c9c42c3a2e7db697ae4a7aa_1024x1024.jpg', N'Trắng')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (33, N'Dây Giày Biti''s ALUH00100DEN (Đen)', CAST(41500 AS Decimal(10, 0)), N'Phụ Kiện', 0, N'/image/Phu-Kien/dsc_0122_2f28e760b53341f38451c642f5c570a0_1024x1024.jpg', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (34, N'Dây Giày Biti''s ALUH00100DOO (Đỏ)', CAST(41650 AS Decimal(10, 0)), N'Phụ Kiện ', 0, N'/image/Phu-kien/dsc_0120_6a1879456c5f42cfbe091f9cf5da84e6_1024x1024.jpg', N'Đỏ')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (35, N'Áo Logo Phản Quang Biti''s Hunter X ACUH00100TRG (Trắng)', CAST(211650 AS Decimal(10, 0)), N'Phụ Kiện ', 0, N'/image/Phu-Kien/dsc_0301_dd9089e664d148b791c411755732e3d4_1024x1024.jpg', N'Trắng')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (37, N'Cặp Pin Kim Loại Mẫu Universal Love AAUH00200DEN', CAST(140250 AS Decimal(10, 0)), N'Phụ Kiện ', 5, N'/image/Phu-Kien/dsc_0040_02acac8a2c304768ab352120657b5a64_1024x1024.jpg', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (38, N'Sandal Da Thật Nữ Gosto GFW012300DEN (Đen)', CAST(679000 AS Decimal(10, 0)), N'Sandal Nữ', 5, N'/image/Gosto/gfw012300den_41f84ac0fa1f4bd1be6bd5cdac75f5c6_1024x1024 (1).png', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (39, N'Sandal Da Thật Nữ Gosto GFW012200KEM (Kem)', CAST(703000 AS Decimal(10, 0)), N'Sandal Nữ ', 5, N'/image/Gosto/gfw012200kem_5010b12607ae45d9a12a412ce88bb758_1024x1024.png', N'Kem')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (40, N'Sandal Da Thật Nữ Gosto GFW012200DEN (Đen)', CAST(703000 AS Decimal(10, 0)), N'Sandal Nữ ', 5, N'/image/Gosto/gfw012200den_2ef14c9d9f9646be88a4ee50bad11fbc_1024x1024.png', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (41, N'Sandal Da Thật Nữ Gosto Sensual GFW017200DEN (Đen)', CAST(799000 AS Decimal(10, 0)), N'Sandal Nữ ', 5, N'/image/Gosto/gfw017200den__5__5faab268eea341e997d9781346535d15_1024x1024.jpg', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (42, N'Dép Cao Gót Da Thật Nữ Gosto Spark GFW016900DEN (Đen)', CAST(699000 AS Decimal(10, 0)), N'Sandal Nữ ', 5, N'/image/Gosto/gfw016900den__5__5d24eb084bc643178450a610f1fbcd0f_1024x1024.jpg', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (43, N'Giày Thể Thao Nữ Gosto Clara Edge GFW016700TRG (Trắng)', CAST(999000 AS Decimal(10, 0)), N'Sandal Nữ', 4, N'/image/Gosto/gfw016700trg__5__5c40673b6b9e446eb5f925639a046efc_1024x1024.jpg', N'Trắng')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (47, N'Giày Búp Bê Bé Gái Gosto GFB000500HOG (Hồng)', CAST(590000 AS Decimal(10, 0)), N'Sandal Nữ', 5, N'/image/Gosto/gfb000500hog__5__32a1d428caa84a3f80b9ad9ce33b03e6_1024x1024.jpg', N'Hồng')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (48, N'Giày Búp Bê Bé Gái Gosto GFB000500DEN (Đen)', CAST(599000 AS Decimal(10, 0)), N'Sandal Nữ ', 5, N'/image/Gosto/gfb000500den__5__6884623a3b394b36ab48efdbe5e3e3bc_1024x1024.jpg', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (49, N'Sandal Da Thật Nữ Gosto Daisy Glam GFW016100DEN (Đen)', CAST(929000 AS Decimal(10, 0)), N'Sandal Nữ ', 5, N'/image/Gosto/gfw016100den__6__bd2e0c0f8372488492be894cbd88bdcd_1024x1024.jpg', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (50, N'Giày Cao Gót Da Thật Nữ Gosto Square Pump GFW016488DEN (Đen)', CAST(711200 AS Decimal(10, 0)), N'Sandal Nữ', 3, N'/image/Gosto/gfw016488den__7__55aacee635bd40818171fa37c547fea7_1024x1024.jpg', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (51, N'Dép Cao Gót Da Thật Nữ Gosto Scrunchie GFW016300DEN (Đen)', CAST(799000 AS Decimal(10, 0)), N'Sandal Nữ', 4, N'/image/Gosto/gfw016300den-5_0a081dec90304bb383bac9be7dfd8184_1024x1024.jpg', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (52, N'Sandal Da Thật Nữ Gosto Daisy Everyday GFW016200DEN (Đen)', CAST(899000 AS Decimal(10, 0)), N'Sandal Nữ', 4, N'/image/Gosto/gfw016200den-5_de1c2c039b114cbda5571b807fb81c06_1024x1024.jpg', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (53, N'Giày Thể Thao Nam Biti''s Hunter Core Festive Snowflake Blue', CAST(679150 AS Decimal(10, 0)), N'Hunter Nam', 3, N'/image/Hunter-Nam/dsmh04200trg__3__23b5f7d04eae4a458202de31bf4e094a_1024x1024.jpg', N'Xanh Nước')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (54, N'Giày Thể Thao Nam Biti''s Hunter Core Festive Breezer Black', CAST(679150 AS Decimal(10, 0)), N'Hunter Nam', 4, N'/image/Hunter-Nam/dsmh04200den__3__483c6547abee43c2acac5850822072f0_1024x1024.jpg', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (55, N'Giày Thể Thao Nam Biti''s Hunter X Festive Frosty-White ', CAST(915000 AS Decimal(10, 0)), N'Hunter Nam', 5, N'/image/Hunter-Nam/dsmh03500trg__6__d26559701138471888855c5a80a86ce1_1024x1024.jpg', N'Trắng')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (56, N'Sandal Bé Trai Biti''s DRB031599XMN (Xanh Minơ)', CAST(295000 AS Decimal(10, 0)), N'Sandal Bé Trai', 5, N'/image/Sandal-BeTrai/dsc_0040_7e38eb048164471aa73fd28c5bd99d09_1024x1024.jpg', N'Xanh Minơ')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (57, N'Sandal Bé Trai Biti''s DRB031599XDG (Xanh Dương)', CAST(295000 AS Decimal(10, 0)), N'Sandal Bé Trai', 5, N'/image/Sandal-BeTrai/dsc_0025_738a351f331341db8e87cd2cb83c138b_1024x1024.jpg', N'Xanh Dương')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (58, N'Sandal Eva Phun Bé Trai Biti''s DEB008100XDG (Xanh Dương)', CAST(245000 AS Decimal(10, 0)), N'Sandal Bé Trai', 5, N'/image/Sandal-BeTrai/deb008100xdg__11__31d56eb9fb5944b3ac0c5989385802f9_1024x1024.jpg', N'Xanh Dương')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (59, N'Sandal Eva Phun Bé Trai Biti''s DEB008100DEN (Đen)', CAST(245000 AS Decimal(10, 0)), N'Sandal Bé Trai', 5, N'/image/Sandal-BeTrai/deb008100den__5__2df21eaa7aa94a7d936f2093750cd2c6_1024x1024.jpg', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (60, N'Dép Xốp Bé Trai Biti''s SXB021900XDD (Xanh Dương Đậm)', CAST(108000 AS Decimal(10, 0)), N'Sandal Bé Trai ', 5, N'/image/Sandal-BeTrai/sxb021900xdd_b1844eeea8a7423a8219d8e3072d4929_1024x1024.png', N'Xanh Dương Đậm')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (61, N'Sandal Xốp Bé Trai Biti''s SXB020500XNH (Xanh Nhớt)', CAST(116000 AS Decimal(10, 0)), N'Sandal Bé Trai ', 5, N'/image/Sandal-BeTrai/sxb020500xnh_bf7c342d8a424713babc0faba6ebf22b_1024x1024.png', N'Xanh Nhớt')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (62, N'Sandal Xốp Bé Trai Biti''s SXB020500NAU (Nâu)', CAST(116000 AS Decimal(10, 0)), N'Sandal Bé Trai', 5, N'/image/Sandal-BeTrai/sxb020500nau_c7c7991a37cf48c5b8c5ca343875f9ab_1024x1024.png', N'Nâu')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (63, N'Sandal Xốp Bé Trai Biti''s SXB020100XAM (Xám)', CAST(112000 AS Decimal(10, 0)), N'Sandal Bé Trai', 5, N'/image/Sandal-BeTrai/sxb020100xam_86b45b7ff3ea4cbcafb870233de7c180_1024x1024.png', N'Xám')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (64, N'Sandal Si TPR Bé Trai Biti''s DTB070500XNH (Xanh Nhớt)', CAST(144000 AS Decimal(10, 0)), N'Sandal Bé Trai ', 5, N'/image/Sandal-BeTrai/dtb070500xnh_2a8a554a79424f42ae2211e704d59e90_1024x1024.png', N'Xanh Nhớt')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (65, N'Sandal Si TPR Bé Trai Biti''s DTB070500DOO (Đỏ)', CAST(144000 AS Decimal(10, 0)), N'Sandal Bé Trai ', 5, N'/image/Sandal-BeTrai/dtb070500doo_00c12312e66d4a1aa5d9ff429ffff80f_1024x1024.png', N'Đỏ')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (66, N'Giày Thể Thao Bé Trai Biti''s DSB133700DEN (Đen)', CAST(239500 AS Decimal(10, 0)), N'Sandal Bé Trai ', 5, N'/image/Sandal-BeTrai/dsb133700den_8edf746d615f42cfa94299bea6d76e0b_1024x1024.png', N'Đen')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (67, N'Sandal Si Cao Su Bé Trai Biti''s DRB030001TRG (Trắng)', CAST(229500 AS Decimal(10, 0)), N'Sandal Bé Trai ', 5, N'/image/Sandal-Betrai/drb030001trg_5a1b146fb96a4926962bf7eb177bff3a_1024x1024.png', N'Trắng')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (68, N'Sandal Si TPR Disney Bé Gái DTG002511TIM (Tím)', CAST(305000 AS Decimal(10, 0)), N'Sandal Bé Gái', 5, N'/image/Sandal-BeGai/dtg002511tim_80399948515a4660b5d846b8cb92c3a9_f7d2b784cf3245e6b383d163e9ed1528_1024x1024.png', N'Tím')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (69, N'Sandal Bé Gái Biti''s DTG075500TRG (Trắng)', CAST(230000 AS Decimal(10, 0)), N'Sandal Bé Gái', 5, N'/image/Sandal-BeGai/dsc_0327_22f795f4d7a44300bd30aaffd7f8ac43_1024x1024.jpg', N'Trắng')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (70, N'Sandal Bé Gái Biti''s DTG075500HOG (Hồng)', CAST(230000 AS Decimal(10, 0)), N'Sandal Bé Gái', 5, N'/image/Sandal-BeGai/dsc_0312_e2c125ca47064314baf58c4a6f9c1a0f_1024x1024.jpg', N'Hồng')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (71, N'Giày Búp Bê Bé Gái Biti''s DBB008388BAC (Bạc)', CAST(119000 AS Decimal(10, 0)), N'Sandal Bé Gái', 5, N'/image/Sandal-BeGai/bac_f609b59020564987a6bf3d2eab24c88a_1024x1024.jpg', N'Bạc')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (72, N'Giày Thể Thao Bé Gái Biti''s Hunter DSGH00300TRG (Trắng)', CAST(495000 AS Decimal(10, 0)), N'Sandal Bé Gái', 5, N'/image/Sandal-BeGai/dsgh00300trg__5__904707efc0ac42dbb1164009686ffa35_1024x1024.jpg', N'Trắng')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (73, N'Giày Thể Thao Bé Gái Biti''s Hunter DSGH00300DOG (Đồng)', CAST(495000 AS Decimal(10, 0)), N'Sandal Bé Gái', 5, N'/image/Sandal-BeGai/dsgh00300dog__5__d898dcb3314d49b5a79b43be3cf1bfac_1024x1024.jpg', N'Đồng')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (74, N'Dép Xốp Bé Gái Biti''s Frozen DXG000511XDG (Xanh Dương)', CAST(135000 AS Decimal(10, 0)), N'Sandal Bé Gái ', 5, N'/image/Sandal-BeGai/dxg000511xdg_b35a4ad1a2494c47b4855416c2462125_1024x1024.png', N'Xanh Dương')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (75, N'Dép Xốp Bé Gái Biti''s Frozen DXG000511HOG (Hồng)*', CAST(152000 AS Decimal(10, 0)), N'Sandal Bé Gái ', 5, N'/image/Sandal-BeGai/dxg000511hog__1__3ff1cff5604449e186d43519f255c3fd_1024x1024.png', N'Hồng')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (76, N'Dép Xốp Bé Gái Biti''s Doraemon DXG000422XMN (Xanh Mi Nơ)', CAST(96000 AS Decimal(10, 0)), N'Sandal Bé Gái ', 5, N'/image/Sandal-BeGai/dxg000422xmn_a540ebd8f8054fd988d54364e5612172_1024x1024.png', N'Xanh Mi Nơ')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (77, N'Giày Thể Thao Bé Gái Biti''s DSG003300TRG (Trắng)', CAST(299000 AS Decimal(10, 0)), N'Sandal Bé Gái ', 5, N'/image/Sandal-BeGai/dsg003300trg_b50edeac9367410c8a02bed2d7d26199_1024x1024.png', N'Trắng')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (78, N'Giày Thể Thao Bé Gái Biti''s DSG001300XDG (Xanh Dương)', CAST(265000 AS Decimal(10, 0)), N'Sandal Bé Gái ', 5, N'/image/Sandal-BeGai/dsg001300xdg_33faa7afeebc4efb8592e2c98e5716c8_1024x1024.png', N'Xanh Dương')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (79, N'Giày Thể Thao Bé Gái Biti''s DSG002600DOO (Đỏ)', CAST(270000 AS Decimal(10, 0)), N'Sandal Bé Gái ', 5, N'/image/Sandal-BeGai/dsg002600doo_ba163619fdde41b1b68fbf2190a96f27_1024x1024.png', N'Đỏ')
INSERT [dbo].[SanPham] ([ID_SanPham], [TenSanPham], [GiaTien], [ID_loaiSanPham], [ID_SoSize], [Hinh], [Mau]) VALUES (80, N'Giày Thể Thao Bé Gái Biti''s Frozen DSG003111HOG (Hồng)', CAST(379000 AS Decimal(10, 0)), N'Sandal Bé Gái ', 5, N'/image/Sandal-BeGai/dsg003111hog_8c2131ecfb384d7782b0dd7a2506d30f_1024x1024.png', N'Hồng')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
INSERT [dbo].[Size] ([ID_SoSize], [value1], [value2], [value3], [value4], [value5]) VALUES (0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Size] ([ID_SoSize], [value1], [value2], [value3], [value4], [value5]) VALUES (1, 39, NULL, NULL, NULL, NULL)
INSERT [dbo].[Size] ([ID_SoSize], [value1], [value2], [value3], [value4], [value5]) VALUES (2, 39, 40, NULL, NULL, NULL)
INSERT [dbo].[Size] ([ID_SoSize], [value1], [value2], [value3], [value4], [value5]) VALUES (3, 39, 40, 41, NULL, NULL)
INSERT [dbo].[Size] ([ID_SoSize], [value1], [value2], [value3], [value4], [value5]) VALUES (4, 39, 40, 41, 42, NULL)
INSERT [dbo].[Size] ([ID_SoSize], [value1], [value2], [value3], [value4], [value5]) VALUES (5, 39, 40, 41, 42, 43)
GO
SET IDENTITY_INSERT [dbo].[ThongTinKhachHang] ON 

INSERT [dbo].[ThongTinKhachHang] ([ID_ThongTinKhachHang], [password], [email], [firstName], [lastName], [SDT], [DiaChi], [QuocTich], [NgaySinh]) VALUES (2, N'02092001', N'khanhdoan693@gmail.com', N'Minh', N'Khánh', N'0984943851', N'Đồng Nai', N'Viet Nam', N'02/09/2001')
INSERT [dbo].[ThongTinKhachHang] ([ID_ThongTinKhachHang], [password], [email], [firstName], [lastName], [SDT], [DiaChi], [QuocTich], [NgaySinh]) VALUES (3, N'020901', N'kdoan292001@gmail.com', NULL, N'Huy', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ThongTinKhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[YeuThich] ON 

INSERT [dbo].[YeuThich] ([ID_YeuThich], [ID_ThongTinKhachHang], [ID_SanPham]) VALUES (15, 2, 72)
INSERT [dbo].[YeuThich] ([ID_YeuThich], [ID_ThongTinKhachHang], [ID_SanPham]) VALUES (17, 2, 41)
INSERT [dbo].[YeuThich] ([ID_YeuThich], [ID_ThongTinKhachHang], [ID_SanPham]) VALUES (19, 2, 14)
SET IDENTITY_INSERT [dbo].[YeuThich] OFF
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_SanPham] FOREIGN KEY([ID_SanPham])
REFERENCES [dbo].[SanPham] ([ID_SanPham])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_SanPham]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_ThongTinKhachHang] FOREIGN KEY([ID_ThongTinKhachHang])
REFERENCES [dbo].[ThongTinKhachHang] ([ID_ThongTinKhachHang])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_ThongTinKhachHang]
GO
ALTER TABLE [dbo].[Hoadon]  WITH CHECK ADD  CONSTRAINT [FK_Hoadon_SanPham] FOREIGN KEY([ID_SanPham])
REFERENCES [dbo].[SanPham] ([ID_SanPham])
GO
ALTER TABLE [dbo].[Hoadon] CHECK CONSTRAINT [FK_Hoadon_SanPham]
GO
ALTER TABLE [dbo].[Hoadon]  WITH CHECK ADD  CONSTRAINT [FK_Hoadon_ThongTinKhachHang] FOREIGN KEY([ID_ThongTinKhachHang])
REFERENCES [dbo].[ThongTinKhachHang] ([ID_ThongTinKhachHang])
GO
ALTER TABLE [dbo].[Hoadon] CHECK CONSTRAINT [FK_Hoadon_ThongTinKhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([ID_loaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([ID_loaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Size] FOREIGN KEY([ID_SoSize])
REFERENCES [dbo].[Size] ([ID_SoSize])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Size]
GO
ALTER TABLE [dbo].[YeuThich]  WITH CHECK ADD  CONSTRAINT [FK_YeuThich_SanPham] FOREIGN KEY([ID_SanPham])
REFERENCES [dbo].[SanPham] ([ID_SanPham])
GO
ALTER TABLE [dbo].[YeuThich] CHECK CONSTRAINT [FK_YeuThich_SanPham]
GO
ALTER TABLE [dbo].[YeuThich]  WITH CHECK ADD  CONSTRAINT [FK_YeuThich_ThongTinKhachHang] FOREIGN KEY([ID_ThongTinKhachHang])
REFERENCES [dbo].[ThongTinKhachHang] ([ID_ThongTinKhachHang])
GO
ALTER TABLE [dbo].[YeuThich] CHECK CONSTRAINT [FK_YeuThich_ThongTinKhachHang]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Account_Login]    Script Date: 20/07/2021 12:18:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_Account_Login]
	@Email varchar(50),
	@Password varchar(50)
as
begin 
	declare @count int 
	declare @res bit
	select @count = COUNT(*) from ThongTinKhachHang where @Email = email and password = @Password
	if @count > 0 
		set @res = 1
	else 
		set @res = 0

	select @res
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_Account_LoginAdmin]    Script Date: 20/07/2021 12:18:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Sp_Account_LoginAdmin]
	@Username varchar(50),
	@Password varchar(50)
as
begin 
	declare @count int 
	declare @res bit
	select @count = COUNT(*) from admin where @Username = username and password = @Password
	if @count > 0 
		set @res = 1
	else 
		set @res = 0

	select @res
end
GO
