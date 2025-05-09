USE [master]
GO
/****** Object:  Database [TKB_TNUT]    Script Date: 16/04/2025 2:41:32 SA ******/
CREATE DATABASE [TKB_TNUT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TKB_TNUT', FILENAME = N'D:\sql\MSSQL16.THAOCUTE\MSSQL\DATA\TKB_TNUT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TKB_TNUT_log', FILENAME = N'D:\sql\MSSQL16.THAOCUTE\MSSQL\DATA\TKB_TNUT_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TKB_TNUT] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TKB_TNUT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TKB_TNUT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TKB_TNUT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TKB_TNUT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TKB_TNUT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TKB_TNUT] SET ARITHABORT OFF 
GO
ALTER DATABASE [TKB_TNUT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TKB_TNUT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TKB_TNUT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TKB_TNUT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TKB_TNUT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TKB_TNUT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TKB_TNUT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TKB_TNUT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TKB_TNUT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TKB_TNUT] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TKB_TNUT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TKB_TNUT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TKB_TNUT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TKB_TNUT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TKB_TNUT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TKB_TNUT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TKB_TNUT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TKB_TNUT] SET RECOVERY FULL 
GO
ALTER DATABASE [TKB_TNUT] SET  MULTI_USER 
GO
ALTER DATABASE [TKB_TNUT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TKB_TNUT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TKB_TNUT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TKB_TNUT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TKB_TNUT] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TKB_TNUT] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TKB_TNUT', N'ON'
GO
ALTER DATABASE [TKB_TNUT] SET QUERY_STORE = ON
GO
ALTER DATABASE [TKB_TNUT] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TKB_TNUT]
GO
/****** Object:  Table [dbo].[LICH]    Script Date: 16/04/2025 2:41:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LICH](
	[MaLich] [tinyint] IDENTITY(1,1) NOT NULL,
	[Thu] [tinyint] NULL,
	[SoTiet] [tinyint] NULL,
	[TietBD] [tinyint] NULL,
	[GioVao] [time](7) NULL,
	[GioRa] [time](7) NULL,
	[MaGV] [int] NULL,
	[MaLop] [int] NULL,
	[MaMon] [int] NULL,
	[MaPhong] [int] NULL,
	[Ngay] [date] NULL,
 CONSTRAINT [PK__LICH__728A9AE99EEBB564] PRIMARY KEY CLUSTERED 
(
	[MaLich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MON]    Script Date: 16/04/2025 2:41:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MON](
	[MaMon] [int] IDENTITY(1,1) NOT NULL,
	[TenMon] [nvarchar](100) NULL,
 CONSTRAINT [PK__MON__3A5B29A8410BA645] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GV]    Script Date: 16/04/2025 2:41:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GV](
	[MaGV] [int] IDENTITY(1,1) NOT NULL,
	[TenGV] [nvarchar](50) NULL,
 CONSTRAINT [PK__GV__2725AEF30BBF2CD1] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GiaoVienDangBan]    Script Date: 16/04/2025 2:41:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fn_GiaoVienDangBan]
(
    @datetime1 DATETIME,
    @datetime2   DATETIME
)
RETURNS TABLE
AS
RETURN
(
    SELECT 
        GV.MaGV,
        GV.TenGV,
        LICH.Ngay,
        LICH.GioVao,
        LICH.GioRa,
        MON.TenMon
    FROM LICH
    JOIN GV ON LICH.MaGV = GV.MaGV
    JOIN MON ON LICH.MaMon = MON.MaMon
    WHERE 
        -- Ghép Ngay + GioVao / GioRa thành thời điểm cụ thể
        (CAST(LICH.Ngay AS DATETIME) + CAST(LICH.GioVao AS DATETIME) <= @datetime2)
        AND
        (CAST(LICH.Ngay AS DATETIME) + CAST(LICH.GioRa AS DATETIME) >= @datetime1)
)
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 16/04/2025 2:41:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[MaLop] [int] IDENTITY(1,1) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
 CONSTRAINT [PK__LOP__3B98D273C222AF35] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONG]    Script Date: 16/04/2025 2:41:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONG](
	[MaPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](50) NULL,
 CONSTRAINT [PK__PHONG__20BD5E5B303EF422] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GV] ON 

INSERT [dbo].[GV] ([MaGV], [TenGV]) VALUES (35, N'Đ.T.Hiên  ')
INSERT [dbo].[GV] ([MaGV], [TenGV]) VALUES (36, N'N.V.Huy  ')
INSERT [dbo].[GV] ([MaGV], [TenGV]) VALUES (37, N'N.T.Hương  ')
INSERT [dbo].[GV] ([MaGV], [TenGV]) VALUES (38, N'T.T.N.Linh  ')
INSERT [dbo].[GV] ([MaGV], [TenGV]) VALUES (39, N'P.T.T.Hiền  ')
INSERT [dbo].[GV] ([MaGV], [TenGV]) VALUES (40, N'T.C.Nhung  ')
INSERT [dbo].[GV] ([MaGV], [TenGV]) VALUES (41, N'N.T.Linh  ')
INSERT [dbo].[GV] ([MaGV], [TenGV]) VALUES (42, N'N.V.Tính  ')
INSERT [dbo].[GV] ([MaGV], [TenGV]) VALUES (43, N'T.T.Thanh  ')
INSERT [dbo].[GV] ([MaGV], [TenGV]) VALUES (44, N'Đ.D.Cốp  ')
INSERT [dbo].[GV] ([MaGV], [TenGV]) VALUES (45, N'N.M.Ngọc  ')
INSERT [dbo].[GV] ([MaGV], [TenGV]) VALUES (46, N'B.T.Thi  ')
INSERT [dbo].[GV] ([MaGV], [TenGV]) VALUES (47, N'P.Q.Hiếu  ')
INSERT [dbo].[GV] ([MaGV], [TenGV]) VALUES (48, N'Đ.N.Tôn  ')
INSERT [dbo].[GV] ([MaGV], [TenGV]) VALUES (49, N'L.T.H.Trang  ')
INSERT [dbo].[GV] ([MaGV], [TenGV]) VALUES (50, N'N.T.Duy ')
SET IDENTITY_INSERT [dbo].[GV] OFF
GO
SET IDENTITY_INSERT [dbo].[LICH] ON 

INSERT [dbo].[LICH] ([MaLich], [Thu], [SoTiet], [TietBD], [GioVao], [GioRa], [MaGV], [MaLop], [MaMon], [MaPhong], [Ngay]) VALUES (3, 2, 2, 2, CAST(N'07:55:00' AS Time), CAST(N'10:35:00' AS Time), 35, 1, 1, 1, CAST(N'2025-04-14' AS Date))
INSERT [dbo].[LICH] ([MaLich], [Thu], [SoTiet], [TietBD], [GioVao], [GioRa], [MaGV], [MaLop], [MaMon], [MaPhong], [Ngay]) VALUES (4, 2, 2, 3, CAST(N'09:20:00' AS Time), CAST(N'12:00:00' AS Time), 36, 2, 2, 2, CAST(N'2025-04-14' AS Date))
INSERT [dbo].[LICH] ([MaLich], [Thu], [SoTiet], [TietBD], [GioVao], [GioRa], [MaGV], [MaLop], [MaMon], [MaPhong], [Ngay]) VALUES (5, 2, 2, 5, CAST(N'12:30:00' AS Time), CAST(N'15:10:00' AS Time), 37, 3, 1, 3, CAST(N'2025-04-14' AS Date))
INSERT [dbo].[LICH] ([MaLich], [Thu], [SoTiet], [TietBD], [GioVao], [GioRa], [MaGV], [MaLop], [MaMon], [MaPhong], [Ngay]) VALUES (6, 2, 2, 5, CAST(N'12:30:00' AS Time), CAST(N'15:10:00' AS Time), 38, 4, 1, 4, CAST(N'2025-04-14' AS Date))
INSERT [dbo].[LICH] ([MaLich], [Thu], [SoTiet], [TietBD], [GioVao], [GioRa], [MaGV], [MaLop], [MaMon], [MaPhong], [Ngay]) VALUES (7, 2, 2, 5, CAST(N'12:30:00' AS Time), CAST(N'15:10:00' AS Time), 39, 5, 3, 5, CAST(N'2025-04-14' AS Date))
INSERT [dbo].[LICH] ([MaLich], [Thu], [SoTiet], [TietBD], [GioVao], [GioRa], [MaGV], [MaLop], [MaMon], [MaPhong], [Ngay]) VALUES (8, 2, 1, 6, CAST(N'13:55:00' AS Time), CAST(N'15:10:00' AS Time), 40, 6, 4, 6, CAST(N'2025-04-14' AS Date))
INSERT [dbo].[LICH] ([MaLich], [Thu], [SoTiet], [TietBD], [GioVao], [GioRa], [MaGV], [MaLop], [MaMon], [MaPhong], [Ngay]) VALUES (9, 2, 2, 7, CAST(N'15:20:00' AS Time), CAST(N'18:00:00' AS Time), 36, 7, 5, 7, CAST(N'2025-04-14' AS Date))
INSERT [dbo].[LICH] ([MaLich], [Thu], [SoTiet], [TietBD], [GioVao], [GioRa], [MaGV], [MaLop], [MaMon], [MaPhong], [Ngay]) VALUES (10, 3, 1, 1, CAST(N'06:30:00' AS Time), CAST(N'07:45:00' AS Time), 39, 8, 4, 8, CAST(N'2025-04-15' AS Date))
INSERT [dbo].[LICH] ([MaLich], [Thu], [SoTiet], [TietBD], [GioVao], [GioRa], [MaGV], [MaLop], [MaMon], [MaPhong], [Ngay]) VALUES (11, 3, 2, 1, CAST(N'06:30:00' AS Time), CAST(N'09:10:00' AS Time), 41, 9, 4, 9, CAST(N'2025-04-15' AS Date))
INSERT [dbo].[LICH] ([MaLich], [Thu], [SoTiet], [TietBD], [GioVao], [GioRa], [MaGV], [MaLop], [MaMon], [MaPhong], [Ngay]) VALUES (12, 3, 2, 1, CAST(N'06:30:00' AS Time), CAST(N'09:10:00' AS Time), 42, 2, 6, 2, CAST(N'2025-04-15' AS Date))
SET IDENTITY_INSERT [dbo].[LICH] OFF
GO
SET IDENTITY_INSERT [dbo].[LOP] ON 

INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (1, N'60CNTDH3')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (2, N'58KTP')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (3, N'60CNTDH2')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (4, N'60CNTDH6')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (5, N'59KMT')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (6, N'58CDT1')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (7, N'57KMT')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (8, N'58CDT3')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (9, N'58KTD2')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (10, N'60CNTDH5')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (11, N'58KTD1')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (12, N'60CNTDH1')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (13, N'59KC2')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (14, N'59KC1')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (15, N'60CNTDH7')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (16, N'60KMT')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (17, N'59KC1-02')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (18, N'58KTD1-02')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (19, N'58CLCDT')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (20, N'60CNTDH4')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (21, N'59KXD')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (22, N'58CDT2')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (23, N'58CDT2-01')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (24, N'59KC2-01')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (25, N'58CDT3-03')
INSERT [dbo].[LOP] ([MaLop], [TenLop]) VALUES (26, N'58CDT3-02')
SET IDENTITY_INSERT [dbo].[LOP] OFF
GO
SET IDENTITY_INSERT [dbo].[MON] ON 

INSERT [dbo].[MON] ([MaMon], [TenMon]) VALUES (1, N'Tin học trong kỹ thuật')
INSERT [dbo].[MON] ([MaMon], [TenMon]) VALUES (2, N'Lập trình Python')
INSERT [dbo].[MON] ([MaMon], [TenMon]) VALUES (3, N'Kiến trúc máy tính')
INSERT [dbo].[MON] ([MaMon], [TenMon]) VALUES (4, N'Vi xử lý – Vi điều khiển')
INSERT [dbo].[MON] ([MaMon], [TenMon]) VALUES (5, N'Khoa học dữ liệu')
INSERT [dbo].[MON] ([MaMon], [TenMon]) VALUES (6, N'Quản trị mạng')
INSERT [dbo].[MON] ([MaMon], [TenMon]) VALUES (7, N'Chuyển đổi số')
INSERT [dbo].[MON] ([MaMon], [TenMon]) VALUES (8, N'Phân tích và thiết kế hệ thống')
INSERT [dbo].[MON] ([MaMon], [TenMon]) VALUES (9, N'Hệ quản trị cơ sở dữ liệu')
INSERT [dbo].[MON] ([MaMon], [TenMon]) VALUES (10, N'Công nghệ phần mềm')
INSERT [dbo].[MON] ([MaMon], [TenMon]) VALUES (11, N'Phương pháp tính')
INSERT [dbo].[MON] ([MaMon], [TenMon]) VALUES (12, N'Toán rời rạc')
SET IDENTITY_INSERT [dbo].[MON] OFF
GO
SET IDENTITY_INSERT [dbo].[PHONG] ON 

INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (1, N'A9-201')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (2, N'A9-204')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (3, N'A10-101')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (4, N'A10-104')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (5, N'A16-603')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (6, N'A10-401')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (7, N'A8-303')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (8, N'A16-401')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (9, N'A10-404')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (10, N'A10-201')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (11, N'A8-101')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (12, N'A10-102')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (13, N'A10-503')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (14, N'A9-102')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (15, N'A9-302')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (16, N'A16-501')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (17, N'A10-502')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (18, N'A10-202')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (19, N'A7-203')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (20, N'A9-301')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (21, N'A7-204')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (22, N'A16-301')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (23, N'TVDT-T203')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (24, N'TVDT-T202')
INSERT [dbo].[PHONG] ([MaPhong], [TenPhong]) VALUES (25, N'TVDT-T301')
SET IDENTITY_INSERT [dbo].[PHONG] OFF
GO
ALTER TABLE [dbo].[LICH]  WITH CHECK ADD  CONSTRAINT [FK__LICH__MaGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GV] ([MaGV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LICH] CHECK CONSTRAINT [FK__LICH__MaGV]
GO
ALTER TABLE [dbo].[LICH]  WITH CHECK ADD  CONSTRAINT [FK__LICH__MaLop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LOP] ([MaLop])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LICH] CHECK CONSTRAINT [FK__LICH__MaLop]
GO
ALTER TABLE [dbo].[LICH]  WITH CHECK ADD  CONSTRAINT [FK__LICH__MaMon] FOREIGN KEY([MaMon])
REFERENCES [dbo].[MON] ([MaMon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LICH] CHECK CONSTRAINT [FK__LICH__MaMon]
GO
ALTER TABLE [dbo].[LICH]  WITH CHECK ADD  CONSTRAINT [FK__LICH__MaPhong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PHONG] ([MaPhong])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LICH] CHECK CONSTRAINT [FK__LICH__MaPhong]
GO
USE [master]
GO
ALTER DATABASE [TKB_TNUT] SET  READ_WRITE 
GO
