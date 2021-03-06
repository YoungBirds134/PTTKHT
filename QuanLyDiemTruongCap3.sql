USE [master]
GO
/****** Object:  Database [QuanLyTruongCap3]    Script Date: 5/20/2021 1:04:24 AM ******/
CREATE DATABASE [QuanLyTruongCap3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyTruongCap3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QuanLyTruongCap3.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyTruongCap3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QuanLyTruongCap3_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyTruongCap3] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyTruongCap3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyTruongCap3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyTruongCap3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyTruongCap3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyTruongCap3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyTruongCap3] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyTruongCap3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyTruongCap3] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyTruongCap3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyTruongCap3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyTruongCap3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyTruongCap3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyTruongCap3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyTruongCap3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyTruongCap3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyTruongCap3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyTruongCap3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyTruongCap3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyTruongCap3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyTruongCap3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyTruongCap3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyTruongCap3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyTruongCap3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyTruongCap3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyTruongCap3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyTruongCap3] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyTruongCap3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyTruongCap3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyTruongCap3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyTruongCap3] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QuanLyTruongCap3]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 5/20/2021 1:04:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[maHocSinh] [nvarchar](10) NOT NULL,
	[maMonHoc] [nvarchar](10) NOT NULL,
	[maHocKi] [nvarchar](10) NOT NULL,
	[maNamHoc] [nvarchar](10) NOT NULL,
	[loaiDiem] [nvarchar](10) NOT NULL,
	[Diem] [float] NULL,
 CONSTRAINT [PK_Diem] PRIMARY KEY CLUSTERED 
