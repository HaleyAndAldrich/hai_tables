USE [EQuIS]
GO

/****** Object:  Table [HAI].[dt_equis_improvement_requests]    Script Date: 4/6/2017 4:02:13 PM ******/
DROP TABLE [HAI].[dt_equis_improvement_requests]
GO

/****** Object:  Table [HAI].[dt_equis_improvement_requests]    Script Date: 4/6/2017 4:02:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [HAI].[dt_equis_improvement_requests](
	[request_name] [varchar](40) NOT NULL,
	[task_desc] [varchar](255) NULL,
	[entry_date] [smalldatetime] NOT NULL,
	[requested_by] [varchar](100) NOT NULL,
	[business_problem] [varchar](255) NULL,
	[Status] [varchar](100) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


