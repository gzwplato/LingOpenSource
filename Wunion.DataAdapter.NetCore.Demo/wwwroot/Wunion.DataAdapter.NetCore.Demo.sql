/****** 
	特别说明：在 .NET Core 2.0 中使用 System.Data.SqlClient 数据库驱动，必须要求 Microsoft SQL Server 2008 R2 SP3 及以上版本
	否则将出现连接异常。
 ******/
USE [master]
GO
/****** Object:  Database [Wunion.DataAdapter.NetCore.Demo]    Script Date: 2017/9/1 1:57:06 ******/
CREATE DATABASE [Wunion.DataAdapter.NetCore.Demo] ON  PRIMARY 
/** 请修改下面的数据库文件路径在执行 **/
( NAME = N'Wunion.DataAdapter.NetCore.Demo', FILENAME = N'D:\MSSQL\MSSQL12.MSSQLSERVER\MSSQL\DATA\Wunion.DataAdapter.NetCore.Demo.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wunion.DataAdapter.NetCore.Demo_log', FILENAME = N'D:\MSSQL\MSSQL12.MSSQLSERVER\MSSQL\DATA\Wunion.DataAdapter.NetCore.Demo_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wunion.DataAdapter.NetCore.Demo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET RECOVERY FULL 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET  MULTI_USER 
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Wunion.DataAdapter.NetCore.Demo', N'ON'
GO
USE [Wunion.DataAdapter.NetCore.Demo]
GO
/****** Object:  Table [dbo].[T_TEST1]    Script Date: 2017/9/1 1:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_TEST1](
	[GroupId] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [varchar](255) NULL,
 CONSTRAINT [PK_T_TEST1] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_TEST2]    Script Date: 2017/9/1 1:57:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_TEST2](
	[TestId] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[TestName] [varchar](255) NULL,
	[TestAge] [float] NULL,
	[TestSex] [varchar](4) NULL,
	[TestPhoto] [image] NULL,
 CONSTRAINT [PK_T_TEST2] PRIMARY KEY CLUSTERED 
(
	[TestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [Wunion.DataAdapter.NetCore.Demo] SET  READ_WRITE 
GO
