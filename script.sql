USE [Web_ban_dien_thoai]
GO
/****** Object:  Table [dbo].[tblDanhGia]    Script Date: 9/7/2022 1:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDanhGia](
	[idDanhGia] [int] IDENTITY(1,1) NOT NULL,
	[idNguoiDung] [int] NOT NULL,
	[idSanPham] [int] NOT NULL,
	[soSao] [int] NULL,
	[noidung] [varchar](255) NOT NULL,
	[created_at] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idDanhGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGioHang]    Script Date: 9/7/2022 1:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGioHang](
	[idNguoiDung] [int] NOT NULL,
	[idSanPham] [int] NOT NULL,
	[soluong] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHinhAnh]    Script Date: 9/7/2022 1:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHinhAnh](
	[idHinhAnh] [int] IDENTITY(1,1) NOT NULL,
	[idSanPham] [int] NOT NULL,
	[path] [varchar](100) NOT NULL,
	[slug] [varchar](50) NOT NULL,
	[created_at] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idHinhAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNguoiDung]    Script Date: 9/7/2022 1:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNguoiDung](
	[idNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[tenND] [varchar](20) NOT NULL,
	[taiKhoan] [varchar](20) NOT NULL,
	[matKhau] [varchar](20) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[sdt] [varchar](50) NOT NULL,
	[created_at] [varchar](20) NOT NULL,
	[updated_at] [varchar](20) NOT NULL,
	[mucQuyen] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhanLoai]    Script Date: 9/7/2022 1:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhanLoai](
	[idSanPham] [int] NULL,
	[loai] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSanPham]    Script Date: 9/7/2022 1:14:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSanPham](
	[idSanPham] [int] IDENTITY(1,1) NOT NULL,
	[tenSP] [varchar](70) NOT NULL,
	[hang] [varchar](20) NOT NULL,
	[pin] [int] NULL,
	[ram] [int] NULL,
	[rom] [int] NULL,
	[CPU] [varchar](30) NOT NULL,
	[KTmanHinh] [varchar](30) NOT NULL,
	[cameraTruoc] [varchar](30) NOT NULL,
	[cameraSau] [varchar](30) NOT NULL,
	[gia] [int] NULL,
	[created_at] [varchar](20) NOT NULL,
	[updated_at] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblDanhGia] ON 

INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (1, 3, 1, 4, N'San pham tot', N'05:39 30/05/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (3, 7, 1, 4, N'Dung duoc', N'05:39 30/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (4, 8, 1, 5, N'Tot', N'05:39 25/05/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (5, 3, 2, 2, N'san pham dung tam duoc', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (6, 3, 2, 3, N'San pham tot', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (7, 3, 2, 1, N'Trai nghiem rat te', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (8, 8, 2, 1, N'San pham tot', N'20:29 13/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (9, 3, 3, 2, N'Dung rat te', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (10, 7, 3, 2, N'Dung rat te', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (11, 11, 3, 5, N'San pham tot', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (12, 8, 4, 1, N'san pham dung tam duoc', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (13, 11, 4, 1, N'Dung hay bi do', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (14, 3, 4, 2, N'Trai nghiem rat te', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (15, 7, 4, 5, N'Dung rat te', N'20:29 13/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (16, 8, 5, 1, N'Dung rat te', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (17, 8, 5, 1, N'Dung rat te', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (18, 7, 5, 2, N'Tuyet voi', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (19, 7, 6, 5, N'san pham dung tam duoc', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (20, 7, 6, 1, N'Xai duoc 3 thang thi bi hong pin', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (21, 8, 6, 1, N'Xai duoc 3 thang thi bi hong pin', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (22, 11, 6, 3, N'Trai nghiem rat te', N'20:29 13/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (23, 11, 7, 2, N'Tuyet voi', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (24, 7, 7, 2, N'Trai nghiem rat te', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (25, 7, 7, 4, N'Trai nghiem rat te', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (26, 8, 8, 4, N'Trai nghiem rat te', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (27, 3, 8, 4, N'san pham dung tam duoc', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (28, 8, 8, 3, N'Tuyet voi', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (29, 11, 9, 5, N'Trai nghiem rat te', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (30, 11, 9, 2, N'san pham dung tam duoc', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (31, 3, 9, 5, N'san pham dung tam duoc', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (32, 8, 10, 4, N'Dung hay bi do', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (33, 11, 10, 5, N'Dung hay bi do', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (34, 8, 10, 3, N'San pham tot', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (35, 3, 11, 4, N'Tuyet voi', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (36, 11, 11, 3, N'Tuyet voi', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (37, 8, 11, 5, N'Dung rat te', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (38, 3, 11, 3, N'san pham dung tam duoc', N'20:29 13/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (39, 3, 12, 5, N'Dung rat te', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (40, 11, 12, 1, N'Xai duoc 3 thang thi bi hong pin', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (41, 11, 12, 5, N'Trai nghiem rat te', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (42, 7, 13, 3, N'Tuyet voi', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (43, 11, 13, 1, N'Tuyet voi', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (44, 8, 13, 3, N'Dung rat te', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (45, 7, 13, 5, N'Dung rat te', N'20:29 13/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (46, 7, 14, 1, N'San pham tot', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (47, 8, 14, 1, N'Dung rat te', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (48, 3, 14, 4, N'san pham dung tam duoc', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (49, 3, 15, 2, N'Dung rat te', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (50, 8, 15, 3, N'Tuyet voi', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (51, 11, 15, 5, N'Dung rat te', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (52, 3, 15, 1, N'Dung hay bi do', N'20:29 13/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (53, 7, 16, 3, N'Tuyet voi', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (54, 3, 16, 5, N'Dung hay bi do', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (55, 7, 16, 4, N'Trai nghiem rat te', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (56, 8, 17, 5, N'San pham tot', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (57, 11, 17, 5, N'Xai duoc 3 thang thi bi hong pin', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (58, 3, 17, 2, N'Dung rat te', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (59, 3, 17, 3, N'Tuyet voi', N'20:29 13/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (60, 8, 18, 2, N'Trai nghiem rat te', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (61, 8, 18, 4, N'Dung hay bi do', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (62, 3, 18, 4, N'Trai nghiem rat te', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (63, 8, 18, 3, N'Xai duoc 3 thang thi bi hong pin', N'20:29 13/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (64, 3, 19, 3, N'Tuyet voi', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (65, 3, 19, 3, N'San pham tot', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (66, 7, 19, 5, N'Dung rat te', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (67, 8, 19, 3, N'Tuyet voi', N'20:29 13/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (68, 8, 2, 3, N'Dung rat te', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (69, 3, 2, 4, N'Trai nghiem rat te', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (70, 11, 2, 2, N'San pham tot', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (71, 11, 3, 4, N'Trai nghiem rat te', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (72, 3, 3, 5, N'Trai nghiem rat te', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (73, 8, 3, 4, N'Tuyet voi', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (74, 7, 4, 5, N'Trai nghiem rat te', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (75, 11, 4, 1, N'Tuyet voi', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (76, 3, 4, 5, N'Dung rat te', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (77, 11, 5, 5, N'San pham tot', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (78, 8, 5, 1, N'Xai duoc 3 thang thi bi hong pin', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (79, 11, 5, 4, N'Dung hay bi do', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (80, 3, 5, 5, N'San pham tot', N'20:29 13/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (81, 8, 6, 4, N'Xai duoc 3 thang thi bi hong pin', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (82, 3, 6, 2, N'Xai duoc 3 thang thi bi hong pin', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (83, 7, 6, 4, N'San pham tot', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (84, 11, 7, 4, N'san pham dung tam duoc', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (85, 3, 7, 5, N'Dung hay bi do', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (86, 11, 7, 2, N'Trai nghiem rat te', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (87, 7, 7, 4, N'San pham tot', N'20:29 13/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (88, 3, 8, 5, N'Dung hay bi do', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (89, 8, 8, 1, N'Trai nghiem rat te', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (90, 11, 8, 3, N'Xai duoc 3 thang thi bi hong pin', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (91, 8, 9, 2, N'Tuyet voi', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (92, 3, 9, 5, N'Tuyet voi', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (93, 7, 9, 2, N'San pham tot', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (94, 3, 9, 3, N'san pham dung tam duoc', N'20:29 13/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (95, 11, 10, 2, N'Trai nghiem rat te', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (96, 7, 10, 5, N'Trai nghiem rat te', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (97, 8, 10, 5, N'Trai nghiem rat te', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (98, 8, 10, 4, N'San pham tot', N'20:29 13/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (99, 3, 11, 1, N'Dung rat te', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (100, 11, 11, 4, N'Tuyet voi', N'20:29 11/06/2022')
GO
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (101, 11, 11, 5, N'Dung rat te', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (102, 7, 12, 3, N'San pham tot', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (103, 7, 12, 3, N'Xai duoc 3 thang thi bi hong pin', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (104, 11, 12, 5, N'Dung rat te', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (105, 3, 12, 1, N'Xai duoc 3 thang thi bi hong pin', N'20:29 13/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (106, 3, 13, 1, N'San pham tot', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (107, 11, 13, 4, N'san pham dung tam duoc', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (108, 3, 13, 5, N'Trai nghiem rat te', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (109, 3, 14, 5, N'san pham dung tam duoc', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (110, 3, 14, 3, N'san pham dung tam duoc', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (111, 11, 14, 2, N'san pham dung tam duoc', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (112, 3, 14, 3, N'Dung hay bi do', N'20:29 13/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (113, 8, 15, 4, N'Dung rat te', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (114, 8, 15, 1, N'San pham tot', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (115, 7, 15, 5, N'San pham tot', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (116, 7, 16, 5, N'Dung hay bi do', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (117, 3, 16, 1, N'Tuyet voi', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (118, 8, 16, 4, N'Xai duoc 3 thang thi bi hong pin', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (119, 8, 17, 1, N'Tuyet voi', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (120, 11, 17, 4, N'Dung rat te', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (121, 11, 17, 1, N'Dung hay bi do', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (122, 8, 17, 1, N'San pham tot', N'20:29 13/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (123, 11, 18, 1, N'Tuyet voi', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (124, 3, 18, 4, N'Dung rat te', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (125, 7, 18, 5, N'Xai duoc 3 thang thi bi hong pin', N'20:29 12/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (126, 3, 18, 5, N'San pham tot', N'20:29 13/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (127, 3, 19, 1, N'Dung rat te', N'20:29 10/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (128, 3, 19, 2, N'Tuyet voi', N'20:29 11/06/2022')
INSERT [dbo].[tblDanhGia] ([idDanhGia], [idNguoiDung], [idSanPham], [soSao], [noidung], [created_at]) VALUES (129, 11, 19, 4, N'Trai nghiem rat te', N'20:29 12/06/2022')
SET IDENTITY_INSERT [dbo].[tblDanhGia] OFF
GO
SET IDENTITY_INSERT [dbo].[tblHinhAnh] ON 

INSERT [dbo].[tblHinhAnh] ([idHinhAnh], [idSanPham], [path], [slug], [created_at]) VALUES (1, 1, N'img\products\huawei-mate-20-pro-green-600x600.jpg', N'huawei-mate-20-pro-green-600x600', N'05:39 30/05/2022')
INSERT [dbo].[tblHinhAnh] ([idHinhAnh], [idSanPham], [path], [slug], [created_at]) VALUES (2, 2, N'img\products\huawei-nova-3-2-600x600.jpg', N'huawei-nova-3-2-600x600', N'05:41 30/05/2022')
INSERT [dbo].[tblHinhAnh] ([idHinhAnh], [idSanPham], [path], [slug], [created_at]) VALUES (3, 3, N'img\products\huawei-y5-2017-300x300.jpg', N'huawei-y5-2017-300x300', N'05:42 30/05/2022')
INSERT [dbo].[tblHinhAnh] ([idHinhAnh], [idSanPham], [path], [slug], [created_at]) VALUES (4, 4, N'img\products\ipad-wifi-32gb-2018-thumb-600x600.jpg', N'ipad-wifi-32gb-2018-thumb-600x600', N'05:44 30/05/2022')
INSERT [dbo].[tblHinhAnh] ([idHinhAnh], [idSanPham], [path], [slug], [created_at]) VALUES (5, 5, N'img\products\iphone-7-plus-32gb-600x600.jpg', N'iphone-7-plus-32gb-600x600', N'05:46 30/05/2022')
INSERT [dbo].[tblHinhAnh] ([idHinhAnh], [idSanPham], [path], [slug], [created_at]) VALUES (6, 6, N'img\products\iphone-x-256gb-silver-400x400.jpg', N'iphone-x-256gb-silver-400x400', N'05:47 30/05/2022')
INSERT [dbo].[tblHinhAnh] ([idHinhAnh], [idSanPham], [path], [slug], [created_at]) VALUES (7, 7, N'img\products\mobiistar-b310-orange-600x600.jpg', N'mobiistar-b310-orange-600x600', N'05:49 30/05/2022')
INSERT [dbo].[tblHinhAnh] ([idHinhAnh], [idSanPham], [path], [slug], [created_at]) VALUES (8, 8, N'img\products\mobiistar-e-selfie-300-600x600.jpg', N'mobiistar-e-selfie-300-600x600', N'05:50 30/05/2022')
INSERT [dbo].[tblHinhAnh] ([idHinhAnh], [idSanPham], [path], [slug], [created_at]) VALUES (9, 9, N'img\products\mobiistar-x-3-600x600.jpg', N'mobiistar-x-3-600x600', N'05:51 30/05/2022')
INSERT [dbo].[tblHinhAnh] ([idHinhAnh], [idSanPham], [path], [slug], [created_at]) VALUES (10, 10, N'img\products\mobiistar-zumbo-s2-dual-300x300.jpg', N'mobiistar-zumbo-s2-dual-300x300', N'05:51 30/05/2022')
INSERT [dbo].[tblHinhAnh] ([idHinhAnh], [idSanPham], [path], [slug], [created_at]) VALUES (11, 11, N'img\products\nokia-51-plus-black-400x400.jpg', N'nokia-51-plus-black-400x400', N'05:57 30/05/2022')
INSERT [dbo].[tblHinhAnh] ([idHinhAnh], [idSanPham], [path], [slug], [created_at]) VALUES (12, 12, N'img\products\oppo-a3s-32gb-600x600.jpg', N'oppo-a3s-32gb-600x600', N'05:58 30/05/2022')
INSERT [dbo].[tblHinhAnh] ([idHinhAnh], [idSanPham], [path], [slug], [created_at]) VALUES (13, 13, N'img\products\oppo-f9-red-600x600.jpg', N'oppo-f9-red-600x600', N'05:59 30/05/2022')
INSERT [dbo].[tblHinhAnh] ([idHinhAnh], [idSanPham], [path], [slug], [created_at]) VALUES (14, 14, N'img\products\samsung-galaxy-a8-plus-2018-gold-600x600.jpg', N'samsung-galaxy-a8-plus-2018-gold-600x600', N'06:01 30/05/2022')
INSERT [dbo].[tblHinhAnh] ([idHinhAnh], [idSanPham], [path], [slug], [created_at]) VALUES (15, 15, N'img\products\samsung-galaxy-j4-plus-pink-400x400.jpg', N'samsung-galaxy-j4-plus-pink-400x400', N'06:01 30/05/2022')
INSERT [dbo].[tblHinhAnh] ([idHinhAnh], [idSanPham], [path], [slug], [created_at]) VALUES (16, 16, N'img\products\xiaomi-mi-8-1-600x600.jpg', N'xiaomi-mi-8-1-600x600', N'06:02 30/05/2022')
INSERT [dbo].[tblHinhAnh] ([idHinhAnh], [idSanPham], [path], [slug], [created_at]) VALUES (17, 17, N'img\products\xiaomi-mi-8-lite-black-1-600x600.jpg', N'xiaomi-mi-8-lite-black-1-600x600', N'06:03 30/05/2022')
INSERT [dbo].[tblHinhAnh] ([idHinhAnh], [idSanPham], [path], [slug], [created_at]) VALUES (18, 18, N'img\products\xiaomi-redmi-5-plus-600x600.jpg', N'xiaomi-redmi-5-plus-600x600', N'06:04 30/05/2022')
INSERT [dbo].[tblHinhAnh] ([idHinhAnh], [idSanPham], [path], [slug], [created_at]) VALUES (19, 19, N'img\products\xiaomi-redmi-note-5-pro-600x600.jpg', N'xiaomi-redmi-note-5-pro-600x600', N'06:05 30/05/2022')
SET IDENTITY_INSERT [dbo].[tblHinhAnh] OFF
GO
SET IDENTITY_INSERT [dbo].[tblNguoiDung] ON 

INSERT [dbo].[tblNguoiDung] ([idNguoiDung], [tenND], [taiKhoan], [matKhau], [email], [sdt], [created_at], [updated_at], [mucQuyen]) VALUES (3, N'Dao Trong Phuc', N'PhucDT12', N'dt123456', N'phucdao@gmail.com', N'032222000', N'05:39 30/05/2022', N'05:39 30/05/2022', 0)
INSERT [dbo].[tblNguoiDung] ([idNguoiDung], [tenND], [taiKhoan], [matKhau], [email], [sdt], [created_at], [updated_at], [mucQuyen]) VALUES (7, N'Nguyen Hoang Viet', N'VietNH', N'123456', N'vien@gmail.com', N'001122334', N'05:39 30/05/2022', N'05:39 30/05/2022', 0)
INSERT [dbo].[tblNguoiDung] ([idNguoiDung], [tenND], [taiKhoan], [matKhau], [email], [sdt], [created_at], [updated_at], [mucQuyen]) VALUES (8, N'Nguyen Quang Truong ', N'TruongNQ', N'123456', N'truong@gmail.com', N'011111223', N'05:39 30/05/2022', N'05:39 30/05/2022', 0)
INSERT [dbo].[tblNguoiDung] ([idNguoiDung], [tenND], [taiKhoan], [matKhau], [email], [sdt], [created_at], [updated_at], [mucQuyen]) VALUES (11, N'Tran Vu Minh Quy', N'Quybu', N'123456', N'quy@gmail.com', N'012121212', N'05:39 30/05/2022', N'05:39 30/05/2022', 0)
INSERT [dbo].[tblNguoiDung] ([idNguoiDung], [tenND], [taiKhoan], [matKhau], [email], [sdt], [created_at], [updated_at], [mucQuyen]) VALUES (13, N'Admin', N'admin', N'123456', N'admin@gmail.com', N'0123456789', N'05:39 30/05/2022', N'05:39 30/05/2022', 1)
INSERT [dbo].[tblNguoiDung] ([idNguoiDung], [tenND], [taiKhoan], [matKhau], [email], [sdt], [created_at], [updated_at], [mucQuyen]) VALUES (21, N'minh quy', N'sa12', N'12345678', N'quy31@gmail.com', N'02020202', N'23:00 19/06/2022', N'23:00 19/06/2022', 0)
INSERT [dbo].[tblNguoiDung] ([idNguoiDung], [tenND], [taiKhoan], [matKhau], [email], [sdt], [created_at], [updated_at], [mucQuyen]) VALUES (23, N'phuc du', N'sa13', N'1234567', N'du12@gmail.com', N'03030303', N'38:00 19/06/2022', N'38:00 19/06/2022', 0)
INSERT [dbo].[tblNguoiDung] ([idNguoiDung], [tenND], [taiKhoan], [matKhau], [email], [sdt], [created_at], [updated_at], [mucQuyen]) VALUES (24, N'hoag viet', N'viet13', N'123456789', N'viet31@gmail.com', N'04040404', N'10:16 19/06/2022', N'10:16 19/06/2022', 0)
INSERT [dbo].[tblNguoiDung] ([idNguoiDung], [tenND], [taiKhoan], [matKhau], [email], [sdt], [created_at], [updated_at], [mucQuyen]) VALUES (25, N'Nguy?n Thanh Hùng', N'hu12', N'hu123456', N'hungnt@gmail.com', N'003003003', N'39:21 20/06/2022', N'39:21 20/06/2022', 0)
INSERT [dbo].[tblNguoiDung] ([idNguoiDung], [tenND], [taiKhoan], [matKhau], [email], [sdt], [created_at], [updated_at], [mucQuyen]) VALUES (26, N'Ph?m H?i Ðang', N'da12', N'da123456', N'dang@gmail.com', N'005005005', N'44:21 20/06/2022', N'44:21 20/06/2022', 0)
INSERT [dbo].[tblNguoiDung] ([idNguoiDung], [tenND], [taiKhoan], [matKhau], [email], [sdt], [created_at], [updated_at], [mucQuyen]) VALUES (27, N'Tr?n Chi?n Th?ng', N'th12', N'th123456', N'thang@gmail.com', N'009009009', N'46:21 20/06/2022', N'46:21 20/06/2022', 0)
INSERT [dbo].[tblNguoiDung] ([idNguoiDung], [tenND], [taiKhoan], [matKhau], [email], [sdt], [created_at], [updated_at], [mucQuyen]) VALUES (28, N'Bùi Anh Hào', N'ho12', N'ho123456', N'hao@gmail.com', N'0333333333', N'48:21 20/06/2022', N'48:21 20/06/2022', 0)
INSERT [dbo].[tblNguoiDung] ([idNguoiDung], [tenND], [taiKhoan], [matKhau], [email], [sdt], [created_at], [updated_at], [mucQuyen]) VALUES (29, N'Duong Nh?t Tân', N'ta12', N'ta123456', N'tan@gmail.com', N'06666666', N'50:21 20/06/2022', N'50:21 20/06/2022', 0)
INSERT [dbo].[tblNguoiDung] ([idNguoiDung], [tenND], [taiKhoan], [matKhau], [email], [sdt], [created_at], [updated_at], [mucQuyen]) VALUES (1014, N'Ph?m Thành An', N'an123', N'an123456', N'anpham@gmail.com', N'09090909', N'21:01 21/06/2022', N'21:01 21/06/2022', 0)
INSERT [dbo].[tblNguoiDung] ([idNguoiDung], [tenND], [taiKhoan], [matKhau], [email], [sdt], [created_at], [updated_at], [mucQuyen]) VALUES (1016, N'Nguy?n Vu Long', N'lv12', N'lv123456', N'long@gmail.com', N'03897856', N'24:12 22/06/2022', N'24:12 22/06/2022', 0)
SET IDENTITY_INSERT [dbo].[tblNguoiDung] OFF
GO
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (15, N'tra gop 0%')
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (4, N'tra gop 0%')
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (6, N'tra gop 0%')
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (7, N'tra gop 0%')
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (8, N'noi bat')
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (11, N'noi bat')
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (17, N'noi bat')
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (3, N'noi bat')
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (16, N'gia re')
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (19, N'gia re')
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (5, N'gia re')
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (9, N'gia re')
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (14, N'moi')
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (1, N'moi')
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (2, N'moi')
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (12, N'moi')
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (5, N'de xuat')
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (10, N'de xuat')
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (13, N'de xuat')
INSERT [dbo].[tblPhanLoai] ([idSanPham], [loai]) VALUES (18, N'de xuat')
GO
SET IDENTITY_INSERT [dbo].[tblSanPham] ON 

INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (1, N'Huawei-mate-20-pro-green', N'Huawei', 4200, 6, 128, N'Hisilicon Kirin 980', N'6.39"', N'24', N'48', 6800000, N'05:39 30/05/2022', N'05:39 30/05/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (2, N'Huawei-nova-3-2', N'Huawei', 3750, 4, 128, N'Kirin 970', N'6.3"', N'24', N'60', 7500000, N'05:41 30/05/2022', N'05:41 30/05/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (3, N'Huawei-y5-2017', N'Huawei', 4000, 4, 128, N'Kirin 970', N'6.28"', N'24', N'60', 8000000, N'05:42 30/05/2022', N'05:42 30/05/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (4, N'Ipad-wifi-32gb-2018-thumb', N'Iphone', 6000, 32, 528, N'M1', N'9.7"', N'32', N'128', 25000000, N'05:44 30/05/2022', N'05:44 30/05/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (5, N'Iphone-7-plus-32gb', N'Iphone', 2800, 4, 32, N'A10', N'5.8"', N'24', N'32', 5000000, N'05:46 30/05/2022', N'05:46 30/05/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (6, N'Iphone-x-256gb-silver', N'Iphone', 2800, 4, 32, N'A10', N'6.3"', N'24', N'64', 12000000, N'05:47 30/05/2022', N'05:47 30/05/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (7, N'Mobiistar-b310-orange', N'Mobistar', 8000, 1, 16, N'Snapdragon 888+', N'3"', N'0', N'16', 99999999, N'05:49 30/05/2022', N'05:49 30/05/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (8, N'Mobiistar-e-selfie-300', N'Mobiistar', 5000, 4, 32, N'Snapdragon 415', N'6"', N'12', N'64', 5400000, N'05:50 30/05/2022', N'05:50 30/05/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (9, N'Mobiistar-x-3', N'Mobiistar', 3800, 4, 16, N'Snapdragon 515', N'6.2"', N'16', N'24', 4800000, N'05:51 30/05/2022', N'05:51 30/05/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (10, N'Mobiistar-zumbo-s2-dual', N'Mobiistar', 8000, 4, 128, N'Snapdragon 712', N'6.8"', N'24', N'6', 8000000, N'05:51 30/05/2022', N'05:51 30/05/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (11, N'Nokia-51-plus-black', N'Nokia', 8000, 4, 128, N'Snapdragon 450', N'6.3"', N'24', N'64', 6500000, N'05:57 30/05/2022', N'05:57 30/05/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (12, N'Oppo-a3s-32gb', N'Oppo', 4500, 4, 32, N'a3', N'5.6"', N'24', N'48', 5700000, N'05:58 30/05/2022', N'05:58 30/05/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (13, N'Oppo-f9-red', N'Oppo', 5800, 4, 16, N'Snapdragon 715', N'5.8"', N'24', N'48', 7800000, N'05:59 30/05/2022', N'05:59 30/05/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (14, N'Samsung-galaxy-a8-plus', N'Samsung', 4000, 4, 128, N'Kryo 465', N'5.8"', N'24', N'64', 11000000, N'06:01 30/05/2022', N'06:01 30/05/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (15, N'Samsung-galaxy-j4-plus-pink', N'Samsung', 4000, 8, 128, N'Kryo 777', N'6.8"', N'24', N'64', 14000000, N'06:01 30/05/2022', N'06:01 30/05/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (16, N'Xiaomi-mi-8-1', N'Xiaomi', 5800, 4, 32, N'Snapdragon 712', N'5.9"', N'24', N'48', 4300000, N'06:02 30/05/2022', N'06:02 30/05/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (17, N'Xiaomi-mi-8-lite-black-1', N'Xiaomi', 5000, 4, 32, N'Snapdragon 615', N'6"', N'24', N'48', 5000000, N'06:03 30/05/2022', N'06:03 30/05/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (18, N'Xiaomi-redmi-5-plus', N'Xiaomi', 5200, 4, 128, N'Snapdragon 888', N'6.3"', N'24', N'48', 6500000, N'06:04 30/05/2022', N'06:04 30/05/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (19, N'Xiaomi-redmi-note-5-pro', N'Xiaomi', 4500, 4, 16, N'Kyro 412', N'5"', N'16', N'48', 4300000, N'06:05 30/05/2022', N'06:05 30/05/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (22, N'iphone12', N'Apple', 5200, 16, 128, N'A14', N'6.5"', N'48', N'64', 16000000, N'59:05 21/06/2022', N'59:05 21/06/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (23, N'iphone13', N'Apple', 7500, 16, 128, N'A15', N'6.5"', N'48', N'64', 25000000, N'08:12 21/06/2022', N'25:23 21/06/2022')
INSERT [dbo].[tblSanPham] ([idSanPham], [tenSP], [hang], [pin], [ram], [rom], [CPU], [KTmanHinh], [cameraTruoc], [cameraSau], [gia], [created_at], [updated_at]) VALUES (24, N'iphone12', N'Apple', 5200, 16, 128, N'A14', N'6.5"', N'48', N'64', 16000000, N'11:12 21/06/2022', N'11:12 21/06/2022')
SET IDENTITY_INSERT [dbo].[tblSanPham] OFF
GO
ALTER TABLE [dbo].[tblDanhGia]  WITH CHECK ADD FOREIGN KEY([idNguoiDung])
REFERENCES [dbo].[tblNguoiDung] ([idNguoiDung])
GO
ALTER TABLE [dbo].[tblDanhGia]  WITH CHECK ADD FOREIGN KEY([idSanPham])
REFERENCES [dbo].[tblSanPham] ([idSanPham])
GO
ALTER TABLE [dbo].[tblGioHang]  WITH CHECK ADD FOREIGN KEY([idNguoiDung])
REFERENCES [dbo].[tblNguoiDung] ([idNguoiDung])
GO
ALTER TABLE [dbo].[tblGioHang]  WITH CHECK ADD FOREIGN KEY([idSanPham])
REFERENCES [dbo].[tblSanPham] ([idSanPham])
GO
ALTER TABLE [dbo].[tblHinhAnh]  WITH CHECK ADD FOREIGN KEY([idSanPham])
REFERENCES [dbo].[tblSanPham] ([idSanPham])
GO
ALTER TABLE [dbo].[tblPhanLoai]  WITH CHECK ADD FOREIGN KEY([idSanPham])
REFERENCES [dbo].[tblSanPham] ([idSanPham])
GO
