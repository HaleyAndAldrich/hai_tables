USE [EQuIS]
GO

ALTER TABLE [rpt].[rt_TEF] DROP CONSTRAINT [FK__rt_TEF_unit_code]
GO

ALTER TABLE [rpt].[rt_TEF] DROP CONSTRAINT [FK__rt_TEF_param_group]
GO

ALTER TABLE [rpt].[rt_TEF] DROP CONSTRAINT [FK__rt_TEF_casrn]
GO

/****** Object:  Table [rpt].[rt_TEF]    Script Date: 4/6/2017 4:00:55 PM ******/
DROP TABLE [rpt].[rt_TEF]
GO

/****** Object:  Table [rpt].[rt_TEF]    Script Date: 4/6/2017 4:00:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [rpt].[rt_TEF](
	[TEF_code] [varchar](200) NOT NULL,
	[Chemical_name] [varchar](255) NULL,
	[cas_rn] [varchar](15) NOT NULL,
	[Target_type] [varchar](50) NULL,
	[TEF] [float] NULL,
	[Group] [varchar](50) NULL,
	[Source] [varchar](255) NULL,
	[Param_group] [varchar](40) NULL,
	[Unit_code] [varchar](15) NULL,
	[remark] [varchar](255) NULL,
	[euid] [int] NULL,
 CONSTRAINT [PK__rt_TEF] PRIMARY KEY CLUSTERED 
(
	[TEF_code] ASC,
	[cas_rn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [rpt].[rt_TEF]  WITH CHECK ADD  CONSTRAINT [FK__rt_TEF_casrn] FOREIGN KEY([cas_rn])
REFERENCES [dbo].[rt_analyte] ([cas_rn])
GO

ALTER TABLE [rpt].[rt_TEF] CHECK CONSTRAINT [FK__rt_TEF_casrn]
GO

ALTER TABLE [rpt].[rt_TEF]  WITH CHECK ADD  CONSTRAINT [FK__rt_TEF_param_group] FOREIGN KEY([Param_group])
REFERENCES [dbo].[rt_mth_anl_group] ([method_analyte_group_code])
GO

ALTER TABLE [rpt].[rt_TEF] CHECK CONSTRAINT [FK__rt_TEF_param_group]
GO

ALTER TABLE [rpt].[rt_TEF]  WITH CHECK ADD  CONSTRAINT [FK__rt_TEF_unit_code] FOREIGN KEY([Unit_code])
REFERENCES [dbo].[rt_unit] ([unit_code])
GO

ALTER TABLE [rpt].[rt_TEF] CHECK CONSTRAINT [FK__rt_TEF_unit_code]
GO


