USE [EQuIS]
GO

/****** Object:  Table [dbo].[dt_hai_location_details]    Script Date: 4/6/2017 11:14:21 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

if object_id('FK__dt_task_perm_dt_task') is not null alter table dt_hai_task_permissions Drop CONSTRAINT FK__dt_task_perm_dt_task
if object_id('FK__dt_task_perm_rt_hai_permissions') is not null alter table dt_hai_task_permissions Drop CONSTRAINT FK__dt_task_perm_rt_hai_permissions

if object_id('dbo.dt_hai_task_permissions') is not null Drop table dbo.dt_hai_task_permissions

CREATE TABLE [dbo].[dt_hai_task_permissions](
	[facility_id] [int] NOT NULL,
	[task_code] [varchar](40) NOT NULL,
	[permission_type_code] [int] Not Null,
	[euid] [int] NULL,
 CONSTRAINT [PK__task_permission] PRIMARY KEY CLUSTERED 
(
	[facility_id] ASC,
	[task_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[dt_hai_task_permissions]  WITH NOCHECK ADD  CONSTRAINT [FK__dt_task_perm_dt_task] FOREIGN KEY([facility_id], [task_code])
REFERENCES [dbo].[dt_task] ([facility_id], [task_code])
GO

ALTER TABLE [dbo].[dt_hai_task_permissions]  WITH NOCHECK ADD  CONSTRAINT [FK__dt_task_perm_rt_hai_permissions] FOREIGN KEY([permission_type_code])
REFERENCES [dbo].[rt_hai_permissions] ([permission_type_code])
GO



