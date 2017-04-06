USE [EQuIS]
GO

/****** Object:  Table [dbo].[dt_hai_location_details]    Script Date: 4/6/2017 3:19:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[dt_hai_location_details](
	[facility_id] [int] NOT NULL,
	[sys_loc_code] [varchar](20) NOT NULL,
	[APN] [varchar](40) NULL,
	[URL] [varchar](2000) NULL,
	[description] [varchar](255) NULL,
	[address] [varchar](255) NULL,
	[owner] [varchar](255) NULL,
	[remark] [varchar](2000) NULL,
	[euid] [int] NULL,
 CONSTRAINT [PK__loc_details] PRIMARY KEY CLUSTERED 
(
	[facility_id] ASC,
	[sys_loc_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[dt_hai_location_details]  WITH NOCHECK ADD  CONSTRAINT [FK__dt_loc_details_dt_location] FOREIGN KEY([facility_id], [sys_loc_code])
REFERENCES [dbo].[dt_location] ([facility_id], [sys_loc_code])
GO

ALTER TABLE [dbo].[dt_hai_location_details] CHECK CONSTRAINT [FK__dt_loc_details_dt_location]
GO

ALTER TABLE [dbo].[dt_hai_location_details]  WITH NOCHECK ADD  CONSTRAINT [FK__dt_loc_details_rt_hai_APN] FOREIGN KEY([APN])
REFERENCES [dbo].[rt_hai_APN] ([APN])
GO

ALTER TABLE [dbo].[dt_hai_location_details] CHECK CONSTRAINT [FK__dt_loc_details_rt_hai_APN]
GO


