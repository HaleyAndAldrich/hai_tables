USE [EQuIS]
GO

/****** Object:  Table [dbo].[rt_hai_APN]    Script Date: 4/6/2017 3:50:01 PM ******/
DROP TABLE [dbo].[rt_hai_APN]
GO

/****** Object:  Table [dbo].[rt_hai_APN]    Script Date: 4/6/2017 3:50:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[rt_hai_APN](
	[APN] [varchar](40) NOT NULL,
	[desc] [varchar](255) NULL,
	[permission_type_code] [int] NULL,
	[permission_type_desc] [varchar](200) NULL,
 CONSTRAINT [PK__rt_APN] PRIMARY KEY CLUSTERED 
(
	[APN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


