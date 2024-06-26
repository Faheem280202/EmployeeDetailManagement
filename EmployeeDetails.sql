USE [EmployeeDetails]
GO
ALTER TABLE [dbo].[tbl_EmployeeDetails] DROP CONSTRAINT [DF__tbl_Emplo__Creat__36B12243]
GO
ALTER TABLE [dbo].[tbl_EmployeeDetails] DROP CONSTRAINT [DF__tbl_Emplo__IsAct__35BCFE0A]
GO
/****** Object:  Table [dbo].[tbl_EmployeeDetails]    Script Date: 18-06-2024 12.34.44 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_EmployeeDetails]') AND type in (N'U'))
DROP TABLE [dbo].[tbl_EmployeeDetails]
GO
/****** Object:  Table [dbo].[tbl_EmployeeDetails]    Script Date: 18-06-2024 12.34.44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_EmployeeDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [varchar](10) NULL,
	[Name] [varchar](100) NULL,
	[Description] [varchar](500) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_EmployeeDetails] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tbl_EmployeeDetails] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
