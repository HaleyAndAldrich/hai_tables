USE [EQuIS]
GO

ALTER TABLE [dbo].[dt_hai_stormwater_sample_plan] DROP CONSTRAINT [FK__dt_stormwater_sample_plan_rt_unit]
GO

ALTER TABLE [dbo].[dt_hai_stormwater_sample_plan] DROP CONSTRAINT [FK__dt_stormwater_sample_plan_rt_fraction]
GO

ALTER TABLE [dbo].[dt_hai_stormwater_sample_plan] DROP CONSTRAINT [FK__dt_stormwater_sample_plan_dt_location]
GO

ALTER TABLE [dbo].[dt_hai_stormwater_sample_plan] DROP CONSTRAINT [FK__dt_stormwater_sample_plan_cas]
GO

/****** Object:  Table [dbo].[dt_hai_stormwater_sample_plan]    Script Date: 4/6/2017 3:58:51 PM ******/
DROP TABLE [dbo].[dt_hai_stormwater_sample_plan]
GO

/****** Object:  Table [dbo].[dt_hai_stormwater_sample_plan]    Script Date: 4/6/2017 3:58:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[dt_hai_stormwater_sample_plan](
	[facility_id] [int] NOT NULL,
	[method_analyte_group_code] [varchar](40) NOT NULL,
	[sys_loc_code] [varchar](20) NOT NULL,
	[sample_type] [varchar](20) NOT NULL,
	[fraction] [varchar](10) NOT NULL,
	[report_order] [int] NULL,
	[cas_rn] [varchar](15) NOT NULL,
	[chemical_name] [varchar](255) NULL,
	[limit] [varchar](20) NULL,
	[limit_unit] [varchar](15) NULL,
	[dmr_sample_freq] [varchar](2000) NULL,
	[euid] [int] NULL,
 CONSTRAINT [PK_dt_stormwater_sample_plan] PRIMARY KEY CLUSTERED 
(
	[facility_id] ASC,
	[method_analyte_group_code] ASC,
	[sys_loc_code] ASC,
	[sample_type] ASC,
	[cas_rn] ASC,
	[fraction] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[dt_hai_stormwater_sample_plan]  WITH NOCHECK ADD  CONSTRAINT [FK__dt_stormwater_sample_plan_cas] FOREIGN KEY([cas_rn])
REFERENCES [dbo].[rt_analyte] ([cas_rn])
GO

ALTER TABLE [dbo].[dt_hai_stormwater_sample_plan] CHECK CONSTRAINT [FK__dt_stormwater_sample_plan_cas]
GO

ALTER TABLE [dbo].[dt_hai_stormwater_sample_plan]  WITH NOCHECK ADD  CONSTRAINT [FK__dt_stormwater_sample_plan_dt_location] FOREIGN KEY([facility_id], [sys_loc_code])
REFERENCES [dbo].[dt_location] ([facility_id], [sys_loc_code])
GO

ALTER TABLE [dbo].[dt_hai_stormwater_sample_plan] CHECK CONSTRAINT [FK__dt_stormwater_sample_plan_dt_location]
GO

ALTER TABLE [dbo].[dt_hai_stormwater_sample_plan]  WITH NOCHECK ADD  CONSTRAINT [FK__dt_stormwater_sample_plan_rt_fraction] FOREIGN KEY([fraction])
REFERENCES [dbo].[rt_fraction] ([fraction])
GO

ALTER TABLE [dbo].[dt_hai_stormwater_sample_plan] CHECK CONSTRAINT [FK__dt_stormwater_sample_plan_rt_fraction]
GO

ALTER TABLE [dbo].[dt_hai_stormwater_sample_plan]  WITH NOCHECK ADD  CONSTRAINT [FK__dt_stormwater_sample_plan_rt_unit] FOREIGN KEY([limit_unit])
REFERENCES [dbo].[rt_unit] ([unit_code])
GO

ALTER TABLE [dbo].[dt_hai_stormwater_sample_plan] CHECK CONSTRAINT [FK__dt_stormwater_sample_plan_rt_unit]
GO


