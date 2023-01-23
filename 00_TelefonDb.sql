use master
go

Create Database TelefonDB
go

USE [TelefonDB]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 23.01.2023 09:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 23.01.2023 09:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Middlename] [varchar](50) NULL,
	[Surname] [varchar](50) NOT NULL,
	[JobId] [int] NOT NULL,
	[SportTeamId] [int] NULL,
 CONSTRAINT [PK__Person__3214EC075CE74618] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SportTeam]    Script Date: 23.01.2023 09:29:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SportTeam](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Job] ON 
GO
INSERT [dbo].[Job] ([Id], [Name]) VALUES (1, N'IT')
GO
INSERT [dbo].[Job] ([Id], [Name]) VALUES (2, N'Dev')
GO
INSERT [dbo].[Job] ([Id], [Name]) VALUES (3, N'DBA')
GO
INSERT [dbo].[Job] ([Id], [Name]) VALUES (4, N'SA')
GO
INSERT [dbo].[Job] ([Id], [Name]) VALUES (5, N'DevOps')
GO
INSERT [dbo].[Job] ([Id], [Name]) VALUES (8, N'aaa')
GO
INSERT [dbo].[Job] ([Id], [Name]) VALUES (9, N'aaa')
GO
INSERT [dbo].[Job] ([Id], [Name]) VALUES (10, N'aaa')
GO
SET IDENTITY_INSERT [dbo].[Job] OFF
GO
SET IDENTITY_INSERT [dbo].[Person] ON 
GO
INSERT [dbo].[Person] ([Id], [Name], [Middlename], [Surname], [JobId], [SportTeamId]) VALUES (1, N'aaa', NULL, N'aaa', 8, NULL)
GO
INSERT [dbo].[Person] ([Id], [Name], [Middlename], [Surname], [JobId], [SportTeamId]) VALUES (2, N'aaa', NULL, N'aaa', 9, NULL)
GO
INSERT [dbo].[Person] ([Id], [Name], [Middlename], [Surname], [JobId], [SportTeamId]) VALUES (3, N'aaa', NULL, N'aaa', 10, NULL)
GO
SET IDENTITY_INSERT [dbo].[Person] OFF
GO
SET IDENTITY_INSERT [dbo].[SportTeam] ON 
GO
INSERT [dbo].[SportTeam] ([Id], [Name]) VALUES (1, N'FB')
GO
INSERT [dbo].[SportTeam] ([Id], [Name]) VALUES (2, N'GS')
GO
INSERT [dbo].[SportTeam] ([Id], [Name]) VALUES (3, N'BJK')
GO
INSERT [dbo].[SportTeam] ([Id], [Name]) VALUES (4, N'BS')
GO
INSERT [dbo].[SportTeam] ([Id], [Name]) VALUES (5, N'TS')
GO
SET IDENTITY_INSERT [dbo].[SportTeam] OFF
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_Job] FOREIGN KEY([JobId])
REFERENCES [dbo].[Job] ([Id])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_Job]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_SportTeam] FOREIGN KEY([SportTeamId])
REFERENCES [dbo].[SportTeam] ([Id])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_SportTeam]
GO
