USE [master]
GO
/****** Object:  Database [ProjetScrum]    Script Date: 05/25/2018 16:52:50 ******/
CREATE DATABASE [ProjetScrum] ON  PRIMARY 
( NAME = N'ProjetScrum', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ProjetScrum.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProjetScrum_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\ProjetScrum_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProjetScrum] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjetScrum].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjetScrum] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ProjetScrum] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ProjetScrum] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ProjetScrum] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ProjetScrum] SET ARITHABORT OFF
GO
ALTER DATABASE [ProjetScrum] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ProjetScrum] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ProjetScrum] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ProjetScrum] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ProjetScrum] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ProjetScrum] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ProjetScrum] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ProjetScrum] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ProjetScrum] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ProjetScrum] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ProjetScrum] SET  DISABLE_BROKER
GO
ALTER DATABASE [ProjetScrum] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ProjetScrum] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ProjetScrum] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ProjetScrum] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ProjetScrum] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ProjetScrum] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ProjetScrum] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ProjetScrum] SET  READ_WRITE
GO
ALTER DATABASE [ProjetScrum] SET RECOVERY SIMPLE
GO
ALTER DATABASE [ProjetScrum] SET  MULTI_USER
GO
ALTER DATABASE [ProjetScrum] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ProjetScrum] SET DB_CHAINING OFF
GO
USE [ProjetScrum]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 05/25/2018 16:52:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] NOT NULL,
	[LastName] [varchar](255) NOT NULL,
	[FirstName] [varchar](255) NOT NULL,
	[Mail] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Projet]    Script Date: 05/25/2018 16:52:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Projet](
	[ID] [int] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Description] [varchar](255) NULL,
	[Date_start] [date] NULL,
	[Date_end] [date] NULL,
	[SrumMaster_ID] [int] NULL,
	[ProductOwner_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Backlog]    Script Date: 05/25/2018 16:52:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Backlog](
	[ID] [int] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Description] [varchar](255) NULL,
	[Date_Creation] [date] NULL,
	[Projet_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sprint]    Script Date: 05/25/2018 16:52:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sprint](
	[ID] [int] NOT NULL,
	[Name] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
	[Date_start] [date] NULL,
	[Date_end] [date] NULL,
	[Backlog_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User_Story]    Script Date: 05/25/2018 16:52:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Story](
	[ID] [int] NOT NULL,
	[Description] [varchar](255) NULL,
	[Cost] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[Backlog_ID] [int] NULL,
	[Sprint_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tache]    Script Date: 05/25/2018 16:52:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tache](
	[ID] [int] NOT NULL,
	[Description] [varchar](255) NULL,
	[Date_start] [date] NULL,
	[Date_end] [date] NULL,
	[Users_ID] [int] NULL,
	[Sprint_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK__Projet__ProductO__060DEAE8]    Script Date: 05/25/2018 16:52:51 ******/
ALTER TABLE [dbo].[Projet]  WITH CHECK ADD FOREIGN KEY([ProductOwner_ID])
REFERENCES [dbo].[Users] ([ID])
GO
/****** Object:  ForeignKey [FK__Projet__SrumMast__0519C6AF]    Script Date: 05/25/2018 16:52:51 ******/
ALTER TABLE [dbo].[Projet]  WITH CHECK ADD FOREIGN KEY([SrumMaster_ID])
REFERENCES [dbo].[Users] ([ID])
GO
/****** Object:  ForeignKey [FK__Backlog__Projet___0AD2A005]    Script Date: 05/25/2018 16:52:51 ******/
ALTER TABLE [dbo].[Backlog]  WITH CHECK ADD FOREIGN KEY([Projet_ID])
REFERENCES [dbo].[Projet] ([ID])
GO
/****** Object:  ForeignKey [FK__Sprint__Backlog___0F975522]    Script Date: 05/25/2018 16:52:51 ******/
ALTER TABLE [dbo].[Sprint]  WITH CHECK ADD FOREIGN KEY([Backlog_ID])
REFERENCES [dbo].[Backlog] ([ID])
GO
/****** Object:  ForeignKey [FK__User_Stor__Backl__145C0A3F]    Script Date: 05/25/2018 16:52:51 ******/
ALTER TABLE [dbo].[User_Story]  WITH CHECK ADD FOREIGN KEY([Backlog_ID])
REFERENCES [dbo].[Backlog] ([ID])
GO
/****** Object:  ForeignKey [FK__User_Stor__Sprin__15502E78]    Script Date: 05/25/2018 16:52:51 ******/
ALTER TABLE [dbo].[User_Story]  WITH CHECK ADD FOREIGN KEY([Sprint_ID])
REFERENCES [dbo].[Sprint] ([ID])
GO
/****** Object:  ForeignKey [FK__Tache__Sprint_ID__1B0907CE]    Script Date: 05/25/2018 16:52:51 ******/
ALTER TABLE [dbo].[Tache]  WITH CHECK ADD FOREIGN KEY([Sprint_ID])
REFERENCES [dbo].[Sprint] ([ID])
GO
/****** Object:  ForeignKey [FK__Tache__Users_ID__1A14E395]    Script Date: 05/25/2018 16:52:51 ******/
ALTER TABLE [dbo].[Tache]  WITH CHECK ADD FOREIGN KEY([Users_ID])
REFERENCES [dbo].[Users] ([ID])
GO
