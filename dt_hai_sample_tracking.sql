USE [EQuIS]
GO

ALTER TABLE [dbo].[dt_hai_sample_tracking] DROP CONSTRAINT [ck_sample_status]
GO

ALTER TABLE [dbo].[dt_hai_sample_tracking] DROP CONSTRAINT [FK_dt_sample_dt_hai_sample_tracking]
GO

/****** Object:  Table [dbo].[dt_hai_sample_tracking]    Script Date: 4/6/2017 3:58:19 PM ******/
DROP TABLE [dbo].[dt_hai_sample_tracking]
GO

/****** Object:  Table [dbo].[dt_hai_sample_tracking]    Script Date: 4/6/2017 3:58:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[dt_hai_sample_tracking](
	[facility_id] [int] NOT NULL,
	[sample_id] [int] NOT NULL,
	[sys_sample_code] [varchar](40) NULL,
	[sdg_name] [varchar](20) NOT NULL,
	[project_number] [varchar](10) NULL,
	[sample_status] [varchar](20) NULL,
	[sampling_reason] [varchar](max) NULL,
	[chain_of_custody] [varchar](40) NULL,
	[field_notes_received] [date] NULL,
	[comments] [varchar](max) NULL,
	[lab_TAT] [varchar](10) NULL,
	[sample_receipt_date] [date] NULL,
	[FSK_load_date] [date] NULL,
	[FSK_load_initials] [varchar](100) NULL,
	[lab_report_received] [date] NULL,
	[lab_report_revisions] [varchar](max) NULL,
	[EDD_load_date] [date] NULL,
	[EDD_load_initials] [varchar](100) NULL,
	[EDD_revisions] [varchar](max) NULL,
	[calculations] [date] NULL,
	[val_EDD_generate_date] [date] NULL,
	[val_DUSR_proof] [varchar](5) NULL,
	[val_EDD_load_date] [date] NULL,
	[val_EDD_load_initials] [varchar](100) NULL,
	[result_proof_date] [date] NULL,
	[result_proof_initials] [varchar](100) NULL,
	[val_proof_date] [date] NULL,
	[val_proof_initials] [varchar](100) NULL,
	[filepath] [varchar](max) NULL,
 CONSTRAINT [PK_dt_hai_Sample_Tracking] PRIMARY KEY CLUSTERED 
(
	[facility_id] ASC,
	[sample_id] ASC,
	[sdg_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[dt_hai_sample_tracking]  WITH CHECK ADD  CONSTRAINT [FK_dt_sample_dt_hai_sample_tracking] FOREIGN KEY([facility_id], [sample_id])
REFERENCES [dbo].[dt_sample] ([facility_id], [sample_id])
GO

ALTER TABLE [dbo].[dt_hai_sample_tracking] CHECK CONSTRAINT [FK_dt_sample_dt_hai_sample_tracking]
GO

ALTER TABLE [dbo].[dt_hai_sample_tracking]  WITH CHECK ADD  CONSTRAINT [ck_sample_status] CHECK  (([sample_status]='Not Sampled' OR [sample_status]='Requested' OR [sample_status]='On Hold' OR [sample_status]='Received'))
GO

ALTER TABLE [dbo].[dt_hai_sample_tracking] CHECK CONSTRAINT [ck_sample_status]
GO


