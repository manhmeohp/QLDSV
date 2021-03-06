USE [Quanlydiem]
GO
/****** Object:  User [NT SERVICE\ReportServer$SQLEXPRESS]    Script Date: 31/12/2021 07:47:37 AM ******/
CREATE USER [NT SERVICE\ReportServer$SQLEXPRESS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[tblGIANG_VIEN]    Script Date: 31/12/2021 07:47:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGIANG_VIEN](
	[MaGV] [nvarchar](10) NOT NULL,
	[TenGV] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[Phone] [nvarchar](15) NULL,
	[Email] [nvarchar](20) NULL,
	[PhanLoaiGV] [nvarchar](20) NULL,
	[Anh] [bit] NULL,
 CONSTRAINT [PK_tblGIANG_VIEN] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKET_QUA]    Script Date: 31/12/2021 07:47:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKET_QUA](
	[MaSV] [nvarchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[MaLop] [nvarchar](10) NULL,
	[MaMon] [nvarchar](10) NULL,
	[DiemTB] [float] NULL,
	[DiemThiLan1] [float] NULL,
	[DiemThiLan2] [float] NULL,
	[DiemTongKet] [float] NULL,
	[HanhKiem] [nvarchar](20) NULL,
	[HocKi] [int] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKET_QUA2]    Script Date: 31/12/2021 07:47:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKET_QUA2](
	[MaSV] [nvarchar](10) NULL,
	[HoTen] [nvarchar](50) NULL,
	[MaLop] [nvarchar](10) NULL,
	[TenMon] [nvarchar](50) NULL,
	[DiemThiLai] [nvarchar](50) NULL,
	[HocKi] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKET_QUA3]    Script Date: 31/12/2021 07:47:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKET_QUA3](
	[MaSV] [nvarchar](10) NULL,
	[HoTen] [nvarchar](50) NULL,
	[MaLop] [nvarchar](5) NULL,
	[TenMon] [nvarchar](50) NULL,
	[DiemHocLai] [float] NULL,
	[HocKi] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKHOA]    Script Date: 31/12/2021 07:47:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKHOA](
	[MaKhoa] [nvarchar](10) NOT NULL,
	[TenKhoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblKHOA] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLOGIN]    Script Date: 31/12/2021 07:47:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLOGIN](
	[TenDN] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Quyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblLOGIN] PRIMARY KEY CLUSTERED 