(
	[maHocSinh] ASC,
	[maMonHoc] ASC,
	[maHocKi] ASC,
	[maNamHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 5/20/2021 1:04:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[maGiaoVien] [nvarchar](10) NOT NULL,
	[tenGiaoVien] [nvarchar](50) NULL,
	[ngaySinh] [date] NULL,
	[danToc] [nvarchar](10) NULL,
	[CMND] [nvarchar](10) NULL,
	[gioiTinh] [nvarchar](10) NULL,
	[diaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[maGiaoVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HocKy]    Script Date: 5/20/2021 1:04:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocKy](
	[maHocKy] [nvarchar](10) NOT NULL,
	[tenHocKy] [nvarchar](20) NULL,
 CONSTRAINT [PK_HocKy] PRIMARY KEY CLUSTERED 
(
	[maHocKy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HocSinh]    Script Date: 5/20/2021 1:04:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocSinh](
	[maHocSinh] [nvarchar](10) NOT NULL,
	[tenHocSinh] [nvarchar](50) NULL,
	[ngaySinh] [date] NULL,
	[noiSinh] [nvarchar](50) NULL,
	[gioiTinh] [int] NOT NULL,
	[thanPhanGiaDinh] [nvarchar](10) NULL,
	[maLop] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_HocSinh] PRIMARY KEY CLUSTERED 
(
	[maHocSinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LichPhanCongGiaoVien]    Script Date: 5/20/2021 1:04:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichPhanCongGiaoVien](
	[maGiaoVien] [nvarchar](10) NOT NULL,
	[maMonHoc] [nvarchar](10) NOT NULL,
	[maNamHoc] [nvarchar](10) NOT NULL,
	[maLop] [nvarchar](10) NOT NULL,
	[maHocKi] [nvarchar](10) NOT NULL,
	[soTiet] [text] NULL,
	[NgayGio] [date] NOT NULL,
 CONSTRAINT [PK_LichPhanCongGiaoVien] PRIMARY KEY CLUSTERED 
(
	[maGiaoVien] ASC,
	[maMonHoc] ASC,
	[maNamHoc] ASC,
	[maLop] ASC,
	[maHocKi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lop]    Script Date: 5/20/2021 1:04:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[maLop] [nvarchar](10) NOT NULL,
	[tenLop] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[maLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 5/20/2021 1:04:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[maMonHoc] [nvarchar](10) NOT NULL,
	[tenMonHoc] [nvarchar](50) NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[maMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NamHoc]    Script Date: 5/20/2021 1:04:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NamHoc](
	[maNamHoc] [nvarchar](10) NOT NULL,
	[tenNamHoc] [nvarchar](50) NULL,
 CONSTRAINT [PK_NamHoc] PRIMARY KEY CLUSTERED 
(
	[maNamHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 5/20/2021 1:04:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[HocSinh] ([maHocSinh], [tenHocSinh], [ngaySinh], [noiSinh], [gioiTinh], [thanPhanGiaDinh], [maLop]) VALUES (N'10HS001', N'Nguyễn Thanh Huy', CAST(N'2000-04-13' AS Date), N'BinhDuong', 0, N'binhthuong', N'10A1')
INSERT [dbo].[HocSinh] ([maHocSinh], [tenHocSinh], [ngaySinh], [noiSinh], [gioiTinh], [thanPhanGiaDinh], [maLop]) VALUES (N'11HS001', N'Trần Hải Yến', CAST(N'2001-02-02' AS Date), N'HCM', 1, N'khokhan', N'11A2')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'10A1', N'Lớp 10A1')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'11A2', N'Lớp 11A2')
INSERT [dbo].[TaiKhoan] ([TaiKhoan], [MatKhau]) VALUES (N'admin', N'admin')
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_HocSinh] FOREIGN KEY([maHocSinh])
REFERENCES [dbo].[HocSinh] ([maHocSinh])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_HocSinh]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_NamHoc] FOREIGN KEY([maMonHoc])
REFERENCES [dbo].[NamHoc] ([maNamHoc])
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_NamHoc]
GO
ALTER TABLE [dbo].[HocSinh]  WITH CHECK ADD  CONSTRAINT [FK_HocSinh_Lop] FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
GO
ALTER TABLE [dbo].[HocSinh] CHECK CONSTRAINT [FK_HocSinh_Lop]
GO
ALTER TABLE [dbo].[LichPhanCongGiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_LichPhanCongGiaoVien_GiaoVien] FOREIGN KEY([maGiaoVien])
REFERENCES [dbo].[GiaoVien] ([maGiaoVien])
GO
ALTER TABLE [dbo].[LichPhanCongGiaoVien] CHECK CONSTRAINT [FK_LichPhanCongGiaoVien_GiaoVien]
GO
ALTER TABLE [dbo].[LichPhanCongGiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_LichPhanCongGiaoVien_HocKy] FOREIGN KEY([maHocKi])
REFERENCES [dbo].[HocKy] ([maHocKy])
GO
ALTER TABLE [dbo].[LichPhanCongGiaoVien] CHECK CONSTRAINT [FK_LichPhanCongGiaoVien_HocKy]
GO
ALTER TABLE [dbo].[LichPhanCongGiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_LichPhanCongGiaoVien_Lop] FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
GO
ALTER TABLE [dbo].[LichPhanCongGiaoVien] CHECK CONSTRAINT [FK_LichPhanCongGiaoVien_Lop]
GO
ALTER TABLE [dbo].[LichPhanCongGiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_LichPhanCongGiaoVien_MonHoc] FOREIGN KEY([maMonHoc])
REFERENCES [dbo].[MonHoc] ([maMonHoc])
GO
ALTER TABLE [dbo].[LichPhanCongGiaoVien] CHECK CONSTRAINT [FK_LichPhanCongGiaoVien_MonHoc]
GO
ALTER TABLE [dbo].[LichPhanCongGiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_LichPhanCongGiaoVien_NamHoc] FOREIGN KEY([maMonHoc])
REFERENCES [dbo].[NamHoc] ([maNamHoc])
GO
ALTER TABLE [dbo].[LichPhanCongGiaoVien] CHECK CONSTRAINT [FK_LichPhanCongGiaoVien_NamHoc]
GO
USE [master]
GO
ALTER DATABASE [QuanLyTruongCap3] SET  READ_WRITE 
GO
