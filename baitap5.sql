USE [master]
GO
/****** Object:  Database [TimBanChoi]    Script Date: 21/04/2025 2:47:31 SA ******/
CREATE DATABASE [TimBanChoi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TimBanChoi', FILENAME = N'D:\sql\MSSQL16.THAOCUTE\MSSQL\DATA\TimBanChoi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TimBanChoi_log', FILENAME = N'D:\sql\MSSQL16.THAOCUTE\MSSQL\DATA\TimBanChoi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TimBanChoi] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TimBanChoi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TimBanChoi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TimBanChoi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TimBanChoi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TimBanChoi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TimBanChoi] SET ARITHABORT OFF 
GO
ALTER DATABASE [TimBanChoi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TimBanChoi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TimBanChoi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TimBanChoi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TimBanChoi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TimBanChoi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TimBanChoi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TimBanChoi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TimBanChoi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TimBanChoi] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TimBanChoi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TimBanChoi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TimBanChoi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TimBanChoi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TimBanChoi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TimBanChoi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TimBanChoi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TimBanChoi] SET RECOVERY FULL 
GO
ALTER DATABASE [TimBanChoi] SET  MULTI_USER 
GO
ALTER DATABASE [TimBanChoi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TimBanChoi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TimBanChoi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TimBanChoi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TimBanChoi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TimBanChoi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TimBanChoi', N'ON'
GO
ALTER DATABASE [TimBanChoi] SET QUERY_STORE = ON
GO
ALTER DATABASE [TimBanChoi] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TimBanChoi]
GO
/****** Object:  Table [dbo].[danh_gia_tran_dau]    Script Date: 21/04/2025 2:47:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danh_gia_tran_dau](
	[ID_danh_gia] [int] IDENTITY(1,1) NOT NULL,
	[ID_tran_dau] [int] NULL,
	[ID_nguoi_choi] [int] NULL,
	[So_sao] [int] NULL,
	[Nhan_xet] [nvarchar](max) NULL,
	[Thoi_gian] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_danh_gia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dia_diem]    Script Date: 21/04/2025 2:47:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dia_diem](
	[ID_dia_diem] [int] NOT NULL,
	[Ten_dia_diem] [nvarchar](100) NULL,
	[Ten_san] [nvarchar](100) NULL,
	[Chu_san] [nvarchar](100) NULL,
	[So_luong_san_dang_chong] [int] NULL,
	[Dia_chi_day_du] [nvarchar](255) NULL,
	[Mo_ta] [nvarchar](max) NULL,
	[Gia_thue] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_dia_diem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mon_the_thao]    Script Date: 21/04/2025 2:47:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mon_the_thao](
	[ID_mon_the_thao] [int] NOT NULL,
	[Ten_mon_the_thao] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_mon_the_thao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nguoi_tham_gia]    Script Date: 21/04/2025 2:47:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguoi_tham_gia](
	[ID_tran_dau] [int] NOT NULL,
	[ID_nguoi_choi] [int] NOT NULL,
	[Thoi_gian_gui] [datetime] NULL,
	[Loi_nhan] [nvarchar](max) NULL,
	[Trang_thai] [varchar](30) NULL,
	[Diem_danh] [bit] NULL,
	[Thoi_gian_tham_gia] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_tran_dau] ASC,
	[ID_nguoi_choi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tao_tran]    Script Date: 21/04/2025 2:47:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tao_tran](
	[ID_tao_tran] [int] NOT NULL,
	[ID_nguoi_choi] [int] NULL,
	[ID_dia_diem] [int] NULL,
	[ID_mon_the_thao] [int] NULL,
	[Thoi_gian] [datetime] NULL,
	[So_luong] [int] NULL,
	[Mo_ta_tran_dau] [nvarchar](max) NULL,
	[Tinh_trang_tran_dau] [varchar](30) NULL,
	[Gioi_tinh_yeu_cau] [varchar](20) NULL,
	[Do_tuoi_toi_thieu] [int] NULL,
	[Do_tuoi_toi_da] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_tao_tran] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thong_tin_nguoi_choi]    Script Date: 21/04/2025 2:47:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thong_tin_nguoi_choi](
	[ID_nguoi_choi] [int] NOT NULL,
	[ID_DN] [int] NULL,
	[Ho_ten] [nvarchar](100) NULL,
	[Tuoi] [int] NULL,
	[Gioi_tinh] [varchar](10) NULL,
	[Ngay_sinh] [date] NULL,
	[Sdt] [varchar](15) NULL,
	[Gmail] [varchar](100) NULL,
	[Anh_dai_dien] [varchar](255) NULL,
	[So_tran_da_choi] [int] NULL,
	[So_tran_da_tao] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_nguoi_choi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TK]    Script Date: 21/04/2025 2:47:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TK](
	[ID_DN] [int] NOT NULL,
	[MK] [varchar](255) NOT NULL,
	[Thoi_gian_dang_ky] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_DN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tran_dau]    Script Date: 21/04/2025 2:47:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tran_dau](
	[ID_tran_dau] [int] NOT NULL,
	[ID_tao_tran] [int] NULL,
	[So_luong_tham_gia] [int] NULL,
	[Thoi_gian_ket_thuc] [datetime] NULL,
	[Ghi_chu_tran_dau] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_tran_dau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[dia_diem] ([ID_dia_diem], [Ten_dia_diem], [Ten_san], [Chu_san], [So_luong_san_dang_chong], [Dia_chi_day_du], [Mo_ta], [Gia_thue]) VALUES (202, N'Sân Cầu Lông Nguyễn Tri Phương', N'Sân CL1', N'Chị Lan', 3, N'45 Nguyễn Tri Phương, Q.5, TP.HCM', N'Sân cầu lông chuẩn quốc tế', 150000)
INSERT [dbo].[dia_diem] ([ID_dia_diem], [Ten_dia_diem], [Ten_san], [Chu_san], [So_luong_san_dang_chong], [Dia_chi_day_du], [Mo_ta], [Gia_thue]) VALUES (203, N'Sân Tennis Tân Bình', N'Sân T1', N'Anh Bình', 1, N'60 Phạm Văn Bạch, Q.Tân Bình', N'Sân tennis có mái che', 200000)
GO
INSERT [dbo].[mon_the_thao] ([ID_mon_the_thao], [Ten_mon_the_thao]) VALUES (302, N'Cầu lông')
INSERT [dbo].[mon_the_thao] ([ID_mon_the_thao], [Ten_mon_the_thao]) VALUES (303, N'Tennis')
GO
INSERT [dbo].[nguoi_tham_gia] ([ID_tran_dau], [ID_nguoi_choi], [Thoi_gian_gui], [Loi_nhan], [Trang_thai], [Diem_danh], [Thoi_gian_tham_gia]) VALUES (502, 102, CAST(N'2025-04-21T02:21:58.890' AS DateTime), N'Mình tham gia cầu lông nha!', N'da_tham_gia', 0, NULL)
INSERT [dbo].[nguoi_tham_gia] ([ID_tran_dau], [ID_nguoi_choi], [Thoi_gian_gui], [Loi_nhan], [Trang_thai], [Diem_danh], [Thoi_gian_tham_gia]) VALUES (502, 103, CAST(N'2025-04-21T02:21:58.890' AS DateTime), N'Tôi cũng tham gia!', N'cho_xu_ly', 0, NULL)
INSERT [dbo].[nguoi_tham_gia] ([ID_tran_dau], [ID_nguoi_choi], [Thoi_gian_gui], [Loi_nhan], [Trang_thai], [Diem_danh], [Thoi_gian_tham_gia]) VALUES (503, 103, CAST(N'2025-04-21T02:21:58.890' AS DateTime), N'Sẵn sàng lên sân', N'cho_xu_ly', 0, NULL)
INSERT [dbo].[nguoi_tham_gia] ([ID_tran_dau], [ID_nguoi_choi], [Thoi_gian_gui], [Loi_nhan], [Trang_thai], [Diem_danh], [Thoi_gian_tham_gia]) VALUES (503, 104, CAST(N'2025-04-21T02:21:58.890' AS DateTime), N'Tennis là đam mê', N'cho_xu_ly', 0, NULL)
GO
INSERT [dbo].[tao_tran] ([ID_tao_tran], [ID_nguoi_choi], [ID_dia_diem], [ID_mon_the_thao], [Thoi_gian], [So_luong], [Mo_ta_tran_dau], [Tinh_trang_tran_dau], [Gioi_tinh_yeu_cau], [Do_tuoi_toi_thieu], [Do_tuoi_toi_da]) VALUES (402, 102, 202, 302, CAST(N'2025-04-22T02:21:58.857' AS DateTime), 1, N'Cầu lông giao hữu sáng Chủ Nhật', N'dang cho', N'khong_yeu_cau', 20, 35)
INSERT [dbo].[tao_tran] ([ID_tao_tran], [ID_nguoi_choi], [ID_dia_diem], [ID_mon_the_thao], [Thoi_gian], [So_luong], [Mo_ta_tran_dau], [Tinh_trang_tran_dau], [Gioi_tinh_yeu_cau], [Do_tuoi_toi_thieu], [Do_tuoi_toi_da]) VALUES (403, 103, 203, 303, CAST(N'2025-04-23T02:21:58.857' AS DateTime), 1, N'Tennis giao lưu vui vẻ', N'dang cho', N'khong_yeu_cau', 25, 35)
GO
INSERT [dbo].[thong_tin_nguoi_choi] ([ID_nguoi_choi], [ID_DN], [Ho_ten], [Tuoi], [Gioi_tinh], [Ngay_sinh], [Sdt], [Gmail], [Anh_dai_dien], [So_tran_da_choi], [So_tran_da_tao]) VALUES (102, 2, N'Lê Thị Bích', 23, N'N?', CAST(N'2001-03-22' AS Date), N'0902345678', N'bich.le@gmail.com', N'bich.jpg', 1, 1)
INSERT [dbo].[thong_tin_nguoi_choi] ([ID_nguoi_choi], [ID_DN], [Ho_ten], [Tuoi], [Gioi_tinh], [Ngay_sinh], [Sdt], [Gmail], [Anh_dai_dien], [So_tran_da_choi], [So_tran_da_tao]) VALUES (103, 3, N'Phạm Minh Tuấn', 28, N'Nam', CAST(N'1996-09-10' AS Date), N'0903456789', N'tuan.pham@gmail.com', N'tuan.jpg', 0, 1)
INSERT [dbo].[thong_tin_nguoi_choi] ([ID_nguoi_choi], [ID_DN], [Ho_ten], [Tuoi], [Gioi_tinh], [Ngay_sinh], [Sdt], [Gmail], [Anh_dai_dien], [So_tran_da_choi], [So_tran_da_tao]) VALUES (104, 4, N'Hoàng Văn Duy', 30, N'Nam', CAST(N'1994-12-05' AS Date), N'0904567890', N'duy.hoang@gmail.com', N'duy.jpg', 0, 0)
GO
INSERT [dbo].[TK] ([ID_DN], [MK], [Thoi_gian_dang_ky]) VALUES (2, N'mk123', CAST(N'2025-04-21T02:18:58.200' AS DateTime))
INSERT [dbo].[TK] ([ID_DN], [MK], [Thoi_gian_dang_ky]) VALUES (3, N'mk456', CAST(N'2025-04-21T02:18:58.200' AS DateTime))
INSERT [dbo].[TK] ([ID_DN], [MK], [Thoi_gian_dang_ky]) VALUES (4, N'mk789', CAST(N'2025-04-21T02:18:58.200' AS DateTime))
GO
INSERT [dbo].[tran_dau] ([ID_tran_dau], [ID_tao_tran], [So_luong_tham_gia], [Thoi_gian_ket_thuc], [Ghi_chu_tran_dau]) VALUES (502, 402, 3, CAST(N'2025-04-22T03:21:58.890' AS DateTime), N'Giao lưu vui vẻ, trình độ khá')
INSERT [dbo].[tran_dau] ([ID_tran_dau], [ID_tao_tran], [So_luong_tham_gia], [Thoi_gian_ket_thuc], [Ghi_chu_tran_dau]) VALUES (503, 403, 3, CAST(N'2025-04-23T04:21:58.890' AS DateTime), N'Trận đấu sôi nổi')
GO
ALTER TABLE [dbo].[danh_gia_tran_dau] ADD  DEFAULT (getdate()) FOR [Thoi_gian]
GO
ALTER TABLE [dbo].[nguoi_tham_gia] ADD  DEFAULT (getdate()) FOR [Thoi_gian_gui]
GO
ALTER TABLE [dbo].[nguoi_tham_gia] ADD  DEFAULT ('cho_xu_ly') FOR [Trang_thai]
GO
ALTER TABLE [dbo].[nguoi_tham_gia] ADD  DEFAULT ((0)) FOR [Diem_danh]
GO
ALTER TABLE [dbo].[tao_tran] ADD  DEFAULT ('dang cho') FOR [Tinh_trang_tran_dau]
GO
ALTER TABLE [dbo].[tao_tran] ADD  DEFAULT ('khong_yeu_cau') FOR [Gioi_tinh_yeu_cau]
GO
ALTER TABLE [dbo].[thong_tin_nguoi_choi] ADD  DEFAULT ((0)) FOR [So_tran_da_choi]
GO
ALTER TABLE [dbo].[thong_tin_nguoi_choi] ADD  DEFAULT ((0)) FOR [So_tran_da_tao]
GO
ALTER TABLE [dbo].[TK] ADD  DEFAULT (getdate()) FOR [Thoi_gian_dang_ky]
GO
ALTER TABLE [dbo].[danh_gia_tran_dau]  WITH CHECK ADD FOREIGN KEY([ID_nguoi_choi])
REFERENCES [dbo].[thong_tin_nguoi_choi] ([ID_nguoi_choi])
GO
ALTER TABLE [dbo].[danh_gia_tran_dau]  WITH CHECK ADD FOREIGN KEY([ID_tran_dau])
REFERENCES [dbo].[tran_dau] ([ID_tran_dau])
GO
ALTER TABLE [dbo].[nguoi_tham_gia]  WITH CHECK ADD FOREIGN KEY([ID_nguoi_choi])
REFERENCES [dbo].[thong_tin_nguoi_choi] ([ID_nguoi_choi])
GO
ALTER TABLE [dbo].[nguoi_tham_gia]  WITH CHECK ADD FOREIGN KEY([ID_tran_dau])
REFERENCES [dbo].[tran_dau] ([ID_tran_dau])
GO
ALTER TABLE [dbo].[tao_tran]  WITH CHECK ADD FOREIGN KEY([ID_dia_diem])
REFERENCES [dbo].[dia_diem] ([ID_dia_diem])
GO
ALTER TABLE [dbo].[tao_tran]  WITH CHECK ADD FOREIGN KEY([ID_mon_the_thao])
REFERENCES [dbo].[mon_the_thao] ([ID_mon_the_thao])
GO
ALTER TABLE [dbo].[tao_tran]  WITH CHECK ADD FOREIGN KEY([ID_nguoi_choi])
REFERENCES [dbo].[thong_tin_nguoi_choi] ([ID_nguoi_choi])
GO
ALTER TABLE [dbo].[thong_tin_nguoi_choi]  WITH CHECK ADD FOREIGN KEY([ID_DN])
REFERENCES [dbo].[TK] ([ID_DN])
GO
ALTER TABLE [dbo].[tran_dau]  WITH CHECK ADD FOREIGN KEY([ID_tao_tran])
REFERENCES [dbo].[tao_tran] ([ID_tao_tran])
GO
ALTER TABLE [dbo].[danh_gia_tran_dau]  WITH CHECK ADD CHECK  (([So_sao]>=(1) AND [So_sao]<=(5)))
GO
/****** Object:  Trigger [dbo].[trg_tang_so_luong_tham_gia]    Script Date: 21/04/2025 2:47:31 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		LyVanCuong
-- Create date: 20/04/2025
-- Description:	cap nhat so luong nguoi tham gia tran dau
-- =============================================
CREATE TRIGGER [dbo].[trg_tang_so_luong_tham_gia]
ON [dbo].[nguoi_tham_gia]
AFTER INSERT
AS
BEGIN
    UPDATE tran_dau
    SET So_luong_tham_gia = So_luong_tham_gia + 1
    FROM tran_dau td
    JOIN inserted i ON td.ID_tran_dau = i.ID_tran_dau
END;
GO
ALTER TABLE [dbo].[nguoi_tham_gia] ENABLE TRIGGER [trg_tang_so_luong_tham_gia]
GO
/****** Object:  Trigger [dbo].[trg_tang_so_tran_choi]    Script Date: 21/04/2025 2:47:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_tang_so_tran_choi]
ON [dbo].[nguoi_tham_gia]
AFTER UPDATE
AS
BEGIN
    UPDATE thong_tin_nguoi_choi
    SET So_tran_da_choi = So_tran_da_choi + 1
    FROM thong_tin_nguoi_choi tt
    JOIN inserted i ON tt.ID_nguoi_choi = i.ID_nguoi_choi
    JOIN deleted d ON i.ID_nguoi_choi = d.ID_nguoi_choi AND i.ID_tran_dau = d.ID_tran_dau
    WHERE i.Trang_thai = 'da_tham_gia' AND d.Trang_thai <> 'da_tham_gia'
END;
GO
ALTER TABLE [dbo].[nguoi_tham_gia] ENABLE TRIGGER [trg_tang_so_tran_choi]
GO
/****** Object:  Trigger [dbo].[trg_giam_san_trong_sau_tao_tran]    Script Date: 21/04/2025 2:47:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		LyVanCuong
-- Create date: 20/04/2025
-- Description:	cap nhat so luong san dang trong
-- =============================================
CREATE TRIGGER [dbo].[trg_giam_san_trong_sau_tao_tran]
ON [dbo].[tao_tran]
AFTER INSERT
AS
BEGIN
    UPDATE dia_diem
    SET So_luong_san_dang_chong = So_luong_san_dang_chong - i.So_luong
    FROM dia_diem dd
    JOIN inserted i ON dd.ID_dia_diem = i.ID_dia_diem
    WHERE dd.So_luong_san_dang_chong >= i.So_luong
END;
GO
ALTER TABLE [dbo].[tao_tran] ENABLE TRIGGER [trg_giam_san_trong_sau_tao_tran]
GO
/****** Object:  Trigger [dbo].[trg_tang_so_tran_tao]    Script Date: 21/04/2025 2:47:32 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[trg_tang_so_tran_tao]
ON [dbo].[tao_tran]
AFTER INSERT
AS
BEGIN
    UPDATE thong_tin_nguoi_choi
    SET So_tran_da_tao = So_tran_da_tao + 1
    FROM thong_tin_nguoi_choi tt
    JOIN inserted i ON tt.ID_nguoi_choi = i.ID_nguoi_choi
END;
GO
ALTER TABLE [dbo].[tao_tran] ENABLE TRIGGER [trg_tang_so_tran_tao]
GO
USE [master]
GO
ALTER DATABASE [TimBanChoi] SET  READ_WRITE 
GO
