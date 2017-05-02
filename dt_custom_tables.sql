USE [EQuIS_Reporting]
GO

/****** Object:  Table [dbo].[dt_hai_location_details]    Script Date: 4/6/2017 11:14:21 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO


if object_id('dbo.tbl_custom_tables') is not null Drop table dbo.tbl_custom_tables
CREATE TABLE [dbo].[tbl_custom_tables](
	[facility_id] [int] NOT NULL,
	[table_name] [varchar](100)   not NULL,
	[unit_code] [varchar] (10) Null,
	[matrix_code] [varchar] (10) Null,
	[coord_zone] varchar (20) Null,
	[SQL]	varchar (max),

 CONSTRAINT [PK__custom_table] PRIMARY KEY CLUSTERED 
(
	[facility_id] ASC,
	[table_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO





