USE [master]
GO
/****** Object:  Database [Марафон]    Script Date: 30.05.2020 0:09:11 ******/
CREATE DATABASE [Марафон]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Марафон', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Марафон.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Марафон_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Марафон_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Марафон] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Марафон].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Марафон] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Марафон] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Марафон] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Марафон] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Марафон] SET ARITHABORT OFF 
GO
ALTER DATABASE [Марафон] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Марафон] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Марафон] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Марафон] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Марафон] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Марафон] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Марафон] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Марафон] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Марафон] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Марафон] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Марафон] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Марафон] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Марафон] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Марафон] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Марафон] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Марафон] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Марафон] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Марафон] SET RECOVERY FULL 
GO
ALTER DATABASE [Марафон] SET  MULTI_USER 
GO
ALTER DATABASE [Марафон] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Марафон] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Марафон] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Марафон] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Марафон] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Марафон', N'ON'
GO
ALTER DATABASE [Марафон] SET QUERY_STORE = OFF
GO
USE [Марафон]
GO
/****** Object:  Table [dbo].[Charity]    Script Date: 30.05.2020 0:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Charity](
	[Charityld] [int] NOT NULL,
	[CharityName] [varchar](100) NOT NULL,
	[CharityDescriiption] [varchar](100) NULL,
	[CharilyLogo] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Charity] PRIMARY KEY CLUSTERED 
(
	[Charityld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 30.05.2020 0:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryCode] [char](3) NOT NULL,
	[CountryName] [varchar](100) NOT NULL,
	[CountryFlag] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 30.05.2020 0:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[Eventld] [char](6) NOT NULL,
	[EventName] [varchar](max) NOT NULL,
	[EventTypeld] [char](2) NOT NULL,
	[Marathonld] [tinyint] NOT NULL,
	[StartDateTime] [datetime] NULL,
	[Cost] [decimal](10, 2) NULL,
	[MaxParticipants] [smallint] NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[Eventld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventType]    Script Date: 30.05.2020 0:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventType](
	[EventTypeld] [char](2) NOT NULL,
	[EventTypeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EventType] PRIMARY KEY CLUSTERED 
(
	[EventTypeld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 30.05.2020 0:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Gender] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Gender] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marathon]    Script Date: 30.05.2020 0:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marathon](
	[Marathonld] [tinyint] NOT NULL,
	[MarathonName] [varchar](50) NOT NULL,
	[CityName] [varchar](80) NULL,
	[CiuntryCode] [char](3) NOT NULL,
	[YearHeld] [smallint] NULL,
 CONSTRAINT [PK_Marathon] PRIMARY KEY CLUSTERED 
(
	[Marathonld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 30.05.2020 0:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[Positionld] [smallint] NOT NULL,
	[PositionName] [varchar](50) NOT NULL,
	[PositionDescription] [varchar](1000) NULL,
	[PayPeriod] [varchar](10) NOT NULL,
	[Payrate] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[Positionld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RaceKitOption]    Script Date: 30.05.2020 0:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceKitOption](
	[RaceKitOptionld] [char](1) NOT NULL,
	[RaceKitOption] [varchar](80) NOT NULL,
	[RaceKitCost] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_RaceKitOption] PRIMARY KEY CLUSTERED 
(
	[RaceKitOptionld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ragistration]    Script Date: 30.05.2020 0:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ragistration](
	[Registrationld] [int] NOT NULL,
	[Runnerld] [int] NOT NULL,
	[RegistrationDateTime] [datetime] NOT NULL,
	[RaceKitOptionID] [char](1) NOT NULL,
	[RegistrationStatusID] [tinyint] NOT NULL,
	[Cost] [decimal](10, 2) NOT NULL,
	[CharityID] [int] NOT NULL,
	[SponsorshipTarget] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_Ragistration] PRIMARY KEY CLUSTERED 
(
	[Registrationld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration_Event]    Script Date: 30.05.2020 0:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration_Event](
	[RegistrationEventld] [int] NOT NULL,
	[Registrationld] [int] NOT NULL,
	[Eventld] [char](6) NULL,
	[BidNumber] [smallint] NULL,
	[RaceTime] [int] NULL,
 CONSTRAINT [PK_Registration_Event] PRIMARY KEY CLUSTERED 
(
	[RegistrationEventld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistrationStatus]    Script Date: 30.05.2020 0:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistrationStatus](
	[RegistrationStatusld] [tinyint] NOT NULL,
	[RegistrationStatus] [varchar](80) NOT NULL,
 CONSTRAINT [PK_RegistrationStatus] PRIMARY KEY CLUSTERED 
(
	[RegistrationStatusld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 30.05.2020 0:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Roleld] [char](1) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Roleld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Runner]    Script Date: 30.05.2020 0:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Runner](
	[Runnerld] [int] NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Gender] [varchar](100) NOT NULL,
	[DateOfBirth] [datetime] NULL,
	[CountryCode] [char](3) NOT NULL,
 CONSTRAINT [PK_Runner] PRIMARY KEY CLUSTERED 
(
	[Runnerld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sponsorship]    Script Date: 30.05.2020 0:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sponsorship](
	[Sponsorshipld] [int] NOT NULL,
	[SponsorName] [varbinary](100) NULL,
	[RegistrationID] [int] NULL,
	[Amount] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Sponsorship] PRIMARY KEY CLUSTERED 
(
	[Sponsorshipld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 30.05.2020 0:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Staffld] [int] NOT NULL,
	[FirstName] [varchar](80) NOT NULL,
	[LastName] [varchar](80) NOT NULL,
	[Email] [varchar](80) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[Postionld] [smallint] NOT NULL,
	[Comments] [varchar](2000) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[Staffld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Timesheet]    Script Date: 30.05.2020 0:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timesheet](
	[Timeshettld] [int] NOT NULL,
	[Staffld] [int] NOT NULL,
	[StartDateTime] [datetime] NULL,
	[EndDateTime] [datetime] NULL,
	[PayAmount] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Timesheet] PRIMARY KEY CLUSTERED 
(
	[Timeshettld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 30.05.2020 0:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Email] [varchar](100) NOT NULL,
	[Password] [varchar](100) NULL,
	[FirstName] [varchar](80) NULL,
	[LastName] [varchar](80) NULL,
	[Roleld] [char](1) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Volunteer]    Script Date: 30.05.2020 0:09:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Volunteer](
	[Volunteerld] [int] NOT NULL,
	[FirstName] [varchar](80) NULL,
	[LastName] [varchar](80) NULL,
	[CountryCode] [char](3) NOT NULL,
	[Gender] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Volunteer] PRIMARY KEY CLUSTERED 
(
	[Volunteerld] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_EventType] FOREIGN KEY([EventTypeld])
REFERENCES [dbo].[EventType] ([EventTypeld])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_EventType]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Marathon] FOREIGN KEY([Marathonld])
REFERENCES [dbo].[Marathon] ([Marathonld])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Marathon]
GO
ALTER TABLE [dbo].[Ragistration]  WITH CHECK ADD  CONSTRAINT [FK_Ragistration_Charity] FOREIGN KEY([CharityID])
REFERENCES [dbo].[Charity] ([Charityld])
GO
ALTER TABLE [dbo].[Ragistration] CHECK CONSTRAINT [FK_Ragistration_Charity]
GO
ALTER TABLE [dbo].[Ragistration]  WITH CHECK ADD  CONSTRAINT [FK_Ragistration_RaceKitOption] FOREIGN KEY([RaceKitOptionID])
REFERENCES [dbo].[RaceKitOption] ([RaceKitOptionld])
GO
ALTER TABLE [dbo].[Ragistration] CHECK CONSTRAINT [FK_Ragistration_RaceKitOption]
GO
ALTER TABLE [dbo].[Ragistration]  WITH CHECK ADD  CONSTRAINT [FK_Ragistration_RegistrationStatus] FOREIGN KEY([RegistrationStatusID])
REFERENCES [dbo].[RegistrationStatus] ([RegistrationStatusld])
GO
ALTER TABLE [dbo].[Ragistration] CHECK CONSTRAINT [FK_Ragistration_RegistrationStatus]
GO
ALTER TABLE [dbo].[Ragistration]  WITH CHECK ADD  CONSTRAINT [FK_Ragistration_Runner] FOREIGN KEY([Runnerld])
REFERENCES [dbo].[Runner] ([Runnerld])
GO
ALTER TABLE [dbo].[Ragistration] CHECK CONSTRAINT [FK_Ragistration_Runner]
GO
ALTER TABLE [dbo].[Registration_Event]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Event_Ragistration] FOREIGN KEY([Registrationld])
REFERENCES [dbo].[Ragistration] ([Registrationld])
GO
ALTER TABLE [dbo].[Registration_Event] CHECK CONSTRAINT [FK_Registration_Event_Ragistration]
GO
ALTER TABLE [dbo].[Runner]  WITH CHECK ADD  CONSTRAINT [FK_Runner_User] FOREIGN KEY([Email])
REFERENCES [dbo].[User] ([Email])
GO
ALTER TABLE [dbo].[Runner] CHECK CONSTRAINT [FK_Runner_User]
GO
ALTER TABLE [dbo].[Sponsorship]  WITH CHECK ADD  CONSTRAINT [FK_Sponsorship_Ragistration] FOREIGN KEY([RegistrationID])
REFERENCES [dbo].[Ragistration] ([Registrationld])
GO
ALTER TABLE [dbo].[Sponsorship] CHECK CONSTRAINT [FK_Sponsorship_Ragistration]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Gender] FOREIGN KEY([Gender])
REFERENCES [dbo].[Gender] ([Gender])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Gender]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Position] FOREIGN KEY([Postionld])
REFERENCES [dbo].[Position] ([Positionld])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Position]
GO
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD  CONSTRAINT [FK_Timesheet_Staff] FOREIGN KEY([Staffld])
REFERENCES [dbo].[Staff] ([Staffld])
GO
ALTER TABLE [dbo].[Timesheet] CHECK CONSTRAINT [FK_Timesheet_Staff]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([Roleld])
REFERENCES [dbo].[Role] ([Roleld])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [Марафон] SET  READ_WRITE 
GO
