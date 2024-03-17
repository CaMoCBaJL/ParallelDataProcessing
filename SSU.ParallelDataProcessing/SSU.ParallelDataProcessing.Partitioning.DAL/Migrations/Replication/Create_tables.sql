USE [SSU.ParallelProcessing.Master]
GO

/****** Object:  Table [dbo].[User_Master]    Script Date: 16.03.2024 22:05:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL IDENTITY(1,1),
	[Login] [nvarchar](50) NULL,
	[Email] [nvarchar](255) NULL,
	[FullName] [nvarchar](50) NULL,
	[Age] [tinyint] NULL,
 CONSTRAINT [PK_User_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [SSU.ParallelProcessing.Slave1]
GO

/****** Object:  Table [dbo].[User_Master]    Script Date: 16.03.2024 22:05:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL IDENTITY(1,1),
	[Login] [nvarchar](50) NULL,
	[Email] [nvarchar](255) NULL,
	[FullName] [nvarchar](50) NULL,
	[Age] [tinyint] NULL,
 CONSTRAINT [PK_User_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [SSU.ParallelProcessing.Slave2]
GO

/****** Object:  Table [dbo].[User_Master]    Script Date: 16.03.2024 22:05:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL IDENTITY(1,1),
	[Login] [nvarchar](50) NULL,
	[Email] [nvarchar](255) NULL,
	[FullName] [nvarchar](50) NULL,
	[Age] [tinyint] NULL,
 CONSTRAINT [PK_User_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [SSU.ParallelProcessing.Slave3]
GO

/****** Object:  Table [dbo].[User_Master]    Script Date: 16.03.2024 22:05:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL IDENTITY(1,1),
	[Login] [nvarchar](50) NULL,
	[Email] [nvarchar](255) NULL,
	[FullName] [nvarchar](50) NULL,
	[Age] [tinyint] NULL,
 CONSTRAINT [PK_User_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [SSU.ParallelProcessing.Slave4]
GO

/****** Object:  Table [dbo].[User_Master]    Script Date: 16.03.2024 22:05:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL IDENTITY(1,1),
	[Login] [nvarchar](50) NULL,
	[Email] [nvarchar](255) NULL,
	[FullName] [nvarchar](50) NULL,
	[Age] [tinyint] NULL,
 CONSTRAINT [PK_User_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO