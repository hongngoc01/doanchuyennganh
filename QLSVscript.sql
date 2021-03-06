USE [master]
GO
/****** Object:  Database [QuanLySinhVien] Script Date: 11/07/2020 7:44:16 AM ******/
CREATE DATABASE [QuanLySinhVien]
 
GO
USE [QuanLySinhVien]
GO
/****** Object:  Table [dbo].[DIEUKIEN]    Script Date: 11/07/2020 7:44:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIEUKIEN](
	[MaMH] [char](8) NOT NULL,
	[MaMHTruoc] [char](8) NOT NULL,
 CONSTRAINT [PK_DIEUKIEN] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC,
	[MaMHTruoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[K_HOC]    Script Date: 11/07/2020 7:44:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[K_HOC](
	[MAKH] [char](5) NOT NULL,
	[MAMH] [char](8) NULL,
	[HOCKY] [int] NULL,
	[NAM] [char](4) NULL,
	[GV] [nvarchar](10) NULL,
 CONSTRAINT [PK_K_HOC] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KQUA]    Script Date: 11/07/2020 7:44:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KQUA](
	[MASV] [char](5) NOT NULL,
	[MAKH] [char](5) NOT NULL,
	[DIEM] [int] NULL,
 CONSTRAINT [PK_KQUA] PRIMARY KEY CLUSTERED 
(
	[MASV] ASC,
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MHOC]    Script Date: 11/07/2020 7:44:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MHOC](
	[TEN_MH] [nvarchar](30) NOT NULL,
	[MAMH] [char](8) NOT NULL,
	[TINCHI] [int] NULL,
	[KHOA] [char](10) NULL,
 CONSTRAINT [PK_MHOC] PRIMARY KEY CLUSTERED 
(
	[MAMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SVIEN]    Script Date: 11/07/2020 7:44:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SVIEN](
	[TEN] [nvarchar](10) NOT NULL,
	[MASV] [char](5) NOT NULL,
	[NAM] [int] NULL,
	[KHOA] [char](10) NULL,
 CONSTRAINT [PK_SVIEN] PRIMARY KEY CLUSTERED 
(
	[MASV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DIEUKIEN] ([MaMH], [MaMHTruoc]) VALUES (N'COSC3320', N'COSC1310')
INSERT [dbo].[DIEUKIEN] ([MaMH], [MaMHTruoc]) VALUES (N'COSC3380', N'COSC3320')
INSERT [dbo].[DIEUKIEN] ([MaMH], [MaMHTruoc]) VALUES (N'COSC3380', N'MATH2410')
GO
INSERT [dbo].[K_HOC] ([MAKH], [MAMH], [HOCKY], [NAM], [GV]) VALUES (N'102  ', N'COSC3320', 2, N'87  ', N'Niên')
INSERT [dbo].[K_HOC] ([MAKH], [MAMH], [HOCKY], [NAM], [GV]) VALUES (N'112  ', N'MATH2410', 1, N'87  ', N'Chân')
INSERT [dbo].[K_HOC] ([MAKH], [MAMH], [HOCKY], [NAM], [GV]) VALUES (N'119  ', N'COSC1310', 1, N'87  ', N'An')
INSERT [dbo].[K_HOC] ([MAKH], [MAMH], [HOCKY], [NAM], [GV]) VALUES (N'135  ', N'COSC3380', 1, N'87  ', N'Sơn')
INSERT [dbo].[K_HOC] ([MAKH], [MAMH], [HOCKY], [NAM], [GV]) VALUES (N'85   ', N'MATH2410', 1, N'86  ', N'Kim')
INSERT [dbo].[K_HOC] ([MAKH], [MAMH], [HOCKY], [NAM], [GV]) VALUES (N'92   ', N'COSC1310', 1, N'86  ', N'An')
GO
INSERT [dbo].[KQUA] ([MASV], [MAKH], [DIEM]) VALUES (N'17   ', N'112  ', 8)
INSERT [dbo].[KQUA] ([MASV], [MAKH], [DIEM]) VALUES (N'17   ', N'119  ', 6)
INSERT [dbo].[KQUA] ([MASV], [MAKH], [DIEM]) VALUES (N'8    ', N'102  ', 8)
INSERT [dbo].[KQUA] ([MASV], [MAKH], [DIEM]) VALUES (N'8    ', N'135  ', 10)
INSERT [dbo].[KQUA] ([MASV], [MAKH], [DIEM]) VALUES (N'8    ', N'85   ', 10)
INSERT [dbo].[KQUA] ([MASV], [MAKH], [DIEM]) VALUES (N'8    ', N'92   ', 10)
GO
INSERT [dbo].[MHOC] ([TEN_MH], [MAMH], [TINCHI], [KHOA]) VALUES (N'Nhập môn tin học', N'COSC1310', 4, N'CNTT      ')
INSERT [dbo].[MHOC] ([TEN_MH], [MAMH], [TINCHI], [KHOA]) VALUES (N'Cấu trúc dữ liệu', N'COSC3320', 4, N'CNTT      ')
INSERT [dbo].[MHOC] ([TEN_MH], [MAMH], [TINCHI], [KHOA]) VALUES (N'Cơ sở dữ liệu', N'COSC3380', 3, N'CNTT      ')
INSERT [dbo].[MHOC] ([TEN_MH], [MAMH], [TINCHI], [KHOA]) VALUES (N'Toán rời rạc', N'MATH2410', 3, N'TOAN      ')
GO
INSERT [dbo].[SVIEN] ([TEN], [MASV], [NAM], [KHOA]) VALUES (N'Sơn', N'17   ', 1, N'CNTT      ')
INSERT [dbo].[SVIEN] ([TEN], [MASV], [NAM], [KHOA]) VALUES (N'Nhung', N'43   ', 2, N'TOAN      ')
INSERT [dbo].[SVIEN] ([TEN], [MASV], [NAM], [KHOA]) VALUES (N'Bảo', N'8    ', 2, N'CNTT      ')
GO
ALTER TABLE [dbo].[DIEUKIEN]  WITH CHECK ADD  CONSTRAINT [FK_DIEUKIEN_MHOC] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MHOC] ([MAMH])
GO
ALTER TABLE [dbo].[DIEUKIEN] CHECK CONSTRAINT [FK_DIEUKIEN_MHOC]
GO
ALTER TABLE [dbo].[DIEUKIEN]  WITH CHECK ADD  CONSTRAINT [FK_DIEUKIEN_MHOC1] FOREIGN KEY([MaMHTruoc])
REFERENCES [dbo].[MHOC] ([MAMH])
GO
ALTER TABLE [dbo].[DIEUKIEN] CHECK CONSTRAINT [FK_DIEUKIEN_MHOC1]
GO
ALTER TABLE [dbo].[K_HOC]  WITH CHECK ADD  CONSTRAINT [FK_K_HOC_MHOC] FOREIGN KEY([MAMH])
REFERENCES [dbo].[MHOC] ([MAMH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[K_HOC] CHECK CONSTRAINT [FK_K_HOC_MHOC]
GO
ALTER TABLE [dbo].[KQUA]  WITH CHECK ADD  CONSTRAINT [FK_KQUA_K_HOC] FOREIGN KEY([MAKH])
REFERENCES [dbo].[K_HOC] ([MAKH])
GO
ALTER TABLE [dbo].[KQUA] CHECK CONSTRAINT [FK_KQUA_K_HOC]
GO
ALTER TABLE [dbo].[KQUA]  WITH CHECK ADD  CONSTRAINT [FK_KQUA_SVIEN] FOREIGN KEY([MASV])
REFERENCES [dbo].[SVIEN] ([MASV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[KQUA] CHECK CONSTRAINT [FK_KQUA_SVIEN]
GO
USE [master]
GO
ALTER DATABASE [qlsv] SET  READ_WRITE 
GO
