USE [SGM]
GO
/****** Object:  Table [dbo].[sgmAlertStaff]    Script Date: 5/1/2013 2:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sgmAlertStaff](
	[aID] [int] IDENTITY(1,1) NOT NULL,
	[aName] [varchar](50) NULL,
	[aEmail] [varchar](50) NULL,
	[aEnabled] [int] NULL,
 CONSTRAINT [PK_sgmAlertStaff] PRIMARY KEY CLUSTERED 
(
	[aID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sgmMonitor]    Script Date: 5/1/2013 2:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sgmMonitor](
	[sID] [int] IDENTITY(1,1) NOT NULL,
	[sObject] [nvarchar](255) NULL,
	[sType] [nvarchar](255) NULL,
	[sInclude] [int] NULL,
	[sRecursive] [int] NULL,
 CONSTRAINT [PK_sgmMonitor] PRIMARY KEY CLUSTERED 
(
	[sID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sgmSettings]    Script Date: 5/1/2013 2:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sgmSettings](
	[sID] [int] IDENTITY(1,1) NOT NULL,
	[sAttribute] [nvarchar](255) NOT NULL,
	[sValue] [nvarchar](255) NULL,
 CONSTRAINT [PK_sgmSettings] PRIMARY KEY CLUSTERED 
(
	[sID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sgmTracking]    Script Date: 5/1/2013 2:21:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sgmTracking](
	[tID] [int] IDENTITY(1,1) NOT NULL,
	[tGroupname] [text] NULL,
	[tMembers] [text] NULL,
	[tNewMembers] [text] NULL,
	[tRemMembers] [text] NULL,
	[tTimestamp] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
