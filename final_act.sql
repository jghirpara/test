USE [master]
GO
/****** Object:  Database [account_db]    Script Date: 12/19/2015 20:42:04 ******/
CREATE DATABASE [account_db] ON  PRIMARY 
( NAME = N'account_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\account_db.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'account_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\account_db_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [account_db] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [account_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [account_db] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [account_db] SET ANSI_NULLS OFF
GO
ALTER DATABASE [account_db] SET ANSI_PADDING OFF
GO
ALTER DATABASE [account_db] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [account_db] SET ARITHABORT OFF
GO
ALTER DATABASE [account_db] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [account_db] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [account_db] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [account_db] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [account_db] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [account_db] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [account_db] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [account_db] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [account_db] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [account_db] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [account_db] SET  DISABLE_BROKER
GO
ALTER DATABASE [account_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [account_db] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [account_db] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [account_db] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [account_db] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [account_db] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [account_db] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [account_db] SET  READ_WRITE
GO
ALTER DATABASE [account_db] SET RECOVERY FULL
GO
ALTER DATABASE [account_db] SET  MULTI_USER
GO
ALTER DATABASE [account_db] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [account_db] SET DB_CHAINING OFF
GO
USE [account_db]
GO
/****** Object:  Table [dbo].[tbl_vavcher_type]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_vavcher_type](
	[vch_id] [int] IDENTITY(1,1) NOT NULL,
	[vch_nm] [nvarchar](max) NULL,
	[ac_ty_id] [int] NULL,
	[term_condition] [nvarchar](max) NULL,
	[ino_no_type] [nvarchar](50) NULL,
	[ino_no_partan] [nvarchar](50) NULL,
	[e_declare] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_vavcher_type] PRIMARY KEY CLUSTERED 
(
	[vch_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_vavcher_type] ON
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (1, N'Contra', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (2, N'Credit Note', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (3, N'Debit Note', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (4, N'Delivery Note', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (5, N'Job Work In Order', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (6, N'Job Work Out Order', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (7, N'Journal', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (8, N'Material In', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (9, N'Material Out', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (10, N'Memorandum', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (11, N'Payment', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (12, N'Physical Stock', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (13, N'Purchase', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (14, N'Purchase Order', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (15, N'Receipt', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (16, N'Receipt Note', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (17, N'Rejections In', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (18, N'Rejections Out', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (19, N'Reversing Journal', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (20, N'Sales', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (21, N'Sales Order', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (22, N'Stock Journal', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (23, N'Retail Invoice', 20, N'1)tets&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
2)test', N'Custom', N'R/15/16/', NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (39, N'ddd', 2, N'ddd', N'Manual', N'', NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (40, N'ff', 2, N'fff', N'Manual', N'', NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (41, N'h', 2, N'hhh', N'Automatic', N'', NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (42, N'ad', 2, N'safasfasasfdsa<br />
fsasafsfaffa<br />
fasfasf', N'Manual', N'', NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (43, N'aaa', 1, N'retretretrt<br />
<br />
sfs<br />
<br />
<br />
sfdsfg', N'Automatic', N'', NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (44, N'dasd', 3, N'dsadsadfsa', N'Automatic', N'', NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (45, N'asffd', 3, N'sdfdsfs', N'Automatic', N'', NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (46, N'retail purches', 13, N'aaaaaa<br />
aaaaaa', N'Automatic', N'', NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (47, N'test-dc', 4, N'', N'Automatic', N'', NULL)
INSERT [dbo].[tbl_vavcher_type] ([vch_id], [vch_nm], [ac_ty_id], [term_condition], [ino_no_type], [ino_no_partan], [e_declare]) VALUES (48, N'Tax Invoice', 20, N'<span style="color: #393939; font-family: arial, helvetica, sans-serif; font-size: 8pt; line-height: 15.2381px; background-color: #e9f0f9;">(1) Any company for the goods should be made within 3 days.after that no Complaint will be entertained<br style="box-sizing: border-box; color: #393939; font-family: arial, helvetica, sans-serif; font-size: 10.6667px; line-height: 15.2381px; background-color: #e9f0f9;" />
(2) Interest @24% per annum will be charged after due date of the bill<br style="box-sizing: border-box; color: #393939; font-family: arial, helvetica, sans-serif; font-size: 10.6667px; line-height: 15.2381px; background-color: #e9f0f9;" />
(3) Goods will not be taken back<br style="box-sizing: border-box; color: #393939; font-family: arial, helvetica, sans-serif; font-size: 10.6667px; line-height: 15.2381px; background-color: #e9f0f9;" />
(4) Subject to ahmedabad Jurisdiction&nbsp;</span>', N'Automatic', N'', NULL)
SET IDENTITY_INSERT [dbo].[tbl_vavcher_type] OFF
/****** Object:  Table [dbo].[tbl_unit]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_unit](
	[unit_id] [int] IDENTITY(1,1) NOT NULL,
	[unit_nm] [nvarchar](50) NULL,
	[decimal_no] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_unit] PRIMARY KEY CLUSTERED 
(
	[unit_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_unit] ON
INSERT [dbo].[tbl_unit] ([unit_id], [unit_nm], [decimal_no]) VALUES (1, N'kg', N'3')
INSERT [dbo].[tbl_unit] ([unit_id], [unit_nm], [decimal_no]) VALUES (2, N'lt', N'2')
INSERT [dbo].[tbl_unit] ([unit_id], [unit_nm], [decimal_no]) VALUES (3, N'pc', N'3')
INSERT [dbo].[tbl_unit] ([unit_id], [unit_nm], [decimal_no]) VALUES (4, N'KGS', N'3')
INSERT [dbo].[tbl_unit] ([unit_id], [unit_nm], [decimal_no]) VALUES (5, N'KGS', N'3')
SET IDENTITY_INSERT [dbo].[tbl_unit] OFF
/****** Object:  Table [dbo].[tbl_transport]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_transport](
	[trp_id] [int] IDENTITY(1,1) NOT NULL,
	[trp_nm] [nvarchar](50) NULL,
	[trp_add] [nvarchar](max) NULL,
	[phone_no] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_transport] PRIMARY KEY CLUSTERED 
(
	[trp_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_thikness]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_thikness](
	[thikness_id] [int] IDENTITY(1,1) NOT NULL,
	[thikness_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_thikness] PRIMARY KEY CLUSTERED 
(
	[thikness_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_thikness] ON
INSERT [dbo].[tbl_thikness] ([thikness_id], [thikness_name]) VALUES (1, N'test1')
SET IDENTITY_INSERT [dbo].[tbl_thikness] OFF
/****** Object:  Table [dbo].[tbl_tarif_no]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_tarif_no](
	[trf_id] [int] IDENTITY(1,1) NOT NULL,
	[exc_comodity] [nvarchar](50) NULL,
	[tarff_no] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_tarif_no] PRIMARY KEY CLUSTERED 
(
	[trf_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_statutary]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_statutary](
	[stu_id] [int] IDENTITY(1,1) NOT NULL,
	[satutary_nm] [nvarchar](50) NULL,
	[app_date] [nvarchar](50) NULL,
	[under_cls] [nvarchar](50) NULL,
	[vat] [nvarchar](50) NULL,
	[add_vat] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_statutary] PRIMARY KEY CLUSTERED 
(
	[stu_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_statutary] ON
INSERT [dbo].[tbl_statutary] ([stu_id], [satutary_nm], [app_date], [under_cls], [vat], [add_vat]) VALUES (1, N'vat @ 4%', N'24/12/2015', N'Vat Class', N'4', N'1')
INSERT [dbo].[tbl_statutary] ([stu_id], [satutary_nm], [app_date], [under_cls], [vat], [add_vat]) VALUES (2, N'vat @ 12.5%', N'17/12/2015', N'Vat Class', N'12.5', N'2')
INSERT [dbo].[tbl_statutary] ([stu_id], [satutary_nm], [app_date], [under_cls], [vat], [add_vat]) VALUES (3, N'exc @12.5', N'17/12/2015', N'Dutys And Taxes', N'12.5', NULL)
INSERT [dbo].[tbl_statutary] ([stu_id], [satutary_nm], [app_date], [under_cls], [vat], [add_vat]) VALUES (4, N'cst @ 2%', N'17/12/2015', N'cst', N'2', NULL)
SET IDENTITY_INSERT [dbo].[tbl_statutary] OFF
/****** Object:  Table [dbo].[tbl_state]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_state](
	[state_id] [int] IDENTITY(1,1) NOT NULL,
	[state_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_state] PRIMARY KEY CLUSTERED 
(
	[state_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_state] ON
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (1, N'GUJARAT')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (2, N'ANDAMAN AND NICOBAR')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (3, N'ANDHRA PRADESH')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (4, N'ARUNACHAL PRADESH')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (5, N'ASSAM')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (6, N'BIHAR')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (7, N'CHANDIGARH')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (8, N'CHHATTISGARH')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (9, N'DADRA AND NAGAR HAVELI')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (10, N'DAMAN AND DIU')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (11, N'DELHI')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (12, N'GOA')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (13, N'HARYANA')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (14, N'HIMACHAL PRADESH')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (15, N'JAMMU AND KASHMIR')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (16, N'JHARKHAND')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (17, N'KARNATAKA')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (18, N'KERALA')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (19, N'LAKSHADWEEP')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (20, N'MADHYA PRADESH')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (21, N'MAHARASHTRA')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (22, N'MANIPUR')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (23, N'MEGHALAYA')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (24, N'MIZORAM')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (25, N'NAGALAND')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (26, N'ODISHA')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (27, N'PUDUCHERRY')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (28, N'PUNJAB')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (29, N'RAJASTHAN')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (30, N'SIKKIM')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (31, N'TAMIL NADU')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (32, N'TELANGANA')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (33, N'TRIPURA')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (34, N'UTTAR PRADESH')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (35, N'UTTARAKHAND')
INSERT [dbo].[tbl_state] ([state_id], [state_name]) VALUES (36, N'WEST BENGAL')
SET IDENTITY_INSERT [dbo].[tbl_state] OFF
/****** Object:  Table [dbo].[tbl_size]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_size](
	[size_id] [int] IDENTITY(1,1) NOT NULL,
	[size_name] [nvarchar](max) NULL,
	[size_feet_w] [nvarchar](50) NULL,
	[size_feet_h] [nvarchar](50) NULL,
	[size_meter_w] [nvarchar](50) NULL,
	[size_meter_h] [nvarchar](50) NULL,
	[size_inch_w] [nvarchar](50) NULL,
	[size_inch_h] [nvarchar](50) NULL,
	[size_mm_w] [nvarchar](50) NULL,
	[size_mm_h] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_size] PRIMARY KEY CLUSTERED 
(
	[size_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_size] ON
INSERT [dbo].[tbl_size] ([size_id], [size_name], [size_feet_w], [size_feet_h], [size_meter_w], [size_meter_h], [size_inch_w], [size_inch_h], [size_mm_w], [size_mm_h]) VALUES (1, N'5', N'5', N'3', N'1.52', N'0.91', N'60', N'36', N'1524.25', N'914.55')
INSERT [dbo].[tbl_size] ([size_id], [size_name], [size_feet_w], [size_feet_h], [size_meter_w], [size_meter_h], [size_inch_w], [size_inch_h], [size_mm_w], [size_mm_h]) VALUES (2, N'4', N'3', N'9', N'0.91', N'2.74', N'36', N'108', N'914.55', N'2743.65')
SET IDENTITY_INSERT [dbo].[tbl_size] OFF
/****** Object:  Table [dbo].[tbl_recipt]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_recipt](
	[rc_id] [int] IDENTITY(1,1) NOT NULL,
	[rc_no] [nvarchar](50) NULL,
	[vch_id] [nvarchar](50) NULL,
	[vch_nm] [nvarchar](50) NULL,
	[company_nm] [nvarchar](50) NULL,
	[company_id] [nvarchar](50) NULL,
	[rn_no] [nvarchar](50) NULL,
	[rn_date] [nvarchar](50) NULL,
	[puch_date] [nvarchar](50) NULL,
	[lr_no] [nvarchar](50) NULL,
	[ld_date] [nvarchar](50) NULL,
	[po_no] [nvarchar](50) NULL,
	[po_date] [nvarchar](50) NULL,
	[transport_name] [nvarchar](50) NULL,
	[trp_id] [nvarchar](50) NULL,
	[brocker_id] [nvarchar](50) NULL,
	[brocker_nm] [nvarchar](50) NULL,
	[tax_4] [nvarchar](50) NULL,
	[vat_1] [nvarchar](50) NULL,
	[tax_12] [nvarchar](50) NULL,
	[vat_2] [nvarchar](50) NULL,
	[cst_2] [nvarchar](50) NULL,
	[tatal_amount] [nvarchar](50) NULL,
	[total_qty] [nvarchar](50) NULL,
	[total] [nvarchar](50) NULL,
	[disc] [nvarchar](50) NULL,
	[payment] [nvarchar](50) NULL,
	[credit_amount] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_recipt] PRIMARY KEY CLUSTERED 
(
	[rc_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_rc_item]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_rc_item](
	[rc_item_id] [int] IDENTITY(1,1) NOT NULL,
	[rc_id] [nvarchar](50) NULL,
	[item_id] [nvarchar](50) NULL,
	[item_name] [nvarchar](50) NULL,
	[descr] [nvarchar](50) NULL,
	[qty] [nvarchar](50) NULL,
	[rate] [nvarchar](50) NULL,
	[per] [nvarchar](50) NULL,
	[tax] [nvarchar](50) NULL,
	[disc] [nvarchar](50) NULL,
	[amount] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_rc_item] PRIMARY KEY CLUSTERED 
(
	[rc_item_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_rc_extra]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_rc_extra](
	[rc_extra_id] [int] IDENTITY(1,1) NOT NULL,
	[rc_id] [nvarchar](50) NULL,
	[ld_name] [nvarchar](50) NULL,
	[extra_rs] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_rc_extra] PRIMARY KEY CLUSTERED 
(
	[rc_extra_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_purches]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_purches](
	[puch_id] [int] IDENTITY(1,1) NOT NULL,
	[inv_no] [nvarchar](50) NULL,
	[vch_id] [nvarchar](50) NULL,
	[vch_nm] [nvarchar](50) NULL,
	[company_nm] [nvarchar](50) NULL,
	[company_id] [nvarchar](50) NULL,
	[rn_no] [nvarchar](50) NULL,
	[rn_date] [nvarchar](50) NULL,
	[puch_date] [nvarchar](50) NULL,
	[lr_no] [nvarchar](50) NULL,
	[ld_date] [nvarchar](50) NULL,
	[po_no] [nvarchar](50) NULL,
	[po_date] [nvarchar](50) NULL,
	[transport_name] [nvarchar](50) NULL,
	[trp_id] [nvarchar](50) NULL,
	[brocker_id] [nvarchar](50) NULL,
	[brocker_nm] [nvarchar](50) NULL,
	[tax_4] [nvarchar](50) NULL,
	[vat_1] [nvarchar](50) NULL,
	[tax_12] [nvarchar](50) NULL,
	[vat_2] [nvarchar](50) NULL,
	[cst_2] [nvarchar](50) NULL,
	[tatal_amount] [nvarchar](50) NULL,
	[total_qty] [nvarchar](50) NULL,
	[total] [nvarchar](50) NULL,
	[disc] [nvarchar](50) NULL,
	[payment] [nvarchar](50) NULL,
	[credit_amount] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_purches] PRIMARY KEY CLUSTERED 
(
	[puch_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_purches] ON
INSERT [dbo].[tbl_purches] ([puch_id], [inv_no], [vch_id], [vch_nm], [company_nm], [company_id], [rn_no], [rn_date], [puch_date], [lr_no], [ld_date], [po_no], [po_date], [transport_name], [trp_id], [brocker_id], [brocker_nm], [tax_4], [vat_1], [tax_12], [vat_2], [cst_2], [tatal_amount], [total_qty], [total], [disc], [payment], [credit_amount]) VALUES (1, N'5', N'46', N'retail purches', N'innovator', N'1', N'5', N'26/08/2015', N'01/09/2015', N'45', N'26/08/2015', N'55', N'26/09/2015', N'aaaa', N'1', N'3', N'keval', N'4.4', N'1.1', N'31.25', N'6.25', N'0', N'400', N'7', N'360', N'3', N'', N'400')
SET IDENTITY_INSERT [dbo].[tbl_purches] OFF
/****** Object:  Table [dbo].[tbl_puch_item]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_puch_item](
	[puch_item_id] [int] IDENTITY(1,1) NOT NULL,
	[puch_id] [nvarchar](50) NULL,
	[item_id] [nvarchar](50) NULL,
	[item_name] [nvarchar](50) NULL,
	[descr] [nvarchar](50) NULL,
	[qty] [nvarchar](50) NULL,
	[rate] [nvarchar](50) NULL,
	[per] [nvarchar](50) NULL,
	[tax] [nvarchar](50) NULL,
	[disc] [nvarchar](50) NULL,
	[amount] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_puch_item] PRIMARY KEY CLUSTERED 
(
	[puch_item_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_puch_item] ON
INSERT [dbo].[tbl_puch_item] ([puch_item_id], [puch_id], [item_id], [item_name], [descr], [qty], [rate], [per], [tax], [disc], [amount]) VALUES (1, N'1', N'2', N'abc', N'test', N'5', N'50', N'kg', N'12%', N'', N'250')
INSERT [dbo].[tbl_puch_item] ([puch_item_id], [puch_id], [item_id], [item_name], [descr], [qty], [rate], [per], [tax], [disc], [amount]) VALUES (2, N'1', N'1', N'asfsaff', N'test', N'2', N'55', N'kg', N'4%', N'', N'110')
SET IDENTITY_INSERT [dbo].[tbl_puch_item] OFF
/****** Object:  Table [dbo].[tbl_puch_extra]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_puch_extra](
	[puch_extra_id] [int] IDENTITY(1,1) NOT NULL,
	[puch_id] [nvarchar](50) NULL,
	[ld_name] [nvarchar](50) NULL,
	[extra_rs] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_puch_extra] PRIMARY KEY CLUSTERED 
(
	[puch_extra_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_payment2]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_payment2](
	[pay_inv_no] [int] IDENTITY(1,1) NOT NULL,
	[payment_id] [nvarchar](50) NULL,
	[invoice_no] [nvarchar](50) NULL,
	[total_amt] [nvarchar](50) NULL,
	[payment_amt] [nchar](10) NULL,
 CONSTRAINT [PK_tbl_payment2] PRIMARY KEY CLUSTERED 
(
	[pay_inv_no] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_payment]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_payment](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[compay_nm] [nvarchar](max) NULL,
	[company_id] [nvarchar](50) NULL,
	[Payment_date] [nvarchar](50) NULL,
	[panyment_aeg] [nvarchar](50) NULL,
	[panyment_type] [nvarchar](50) NULL,
	[cash] [nvarchar](50) NULL,
	[bank_nm] [nvarchar](50) NULL,
	[chque_dd_no] [nvarchar](50) NULL,
	[date] [nvarchar](50) NULL,
	[bank] [nvarchar](50) NULL,
	[branch] [nvarchar](50) NULL,
	[nefft] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_payment] PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ledger]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ledger](
	[ld_id] [int] IDENTITY(1,1) NOT NULL,
	[ld_nm] [nvarchar](50) NULL,
	[ld_remark] [nvarchar](50) NULL,
	[grp_id] [int] NULL,
	[nick_nm] [nvarchar](50) NULL,
	[address_1] [nvarchar](max) NULL,
	[address_2] [nvarchar](max) NULL,
	[ac_no] [nvarchar](50) NULL,
	[ifsc_no] [nvarchar](50) NULL,
	[branch] [nvarchar](50) NULL,
	[bsr] [nvarchar](50) NULL,
	[opening_banlance] [nvarchar](50) NULL,
	[aaplicable_date] [nvarchar](50) NULL,
	[balance] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_ledger] PRIMARY KEY CLUSTERED 
(
	[ld_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_ledger] ON
INSERT [dbo].[tbl_ledger] ([ld_id], [ld_nm], [ld_remark], [grp_id], [nick_nm], [address_1], [address_2], [ac_no], [ifsc_no], [branch], [bsr], [opening_banlance], [aaplicable_date], [balance]) VALUES (1, N'innovator', N'test', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_ledger] ([ld_id], [ld_nm], [ld_remark], [grp_id], [nick_nm], [address_1], [address_2], [ac_no], [ifsc_no], [branch], [bsr], [opening_banlance], [aaplicable_date], [balance]) VALUES (2, N'VAT 4%', N'', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_ledger] ([ld_id], [ld_nm], [ld_remark], [grp_id], [nick_nm], [address_1], [address_2], [ac_no], [ifsc_no], [branch], [bsr], [opening_banlance], [aaplicable_date], [balance]) VALUES (3, N'VAT 12.5%', N'', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_ledger] ([ld_id], [ld_nm], [ld_remark], [grp_id], [nick_nm], [address_1], [address_2], [ac_no], [ifsc_no], [branch], [bsr], [opening_banlance], [aaplicable_date], [balance]) VALUES (4, N'CST 2%', N'', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_ledger] ([ld_id], [ld_nm], [ld_remark], [grp_id], [nick_nm], [address_1], [address_2], [ac_no], [ifsc_no], [branch], [bsr], [opening_banlance], [aaplicable_date], [balance]) VALUES (5, N'e', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_ledger] ([ld_id], [ld_nm], [ld_remark], [grp_id], [nick_nm], [address_1], [address_2], [ac_no], [ifsc_no], [branch], [bsr], [opening_banlance], [aaplicable_date], [balance]) VALUES (6, N'e', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_ledger] ([ld_id], [ld_nm], [ld_remark], [grp_id], [nick_nm], [address_1], [address_2], [ac_no], [ifsc_no], [branch], [bsr], [opening_banlance], [aaplicable_date], [balance]) VALUES (7, N'cartrage', N'', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_ledger] ([ld_id], [ld_nm], [ld_remark], [grp_id], [nick_nm], [address_1], [address_2], [ac_no], [ifsc_no], [branch], [bsr], [opening_banlance], [aaplicable_date], [balance]) VALUES (8, N'cash', N'test', 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_ledger] ([ld_id], [ld_nm], [ld_remark], [grp_id], [nick_nm], [address_1], [address_2], [ac_no], [ifsc_no], [branch], [bsr], [opening_banlance], [aaplicable_date], [balance]) VALUES (9, N'hdfc', N'', 28, N'hdfc', N'H-504,Icb City', N'Gota', N'223323', N'44444', N'MANINAGAR', N'4444', N'50000', N'10/09/2015', N'50000')
INSERT [dbo].[tbl_ledger] ([ld_id], [ld_nm], [ld_remark], [grp_id], [nick_nm], [address_1], [address_2], [ac_no], [ifsc_no], [branch], [bsr], [opening_banlance], [aaplicable_date], [balance]) VALUES (10, N'truyhrt', N'rehyreh', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_ledger] ([ld_id], [ld_nm], [ld_remark], [grp_id], [nick_nm], [address_1], [address_2], [ac_no], [ifsc_no], [branch], [bsr], [opening_banlance], [aaplicable_date], [balance]) VALUES (11, N'tect-cash', N'test', 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_ledger] ([ld_id], [ld_nm], [ld_remark], [grp_id], [nick_nm], [address_1], [address_2], [ac_no], [ifsc_no], [branch], [bsr], [opening_banlance], [aaplicable_date], [balance]) VALUES (12, N'Freight Charge', NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_ledger] ([ld_id], [ld_nm], [ld_remark], [grp_id], [nick_nm], [address_1], [address_2], [ac_no], [ifsc_no], [branch], [bsr], [opening_banlance], [aaplicable_date], [balance]) VALUES (13, N'P & F Charge', NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_ledger] ([ld_id], [ld_nm], [ld_remark], [grp_id], [nick_nm], [address_1], [address_2], [ac_no], [ifsc_no], [branch], [bsr], [opening_banlance], [aaplicable_date], [balance]) VALUES (14, N'Laber Charage', NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_ledger] ([ld_id], [ld_nm], [ld_remark], [grp_id], [nick_nm], [address_1], [address_2], [ac_no], [ifsc_no], [branch], [bsr], [opening_banlance], [aaplicable_date], [balance]) VALUES (15, N'Round Off', NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_ledger] OFF
/****** Object:  Table [dbo].[tbl_item_master]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_item_master](
	[item_id] [int] IDENTITY(1,1) NOT NULL,
	[item_name] [nvarchar](50) NULL,
	[item_sub_id] [int] NULL,
	[item_nik] [nvarchar](50) NULL,
	[item_code] [nvarchar](50) NULL,
	[barcode] [nvarchar](50) NULL,
	[item_des] [nvarchar](50) NULL,
	[unit] [nvarchar](50) NULL,
	[unit_id] [int] NULL,
	[opening_qty] [nvarchar](50) NULL,
	[opening_date] [nvarchar](50) NULL,
	[mrp] [nvarchar](50) NULL,
	[rate] [nvarchar](50) NULL,
	[qty] [nvarchar](50) NULL,
	[value] [nvarchar](50) NULL,
	[tax] [nvarchar](50) NULL,
	[cst] [nvarchar](50) NULL,
	[add_tax] [nvarchar](50) NULL,
	[exce] [nvarchar](50) NULL,
	[tariff_no] [nvarchar](50) NULL,
	[hsn_code] [nvarchar](50) NULL,
	[basic_duty] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_item_master] PRIMARY KEY CLUSTERED 
(
	[item_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_item_grp]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_item_grp](
	[item_grp_id] [int] IDENTITY(1,1) NOT NULL,
	[item_grp_nm] [nvarchar](50) NULL,
	[grp_id] [int] NULL,
	[vat_tax] [nvarchar](50) NULL,
	[add_tax] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_item_grp] PRIMARY KEY CLUSTERED 
(
	[item_grp_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_invoice]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_invoice](
	[invoice_id] [int] IDENTITY(1,1) NOT NULL,
	[vch_id] [nvarchar](50) NULL,
	[vch_nm] [nvarchar](50) NULL,
	[invoice_no] [nvarchar](50) NULL,
	[company_nm] [nvarchar](max) NULL,
	[company_id] [nvarchar](50) NULL,
	[dc_no] [nvarchar](50) NULL,
	[dc_date] [nvarchar](50) NULL,
	[invoice_date] [nvarchar](50) NULL,
	[lr_no] [nvarchar](50) NULL,
	[lr_date] [nvarchar](50) NULL,
	[po_no] [nvarchar](50) NULL,
	[po_date] [nvarchar](50) NULL,
	[transport_name] [nvarchar](50) NULL,
	[trp_id] [nvarchar](50) NULL,
	[brocker_id] [nvarchar](50) NULL,
	[brocker_name] [nvarchar](50) NULL,
	[tax_4] [nvarchar](50) NULL,
	[vat_1] [nvarchar](50) NULL,
	[tax_12] [nvarchar](50) NULL,
	[vat_2] [nvarchar](50) NULL,
	[cst_2] [nvarchar](50) NULL,
	[total_amount] [nvarchar](50) NULL,
	[total_qty] [nvarchar](50) NULL,
	[total] [nvarchar](50) NULL,
	[disc] [nvarchar](50) NULL,
	[payment] [nvarchar](50) NULL,
	[debit_amount] [nvarchar](50) NULL,
	[inv_time] [nvarchar](50) NULL,
	[removel_dt] [nvarchar](50) NULL,
	[removal_time] [nvarchar](50) NULL,
	[ship_to] [nvarchar](50) NULL,
	[from_s] [nvarchar](50) NULL,
	[to_] [nvarchar](50) NULL,
	[menar_trp] [nvarchar](50) NULL,
	[vehical_no] [nvarchar](50) NULL,
	[exci_como_no] [nvarchar](50) NULL,
	[teriff_no] [nvarchar](50) NULL,
	[pla] [nvarchar](50) NULL,
	[r_g] [nvarchar](50) NULL,
	[part] [nvarchar](50) NULL,
	[dt] [nvarchar](50) NULL,
	[exce] [nvarchar](50) NULL,
	[vat_type] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_invoice] PRIMARY KEY CLUSTERED 
(
	[invoice_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_inv_item]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_inv_item](
	[inv_item_id] [int] IDENTITY(1,1) NOT NULL,
	[invoice_id] [nvarchar](50) NULL,
	[item_id] [nvarchar](50) NULL,
	[item_name] [nvarchar](max) NULL,
	[descr] [nvarchar](max) NULL,
	[qty] [nvarchar](50) NULL,
	[rate] [nvarchar](50) NULL,
	[per] [nvarchar](50) NULL,
	[tax] [nvarchar](50) NULL,
	[disc] [nvarchar](50) NULL,
	[amount] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_inv_item] PRIMARY KEY CLUSTERED 
(
	[inv_item_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_inv_extra]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_inv_extra](
	[inv_extra_id] [int] IDENTITY(1,1) NOT NULL,
	[invoice_id] [nvarchar](50) NULL,
	[ld_name] [nvarchar](50) NULL,
	[ld_id] [nvarchar](50) NULL,
	[extra_rs] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_inv_extra] PRIMARY KEY CLUSTERED 
(
	[inv_extra_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_group1]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_group1](
	[group_id] [int] IDENTITY(1,1) NOT NULL,
	[alias] [nvarchar](50) NULL,
	[group_name] [nvarchar](max) NULL,
	[stock_t] [nvarchar](50) NULL,
	[stock_s] [nvarchar](50) NULL,
	[stock_d] [nvarchar](50) NULL,
	[rate_t] [nvarchar](50) NULL,
	[rate_s] [nvarchar](50) NULL,
	[rate_d] [nvarchar](50) NULL,
	[formula_id] [int] NULL,
 CONSTRAINT [PK_tbl_group1] PRIMARY KEY CLUSTERED 
(
	[group_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_group1] ON
INSERT [dbo].[tbl_group1] ([group_id], [alias], [group_name], [stock_t], [stock_s], [stock_d], [rate_t], [rate_s], [rate_d], [formula_id]) VALUES (26, N'test', N'test', N'', N'', N'', N'', N'', N'', 2)
INSERT [dbo].[tbl_group1] ([group_id], [alias], [group_name], [stock_t], [stock_s], [stock_d], [rate_t], [rate_s], [rate_d], [formula_id]) VALUES (27, N'test', N'test', N'Thikness', N'', N'', N'', N'Size', N'', 1)
INSERT [dbo].[tbl_group1] ([group_id], [alias], [group_name], [stock_t], [stock_s], [stock_d], [rate_t], [rate_s], [rate_d], [formula_id]) VALUES (28, N'test', N'test', N'Thikness', N'', N'', N'', N'', N'', 2)
INSERT [dbo].[tbl_group1] ([group_id], [alias], [group_name], [stock_t], [stock_s], [stock_d], [rate_t], [rate_s], [rate_d], [formula_id]) VALUES (29, N'test', N'test', N'Thikness', N'', N'', N'', N'Size', N'', 1)
SET IDENTITY_INSERT [dbo].[tbl_group1] OFF
/****** Object:  Table [dbo].[tbl_group]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_group](
	[grp_id] [int] IDENTITY(1,1) NOT NULL,
	[grp_name] [nvarchar](max) NULL,
	[ac_ty_id] [int] NULL,
 CONSTRAINT [PK_tbl_group] PRIMARY KEY CLUSTERED 
(
	[grp_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_group] ON
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (1, N'Capital Account', 1)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (2, N'Loans (Liability)', 1)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (3, N'Current Liabilities', 1)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (4, N'Fixed Assets', 1)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (5, N'Investments', 1)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (6, N'Current Assets', 1)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (7, N'Branch / Divisions', 1)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (8, N'Misc. Expenses (ASSET)', 1)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (9, N'Suspense A/c', 1)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (10, N'Sales Accounts', 1)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (11, N'Purchase Accounts', 1)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (12, N'Direct Incomes', 1)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (13, N'Direct Expenses', 1)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (14, N'Indirect Incomes', 1)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (15, N'Indirect Expenses', 1)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (16, N'Reserves & Surplus', 2)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (17, N'Bank OD A/c', 3)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (18, N'Secured Loans', 3)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (19, N'Unsecured Loans', 3)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (20, N'Duties & Taxes', 4)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (21, N'Provisions', 4)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (22, N'Sundry Creditors', 4)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (23, N'Stock-in-Hand', 5)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (24, N'Deposits (Asset)', 5)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (25, N'Loans & Advances (Asset)', 5)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (26, N'Sundry Debtors', 5)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (27, N'Cash-in-Hand', 5)
INSERT [dbo].[tbl_group] ([grp_id], [grp_name], [ac_ty_id]) VALUES (28, N'Bank Accounts', 5)
SET IDENTITY_INSERT [dbo].[tbl_group] OFF
/****** Object:  Table [dbo].[tbl_godown]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_godown](
	[godw_id] [int] IDENTITY(1,1) NOT NULL,
	[godw_nm] [nvarchar](50) NULL,
	[item_id] [int] NULL,
	[qty] [nvarchar](50) NULL,
	[price] [nvarchar](50) NULL,
	[store_address] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_godown] PRIMARY KEY CLUSTERED 
(
	[godw_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_godown] ON
INSERT [dbo].[tbl_godown] ([godw_id], [godw_nm], [item_id], [qty], [price], [store_address]) VALUES (1, N'vtva-2', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_godown] OFF
/****** Object:  Table [dbo].[tbl_formula]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_formula](
	[formula_id] [int] IDENTITY(1,1) NOT NULL,
	[formula_name] [nvarchar](50) NULL,
	[formula_expression] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_formula] PRIMARY KEY CLUSTERED 
(
	[formula_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_formula] ON
INSERT [dbo].[tbl_formula] ([formula_id], [formula_name], [formula_expression]) VALUES (1, N'ADH', NULL)
INSERT [dbo].[tbl_formula] ([formula_id], [formula_name], [formula_expression]) VALUES (2, N'CDMtr', N'test')
INSERT [dbo].[tbl_formula] ([formula_id], [formula_name], [formula_expression]) VALUES (3, N'CFt', N'(Qty * R *T)')
INSERT [dbo].[tbl_formula] ([formula_id], [formula_name], [formula_expression]) VALUES (4, N'Piece', N'(Qty * R)')
SET IDENTITY_INSERT [dbo].[tbl_formula] OFF
/****** Object:  Table [dbo].[tbl_finish]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_finish](
	[finish_id] [int] IDENTITY(1,1) NOT NULL,
	[finish_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_finish] PRIMARY KEY CLUSTERED 
(
	[finish_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_finish] ON
INSERT [dbo].[tbl_finish] ([finish_id], [finish_name]) VALUES (1, N'tets1')
SET IDENTITY_INSERT [dbo].[tbl_finish] OFF
/****** Object:  Table [dbo].[tbl_expence]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_expence](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ex_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_expence] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_design]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_design](
	[design_id] [int] IDENTITY(1,1) NOT NULL,
	[prefix] [nvarchar](50) NULL,
	[saffix] [nvarchar](50) NULL,
	[design_no] [nvarchar](50) NULL,
	[finish] [nvarchar](50) NULL,
	[design_name] [nvarchar](max) NULL,
	[design] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_design] PRIMARY KEY CLUSTERED 
(
	[design_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_design] ON
INSERT [dbo].[tbl_design] ([design_id], [prefix], [saffix], [design_no], [finish], [design_name], [design], [description]) VALUES (1, N'', N'', N'1', N'', N'', N'1', N'')
INSERT [dbo].[tbl_design] ([design_id], [prefix], [saffix], [design_no], [finish], [design_name], [design], [description]) VALUES (2, N'', N'', N'2', N'', N'test1', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_design] OFF
/****** Object:  Table [dbo].[tbl_dc_item]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_dc_item](
	[dc_item_id] [int] IDENTITY(1,1) NOT NULL,
	[dc_no_id] [int] NULL,
	[item_id] [int] NULL,
	[item_name] [nvarchar](50) NULL,
	[descr] [nvarchar](max) NULL,
	[qty] [nvarchar](50) NULL,
	[rate] [nvarchar](50) NULL,
	[per] [nvarchar](50) NULL,
	[tax] [nvarchar](50) NULL,
	[disc] [nvarchar](50) NULL,
	[amount] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_dc_item] PRIMARY KEY CLUSTERED 
(
	[dc_item_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_dc_extra]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_dc_extra](
	[dc_extra_id] [int] IDENTITY(1,1) NOT NULL,
	[dc_no] [nvarchar](50) NULL,
	[ld_name] [nvarchar](50) NULL,
	[ld_id] [nvarchar](50) NULL,
	[extra_rs] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_dc_extra] PRIMARY KEY CLUSTERED 
(
	[dc_extra_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_dc]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_dc](
	[dc_no_id] [int] IDENTITY(1,1) NOT NULL,
	[dc_no] [nvarchar](50) NULL,
	[dc_date] [nvarchar](50) NULL,
	[p_o_no] [nvarchar](50) NULL,
	[p_o_date] [nvarchar](50) NULL,
	[l_r_no] [nvarchar](50) NULL,
	[l_r_date] [nvarchar](50) NULL,
	[transport_name] [nvarchar](50) NULL,
	[trp_id] [nvarchar](50) NULL,
	[company_naem] [nvarchar](50) NULL,
	[cust_id] [nvarchar](50) NULL,
	[brocker_nm] [nvarchar](50) NULL,
	[brocker_id] [nvarchar](50) NULL,
	[tax_4] [nvarchar](50) NULL,
	[vat_1] [nvarchar](50) NULL,
	[tax_12] [nvarchar](50) NULL,
	[vat_2] [nvarchar](50) NULL,
	[cst_2] [nvarchar](50) NULL,
	[dics] [nvarchar](50) NULL,
	[total_amount] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_dc] PRIMARY KEY CLUSTERED 
(
	[dc_no_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_custmer]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_custmer](
	[cust_id] [int] IDENTITY(1,1) NOT NULL,
	[company_name] [nvarchar](50) NULL,
	[nick_nm] [nvarchar](50) NULL,
	[contact_per_name] [nvarchar](50) NULL,
	[grp_id] [int] NULL,
	[address_1] [nvarchar](max) NULL,
	[address_2] [nvarchar](max) NULL,
	[contact_no] [nvarchar](50) NULL,
	[state_id] [int] NULL,
	[city_id] [int] NULL,
	[vat] [nvarchar](50) NULL,
	[cst] [nvarchar](50) NULL,
	[cst_date] [nvarchar](50) NULL,
	[cst_attch] [nvarchar](max) NULL,
	[st] [nvarchar](50) NULL,
	[ecc] [nvarchar](50) NULL,
	[tds] [nvarchar](50) NULL,
	[tds_attch] [nvarchar](max) NULL,
	[pan] [nvarchar](50) NULL,
	[pan_attch] [nvarchar](max) NULL,
	[bank_name] [nvarchar](50) NULL,
	[ac_no] [nvarchar](50) NULL,
	[branch] [nvarchar](50) NULL,
	[ifsc] [nvarchar](50) NULL,
	[bsr] [nvarchar](50) NULL,
	[credit_limit] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[tin_no] [nvarchar](50) NULL,
	[tin_date] [nvarchar](50) NULL,
	[tin_attch] [nvarchar](max) NULL,
	[serv_no] [nvarchar](50) NULL,
	[serv_date] [nvarchar](50) NULL,
	[serv_attch] [nvarchar](max) NULL,
	[exie_no] [nvarchar](50) NULL,
	[exie_date] [nvarchar](50) NULL,
	[exie_attch] [nvarchar](max) NULL,
	[range_code] [nvarchar](50) NULL,
	[range_nm] [nvarchar](50) NULL,
	[range_add] [nvarchar](max) NULL,
	[div_code] [nvarchar](50) NULL,
	[div_name] [nvarchar](50) NULL,
	[div_add] [nvarchar](max) NULL,
	[comm_add] [nvarchar](50) NULL,
	[comm_nm] [nvarchar](50) NULL,
	[comm_code] [nvarchar](50) NULL,
	[pin] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_custmer] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_cust_brock]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_cust_brock](
	[cust_brock_id] [int] IDENTITY(1,1) NOT NULL,
	[brock_id] [int] NULL,
	[brock_name] [nvarchar](50) NULL,
	[status] [nvarchar](50) NULL,
	[applicabale_date] [nvarchar](50) NULL,
	[end_date] [nvarchar](50) NULL,
	[cust_id] [int] NULL,
	[per] [nvarchar](50) NULL,
	[company_nm] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_cust_brock] PRIMARY KEY CLUSTERED 
(
	[cust_brock_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_cust_brock] ON
INSERT [dbo].[tbl_cust_brock] ([cust_brock_id], [brock_id], [brock_name], [status], [applicabale_date], [end_date], [cust_id], [per], [company_nm]) VALUES (1, 2, N'jay', N'Active', N'09/09/2015', N'', 1, N'5%', N'innovator')
SET IDENTITY_INSERT [dbo].[tbl_cust_brock] OFF
/****** Object:  Table [dbo].[tbl_company_master]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_company_master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[company_name] [nvarchar](max) NULL,
	[add_1] [nvarchar](max) NULL,
	[add_2] [nvarchar](max) NULL,
	[state_id] [int] NULL,
	[city_id] [int] NULL,
	[phone] [nvarchar](50) NULL,
	[starting_form] [nvarchar](50) NULL,
	[logo] [nvarchar](50) NULL,
	[vat] [nvarchar](50) NULL,
	[vat_date] [nvarchar](50) NULL,
	[vat_crt] [nvarchar](max) NULL,
	[tin] [nvarchar](50) NULL,
	[tin_date] [nvarchar](50) NULL,
	[tin_crt] [nvarchar](50) NULL,
	[cst] [nvarchar](50) NULL,
	[cst_date] [nvarchar](50) NULL,
	[cst_crt] [nvarchar](max) NULL,
	[exse] [nvarchar](50) NULL,
	[exse_date] [nvarchar](50) NULL,
	[exse_crt] [nvarchar](max) NULL,
	[st] [nvarchar](50) NULL,
	[st_date] [nvarchar](50) NULL,
	[st_crt] [nvarchar](max) NULL,
	[tds] [nvarchar](50) NULL,
	[tds_date] [nvarchar](50) NULL,
	[tds_crt] [nvarchar](max) NULL,
	[cin] [nvarchar](50) NULL,
	[cin_crt] [nvarchar](max) NULL,
	[pan] [nvarchar](50) NULL,
	[pan_crt] [nvarchar](max) NULL,
	[website] [nvarchar](50) NULL,
	[email] [nvarchar](max) NULL,
	[mobileno] [nvarchar](50) NULL,
	[pin_code] [nvarchar](50) NULL,
	[vat_tax] [nvarchar](50) NULL,
	[add_vat] [nvarchar](50) NULL,
	[exse_tax] [nvarchar](50) NULL,
	[range] [nvarchar](max) NULL,
	[division] [nvarchar](max) NULL,
	[commisionerate] [nvarchar](max) NULL,
	[n_dt_notificatio_under] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_company_master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_company_master] ON
INSERT [dbo].[tbl_company_master] ([id], [company_name], [add_1], [add_2], [state_id], [city_id], [phone], [starting_form], [logo], [vat], [vat_date], [vat_crt], [tin], [tin_date], [tin_crt], [cst], [cst_date], [cst_crt], [exse], [exse_date], [exse_crt], [st], [st_date], [st_crt], [tds], [tds_date], [tds_crt], [cin], [cin_crt], [pan], [pan_crt], [website], [email], [mobileno], [pin_code], [vat_tax], [add_vat], [exse_tax], [range], [division], [commisionerate], [n_dt_notificatio_under]) VALUES (1, N'innovator1', N'ahemdabad', N'rajkot', 1, 1, N'242275', N'2/1/2015', N'img/background12.jpg', N'12%gddsgdsg', N'07/01/2016', N'img/background7.jpg', N'11651155', N'02/05/2014', NULL, N'sfaffasfaf', N'08/10/2015', N'img/blog5.jpg', N'1fasfsafsaf', N'1/9/2015', N'img/background2.jpg', N'1asfsad', N'18/12/2015', N'img/background5.jpg', N'10fsaf', N'2/9/2015', N'img/background12.jpg', N'1fasfsa', N'img/background11.jpg', N'1fsafsa', N'img/blog2.jpg', N'sxdsxsx', N'sdsds', N'454545', N'256348', N'', N'', N'', N'II/V/2nd ,c,excise Bhwan,Ambawadi abad', N'Vtva-II/III/III', N'vtva,Ambawadi Ahmedabad', N'fasfsafsafsafsaff')
SET IDENTITY_INSERT [dbo].[tbl_company_master] OFF
/****** Object:  Table [dbo].[tbl_city]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_city](
	[city_id] [int] IDENTITY(1,1) NOT NULL,
	[city_name] [nvarchar](50) NULL,
	[state_id] [int] NULL,
 CONSTRAINT [PK_tbl_city] PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_city] ON
INSERT [dbo].[tbl_city] ([city_id], [city_name], [state_id]) VALUES (1, N'Ahmedabad', 1)
INSERT [dbo].[tbl_city] ([city_id], [city_name], [state_id]) VALUES (2, N'Rajkot', 1)
INSERT [dbo].[tbl_city] ([city_id], [city_name], [state_id]) VALUES (3, N'Baroda', 1)
INSERT [dbo].[tbl_city] ([city_id], [city_name], [state_id]) VALUES (4, N'Surat', 1)
SET IDENTITY_INSERT [dbo].[tbl_city] OFF
/****** Object:  Table [dbo].[tbl_brocker]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_brocker](
	[brock_id] [int] IDENTITY(1,1) NOT NULL,
	[brock_nm] [nvarchar](50) NULL,
	[address_1] [nvarchar](max) NULL,
	[address_2] [nvarchar](max) NULL,
	[state_id] [int] NULL,
	[city] [int] NULL,
	[contact_no] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_brocker] PRIMARY KEY CLUSTERED 
(
	[brock_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_brocker] ON
INSERT [dbo].[tbl_brocker] ([brock_id], [brock_nm], [address_1], [address_2], [state_id], [city], [contact_no]) VALUES (1, N'', N'H-504,Icb City', N'Gota', 1, 1, N'8460235418')
INSERT [dbo].[tbl_brocker] ([brock_id], [brock_nm], [address_1], [address_2], [state_id], [city], [contact_no]) VALUES (2, N'jay', N'H-504,Icb City', N'Gota', 1, 1, N'8460235418')
INSERT [dbo].[tbl_brocker] ([brock_id], [brock_nm], [address_1], [address_2], [state_id], [city], [contact_no]) VALUES (3, N'keval', N'Raipur', N'', 1, 1, N'242275')
SET IDENTITY_INSERT [dbo].[tbl_brocker] OFF
/****** Object:  Table [dbo].[tbl_bank]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_bank](
	[bnk_id] [int] IDENTITY(1,1) NOT NULL,
	[bnk_nm] [nvarchar](50) NULL,
	[nick_nm] [nvarchar](50) NULL,
	[address_1] [nvarchar](max) NULL,
	[address_2] [nvarchar](max) NULL,
	[ac_no] [nvarchar](50) NULL,
	[ifsc_no] [nvarchar](50) NULL,
	[branch] [nvarchar](50) NULL,
	[bsr] [nvarchar](50) NULL,
	[opening_balance] [nvarchar](50) NULL,
	[aaplicable_date] [nvarchar](50) NULL,
	[balance] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_bank] PRIMARY KEY CLUSTERED 
(
	[bnk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_bank] ON
INSERT [dbo].[tbl_bank] ([bnk_id], [bnk_nm], [nick_nm], [address_1], [address_2], [ac_no], [ifsc_no], [branch], [bsr], [opening_balance], [aaplicable_date], [balance]) VALUES (1, N'sbi', N's', N'ksdfk', N'mosmao', N'1234567890', N'moplmsa', N'baroda', N'kosdvmko', N'omopcvmda', N'26/8/2015', N'omopcvmda')
INSERT [dbo].[tbl_bank] ([bnk_id], [bnk_nm], [nick_nm], [address_1], [address_2], [ac_no], [ifsc_no], [branch], [bsr], [opening_balance], [aaplicable_date], [balance]) VALUES (2, N'hdfc', N'h', N'H-504,Icb City', N'mosmao', N'1234567890', N'111111', N'MANINAGAR', N'11', N'5000`', N'25/8/2012', N'5000`')
INSERT [dbo].[tbl_bank] ([bnk_id], [bnk_nm], [nick_nm], [address_1], [address_2], [ac_no], [ifsc_no], [branch], [bsr], [opening_balance], [aaplicable_date], [balance]) VALUES (3, N'hdafc', N'bak', N'H-504,Icb City', N'Gota', N'2222', N'moplmsa', N'MANINAGAR', N'asfd', N'sfa', N'09/09/2015', N'sfa')
SET IDENTITY_INSERT [dbo].[tbl_bank] OFF
/****** Object:  Table [dbo].[tbl_app_stu]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_app_stu](
	[ap_stu_id] [int] IDENTITY(1,1) NOT NULL,
	[stu_id] [nvarchar](50) NULL,
	[app_date] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_app_stu] PRIMARY KEY CLUSTERED 
(
	[ap_stu_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ac_type]    Script Date: 12/19/2015 20:42:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ac_type](
	[ac_ty_id] [int] IDENTITY(1,1) NOT NULL,
	[ac_type] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_ac_type] PRIMARY KEY CLUSTERED 
(
	[ac_ty_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_ac_type] ON
INSERT [dbo].[tbl_ac_type] ([ac_ty_id], [ac_type]) VALUES (1, N'PRIMARY')
SET IDENTITY_INSERT [dbo].[tbl_ac_type] OFF
