USE [NursingApplication_Phase1]
GO
/****** Object:  Table [dbo].[tblAdminMaster]    Script Date: 07-01-2022 06:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdminMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](100) NOT NULL,
	[LoginName] [varchar](100) NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[Created] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHospitalMasters]    Script Date: 07-01-2022 06:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHospitalMasters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HospitalId] [int] NOT NULL,
	[HospitalName] [varchar](max) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[CreatedByUser] [varchar](100) NULL,
	[LastModifiedBy] [varchar](100) NULL,
	[Region] [varchar](100) NULL,
	[EntryLastDate] [int] NULL,
	[VOC_CnCNursingStaff_Target] [int] NULL,
	[VOC_HowPainManaged_Target] [int] NULL,
	[VOC_CallBellResponse_Target] [int] NULL,
	[AniceID] [int] NULL,
	[WOW_ComplianceBilling_Target] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMaster]    Script Date: 07-01-2022 06:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [varchar](100) NOT NULL,
	[Value] [varchar](max) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterAllTables]    Script Date: 07-01-2022 06:15:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterAllTables](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FormCode] [varchar](100) NOT NULL,
	[FormName] [varchar](100) NOT NULL,
	[FormDisplayName] [varchar](100) NOT NULL,
	[TableName] [varchar](100) NOT NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[LastModifiedBy] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblAdminMaster] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblHospitalMasters] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblHospitalMasters] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tblHospitalMasters] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[tblHospitalMasters] ADD  DEFAULT ((15)) FOR [EntryLastDate]
GO
ALTER TABLE [dbo].[tblMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblMaster] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblMaster] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblMasterAllTables] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblMasterAllTables] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblMasterAllTables] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