(
	[TenDN] ASC,
	[MatKhau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLOP]    Script Date: 31/12/2021 07:47:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLOP](
	[MaKhoa] [nvarchar](10) NULL,
	[MaLop] [nvarchar](10) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblLOP] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMON]    Script Date: 31/12/2021 07:47:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMON](
	[MaMon] [nvarchar](10) NOT NULL,
	[TenMon] [nvarchar](50) NOT NULL,
	[SoDVHT] [int] NULL,
	[MaGV] [nvarchar](10) NULL,
	[HocKi] [nvarchar](10) NULL,
	[MaKhoa] [nchar](10) NULL,
 CONSTRAINT [PK_tblMON_1] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSINH_VIEN]    Script Date: 31/12/2021 07:47:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSINH_VIEN](
	[MaSv] [nvarchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [nvarchar](10) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[MaLop] [nvarchar](10) NULL,
 CONSTRAINT [PK_tblSINH_VIEN] PRIMARY KEY CLUSTERED 
(
	[MaSv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'GV001', N'Đào Thị Hường', N'Nữ', N'0123 456 789', N'Huong@gmail.com', N'Cơ Hữu', NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'GV002', N'Nguyễn Ngọc Khương', N'Nam', N'0123 456 788', N'Khuong@gmail.com', N'Cơ Hữu', NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'GV003', N'Hoàng Trần Hiếu', N'Nam', N'0123 456 787', N'Hieu@gmail.com', N'Cơ Hữu', NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'GV004', N'Đào Ngọc Tú', N'Nam', N'0123 456 786', N'Tu@gmail.com', N'Cơ Hữu', NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'SV1001', N'Hoàng Văn Mạnh', N'CNTT1', N'INF5237', 8, 8.5, NULL, 8.35, N'Tốt', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'SV1002', N'Trần Đức Anh', N'CNTT1', N'INF5237', 8, 8.5, NULL, 8.35, N'Tốt', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'SV1003', N'Bùi Quang Tường', N'CNTT1', N'INF5237', 8.5, 8.5, NULL, 8.5, N'Tốt', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'SV1004', N'Phạm Đăng Khoa', N'CNTT1', N'INF5237', 8, 8.5, NULL, 8.35, N'Tốt', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'SV1005', N'Phạm Thị Nhàng', N'CNTT1', N'INF5237', 7, 7, NULL, 7, N'Khá', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'SV1006', N'Phạm Thị Thu', N'CNTT1', N'INF5237', 7, 7.5, NULL, 7.35, N'Khá', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'SV1007', N'Phạm Thị Minh Huệ', N'CNTT1', N'INF5237', 7, 8, NULL, 7.7, N'Khá', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'SV2001', N'Vũ Quốc Duy', N'CNTT2', N'INF5237', 7.5, 8, NULL, 7.85, N'Khá', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'SV2002', N'Nguyễn Quyết Thắng', N'CNTT2', N'INF5237', 6, 6, NULL, 6, N'Trung bình', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'SV2003', N'Đinh Văn Hiếu', N'CNTT2', N'INF5237', 8, 8, NULL, 8, N'Tốt', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'SV2004', N'Nguyễn Văn Duy', N'CNTT2', N'INF5237', 4, 5, NULL, 4.7, N'Trung bình', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'SV2005', N'Đào Thanh Tươi', N'CNTT2', N'INF5237', 7, 7.5, NULL, 7.35, N'Khá', 1, NULL)
INSERT [dbo].[tblKET_QUA2] ([MaSV], [HoTen], [MaLop], [TenMon], [DiemThiLai], [HocKi]) VALUES (N'SV2004', N'Nguyễn Văn Duy', N'CNTT2', N'Công cụ CASE', N'8', N'1')
INSERT [dbo].[tblKET_QUA3] ([MaSV], [HoTen], [MaLop], [TenMon], [DiemHocLai], [HocKi]) VALUES (N'2', N'', N'08T2', N'a', 0, 1)
INSERT [dbo].[tblKET_QUA3] ([MaSV], [HoTen], [MaLop], [TenMon], [DiemHocLai], [HocKi]) VALUES (N'2', N'', N'08T2', N'a', 0, 1)
INSERT [dbo].[tblKET_QUA3] ([MaSV], [HoTen], [MaLop], [TenMon], [DiemHocLai], [HocKi]) VALUES (N'SV2004', N'Nguyễn Văn Duy', N'CNTT2', N'Công cụ CASE', 8, 1)
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'CNTT      ', N'Công nghệ thông tin             ')
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'KT', N'Kế toán  ')
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'NN', N'Ngoại ngữ')
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'manhhp123', N'manhmeohp', N'Hoàng Văn Mạnh', N'Nam', N'0563535268', N'deathgun03022000@gmail.com', N'Member')
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'manhmeohp', N'manhhp123', N'Hoàng Văn Mạnh', N'Nam', N'0904378060', N'manhmeohp378@gmail.com', N'Admin')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'CNTT      ', N'CNTT1', N'Công nghệ thông tin 1')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'CNTT      ', N'CNTT2', N'Công nghệ thông tin 2')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'KT', N'KTKT', N'Kế toán kiểm toán')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'KT', N'KTTC', N'Kế toán tài chính')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'NN', N'NNA', N'Ngôn ngữ Anh')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'NN', N'NNT', N'Ngôn ngữ Trung')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'INF5237', N'Công cụ CASE', 2, N'GV001', N'1', N'CNTT      ')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'INF5282', N'Phát triển ứng dụng Web 2', 3, N'GV002', N'2', N'CNTT      ')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV1001', N'Hoàng Văn Mạnh', N'03/02/2000', N'Nam', N'Hải Phòng', N'CNTT1')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV1002', N'Trần Đức Anh', N'04/02/2000', N'Nam', N'Hải Phòng', N'CNTT1')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV1003', N'Bùi Quang Tường', N'05/02/2000', N'Nam', N'Hải Phòng', N'CNTT1')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV1004', N'Phạm Đăng Khoa', N'06/02/2000', N'Nam', N'Hải Phòng', N'CNTT1')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV1005', N'Phạm Thị Nhàng', N'07/02/2000', N'Nữ', N'Hải Phòng', N'CNTT1')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV1006', N'Phạm Thị Thu', N'08/02/2000', N'Nữ', N'Hải Phòng', N'CNTT1')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV1007', N'Phạm Thị Minh Huệ', N'09/02/2000', N'Nữ', N'Hải Phòng', N'CNTT1')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV2001', N'Vũ Quốc Duy', N'10/02/2000', N'Nam', N'Hải Phòng', N'CNTT2')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV2002', N'Nguyễn Quyết Thắng', N'11/02/2000', N'Nam', N'Hải Phòng', N'CNTT2')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV2003', N'Đinh Văn Hiếu', N'12/02/2000', N'Nam', N'Hải Phòng', N'CNTT2')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV2004', N'Nguyễn Văn Duy', N'13/03/2000', N'Nam', N'Hải Phòng', N'CNTT2')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV2005', N'Đào Thanh Tươi', N'14/02/2000', N'Nữ', N'Hải Phòng', N'CNTT2')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV3001', N'Bùi Thị Thanh Thảo', N'29/11/2000', N'Nữ', N'Hải Phòng', N'NNA')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV3002', N'Nguyễn Thị Linh', N'26/06/2000', N'Nữ', N'Hải Phòng', N'NNA')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV3003', N'Nguyễn Thị Hậu', N'21/05/2000', N'Nữ', N'Hải Phòng', N'NNA')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'SV3004', N'Phạm Đào Mai Phương', N'04/09/2000', N'Nữ', N'Hải Phòng', N'NNA')
ALTER TABLE [dbo].[tblKET_QUA]  WITH CHECK ADD  CONSTRAINT [FK_tblKET_QUA_tblMON] FOREIGN KEY([MaMon])
REFERENCES [dbo].[tblMON] ([MaMon])
GO
ALTER TABLE [dbo].[tblKET_QUA] CHECK CONSTRAINT [FK_tblKET_QUA_tblMON]
GO
ALTER TABLE [dbo].[tblKET_QUA]  WITH CHECK ADD  CONSTRAINT [FK_tblKET_QUA_tblSINH_VIEN] FOREIGN KEY([MaSV])
REFERENCES [dbo].[tblSINH_VIEN] ([MaSv])
GO
ALTER TABLE [dbo].[tblKET_QUA] CHECK CONSTRAINT [FK_tblKET_QUA_tblSINH_VIEN]
GO
ALTER TABLE [dbo].[tblLOP]  WITH CHECK ADD  CONSTRAINT [FK_tblLOP_tblKHOA] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[tblKHOA] ([MaKhoa])
GO
ALTER TABLE [dbo].[tblLOP] CHECK CONSTRAINT [FK_tblLOP_tblKHOA]
GO
ALTER TABLE [dbo].[tblMON]  WITH CHECK ADD  CONSTRAINT [FK_tblMON_tblGIANG_VIEN] FOREIGN KEY([MaGV])
REFERENCES [dbo].[tblGIANG_VIEN] ([MaGV])
GO
ALTER TABLE [dbo].[tblMON] CHECK CONSTRAINT [FK_tblMON_tblGIANG_VIEN]
GO
ALTER TABLE [dbo].[tblSINH_VIEN]  WITH CHECK ADD  CONSTRAINT [FK_tblSINH_VIEN_tblLOP] FOREIGN KEY([MaLop])
REFERENCES [dbo].[tblLOP] ([MaLop])
GO
ALTER TABLE [dbo].[tblSINH_VIEN] CHECK CONSTRAINT [FK_tblSINH_VIEN_tblLOP]
GO
