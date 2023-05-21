USE [NursingApplication_Phase1]
GO
/****** Object:  Table [dbo].[tblAcademicCouncil]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAcademicCouncil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[Members] [varchar](max) NULL,
	[TopicsAssigned] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAcademicCouncil_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAcademicCouncil_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAchievements]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAchievements](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[Details] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAchievements_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAchievements_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAdminMaster]    Script Date: 29-12-2021 10:26:50 PM ******/
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
/****** Object:  Table [dbo].[tblANICE]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblANICE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[Score] [varchar](100) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblANICE_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblANICE_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAppreciation]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAppreciation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[Details] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAppreciation_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAppreciation_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBestPractices]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBestPractices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[BestPractices] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBestPractices_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBestPractices_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCFT]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCFT](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[Members] [varchar](max) NULL,
	[Details] [varchar](max) NULL,
	[Learnings] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCFT_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCFT_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChallenges]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChallenges](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[Challenges] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChallenges_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChallenges_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCOE]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCOE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[NoOfNursesAttended] [varchar](max) NULL,
	[ConsultantsInvolved] [varchar](max) NULL,
	[NatureOfActivityDone] [varchar](max) NULL,
	[ConsultantFeedback] [varchar](max) NULL,
	[ActionTaken] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[ReportName] [varchar](max) NULL,
	[AdditionalMentions] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCOE_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCOE_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblConsultantConnect]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConsultantConnect](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[SelectionType] [varchar](100) NULL,
	[ConsultantsInvolved] [varchar](max) NULL,
	[ConsultantComplaints] [varchar](max) NULL,
	[PostComplaintAction] [varchar](max) NULL,
	[ConsultantFeedback] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[AdditionalMentions] [varchar](max) NULL,
	[GlimpseLink] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblConsultantConnect_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConsultantConnect_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDigitization]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDigitization](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[TechnologyAdopted] [varchar](max) NULL,
	[PCT] [varchar](max) NULL,
	[Impact] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDigitization_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDigitization_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEnglishCommunication]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEnglishCommunication](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[NoOfNurseTrained] [varchar](100) NULL,
	[Initiatives] [varchar](max) NULL,
	[Outcome] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEnglishCommunication_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEnglishCommunication_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblErrorLog]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblErrorLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Module] [varchar](200) NOT NULL,
	[Method] [varchar](100) NOT NULL,
	[ErrorMessage] [varchar](max) NOT NULL,
	[StackTrace] [varchar](max) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHospitalMasters]    Script Date: 29-12-2021 10:26:50 PM ******/
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
/****** Object:  Table [dbo].[tblManPower]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblManPower](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[SanctionedManpower] [varchar](max) NULL,
	[ExistingManpower] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblManPower_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblManPower_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMaster]    Script Date: 29-12-2021 10:26:50 PM ******/
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
/****** Object:  Table [dbo].[tblMasterAllTables]    Script Date: 29-12-2021 10:26:50 PM ******/
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
/****** Object:  Table [dbo].[tblNHNE]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNHNE](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[DOC] [varchar](max) NULL,
	[PCT] [varchar](max) NULL,
	[NoOfIBI] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportName] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNHNE_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNHNE_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProcessImprovement]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProcessImprovement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[CriticalLabValue] [varchar](100) NULL,
	[BloodTransfusion] [varchar](100) NULL,
	[POCT] [varchar](100) NULL,
	[ClinicalHandOff] [varchar](max) NULL,
	[ComplianceMedicationErrors] [varchar](max) NULL,
	[ComplianceBloodSugar] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[ReasonsNotAchieve] [varchar](max) NULL,
	[ReportName] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProcessImprovement_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProcessImprovement_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProcessStandardization]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProcessStandardization](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[PCI] [varchar](max) NULL,
	[Impact] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportName] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProcessStandardization_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProcessStandardization_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblQualityImprovement]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQualityImprovement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[DetailsOfCustodians] [varchar](max) NULL,
	[PCT] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportName] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblQualityImprovement_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQualityImprovement_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReinforcementCommunication]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReinforcementCommunication](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[NoOfNurseTrained] [varchar](100) NULL,
	[Theme] [varchar](max) NULL,
	[Outcome] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReinforcementCommunication_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReinforcementCommunication_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport1]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[ReportName] [varchar](max) NULL,
	[Details] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[Field1] [nvarchar](max) NULL,
	[Field2] [nvarchar](max) NULL,
	[Field3] [nvarchar](max) NULL,
	[Field4] [nvarchar](max) NULL,
	[Field5] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport1_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport1_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport10]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport10](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[ReportName] [varchar](max) NULL,
	[Details] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[Field1] [nvarchar](max) NULL,
	[Field2] [nvarchar](max) NULL,
	[Field3] [nvarchar](max) NULL,
	[Field4] [nvarchar](max) NULL,
	[Field5] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport10_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport10_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport2]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport2](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[ReportName] [varchar](max) NULL,
	[Details] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[Field1] [nvarchar](max) NULL,
	[Field2] [nvarchar](max) NULL,
	[Field3] [nvarchar](max) NULL,
	[Field4] [nvarchar](max) NULL,
	[Field5] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport2_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport2_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport3]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport3](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[ReportName] [varchar](max) NULL,
	[Details] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[Field1] [nvarchar](max) NULL,
	[Field2] [nvarchar](max) NULL,
	[Field3] [nvarchar](max) NULL,
	[Field4] [nvarchar](max) NULL,
	[Field5] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport3_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport3_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport4]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport4](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[ReportName] [varchar](max) NULL,
	[Details] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[Field1] [nvarchar](max) NULL,
	[Field2] [nvarchar](max) NULL,
	[Field3] [nvarchar](max) NULL,
	[Field4] [nvarchar](max) NULL,
	[Field5] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport4_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport4_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport5]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport5](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[ReportName] [varchar](max) NULL,
	[Details] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[Field1] [nvarchar](max) NULL,
	[Field2] [nvarchar](max) NULL,
	[Field3] [nvarchar](max) NULL,
	[Field4] [nvarchar](max) NULL,
	[Field5] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport5_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport5_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport6]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport6](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[ReportName] [varchar](max) NULL,
	[Details] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[Field1] [nvarchar](max) NULL,
	[Field2] [nvarchar](max) NULL,
	[Field3] [nvarchar](max) NULL,
	[Field4] [nvarchar](max) NULL,
	[Field5] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport6_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport6_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport7]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport7](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[ReportName] [varchar](max) NULL,
	[Details] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[Field1] [nvarchar](max) NULL,
	[Field2] [nvarchar](max) NULL,
	[Field3] [nvarchar](max) NULL,
	[Field4] [nvarchar](max) NULL,
	[Field5] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport7_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport7_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport8]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport8](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[ReportName] [varchar](max) NULL,
	[Details] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[Field1] [nvarchar](max) NULL,
	[Field2] [nvarchar](max) NULL,
	[Field3] [nvarchar](max) NULL,
	[Field4] [nvarchar](max) NULL,
	[Field5] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport8_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport8_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport9]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport9](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[ReportName] [varchar](max) NULL,
	[Details] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[Field1] [nvarchar](max) NULL,
	[Field2] [nvarchar](max) NULL,
	[Field3] [nvarchar](max) NULL,
	[Field4] [nvarchar](max) NULL,
	[Field5] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport9_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport9_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRP]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRP](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[Members] [varchar](max) NULL,
	[TopicsAssigned] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRP_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRP_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblServiceExcellence]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblServiceExcellence](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[NoOfPatients] [varchar](100) NULL,
	[PatientFamilyFeedback] [varchar](max) NULL,
	[ConsultantFeedback] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[ReportName] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblServiceExcellence_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblServiceExcellence_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSessionDetails]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSessionDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](100) NULL,
	[UserName] [varchar](500) NULL,
	[HospitalsMapped] [varchar](500) NULL,
	[SessionStartTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSOP]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSOP](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[NoOfNursesTrained] [varchar](max) NULL,
	[NoOfNursesCompetencyChecked] [varchar](max) NULL,
	[NoOfNursesPassed] [varchar](max) NULL,
	[NoOfNursesRetrained] [varchar](max) NULL,
	[ConsultantFeedback] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[ReportName] [varchar](500) NULL,
	[ConsultantInvolved] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSOP_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSOP_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStaffEngagement]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStaffEngagement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[NumberOfNursesInvolved] [varchar](max) NULL,
	[PCA] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportName] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStaffEngagement_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStaffEngagement_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTopComplaints]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTopComplaints](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[OrderNumber] [int] NOT NULL,
	[NameOfComplaint] [varchar](max) NULL,
	[NumberOfComplaints] [varchar](100) NULL,
	[ActionTaken] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTopComplaints_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTopComplaints_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTopIncidents]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTopIncidents](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[OrderNumber] [int] NOT NULL,
	[NameOfIncident] [varchar](max) NULL,
	[NumberOfIncidents] [varchar](100) NULL,
	[ActionTaken] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTopIncidents_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTopIncidents_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTownHall]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTownHall](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[PointsOfDiscussion] [varchar](max) NULL,
	[NoOfAttendee] [varchar](max) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTownHall_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTownHall_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTrainingInitiatives]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTrainingInitiatives](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[TopicsCovered] [varchar](max) NULL,
	[PercentageCompliance] [varchar](100) NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTrainingInitiatives_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTrainingInitiatives_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVOC]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVOC](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[CnCNursingStaff_Target] [float] NULL,
	[HowPainManaged_Target] [float] NULL,
	[CallBellResponse_Target] [float] NULL,
	[CnCNursingStaff_Score] [float] NULL,
	[HowPainManaged_Score] [float] NULL,
	[CallBellResponse_Score] [float] NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVOC_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVOC_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblWOW]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblWOW](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hospital_Id] [int] NULL,
	[LightHouseHospitalId] [int] NULL,
	[MonthIndex] [int] NULL,
	[MonthName] [varchar](50) NULL,
	[Year] [int] NULL,
	[SC_MT_Expenditure] [float] NULL,
	[SC_TargetSaving] [float] NULL,
	[SC_Achievement] [float] NULL,
	[ComplianceBilling_Target] [float] NULL,
	[ComplianceBilling_Achievement] [float] NULL,
	[Remarks] [varchar](max) NULL,
	[FormStatus] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ReportDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblWOW_Attachments]    Script Date: 29-12-2021 10:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblWOW_Attachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Id] [int] NULL,
	[file_name] [varchar](500) NULL,
	[file_ext] [varchar](100) NULL,
	[file_contenttype] [varchar](100) NULL,
	[file_content] [nvarchar](max) NOT NULL,
	[Created] [datetime] NULL,
	[Modified] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
	[ModifiedBy] [varchar](100) NULL,
	[file_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblAcademicCouncil] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblAcademicCouncil] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblAcademicCouncil] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblAcademicCouncil_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblAcademicCouncil_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblAchievements] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblAchievements] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblAchievements] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblAchievements_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblAchievements_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblAdminMaster] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblANICE] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblANICE] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblANICE] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblANICE_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblANICE_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblAppreciation] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblAppreciation] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblAppreciation] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblAppreciation_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblAppreciation_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblBestPractices] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblBestPractices] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblBestPractices] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblBestPractices_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblBestPractices_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblCFT] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblCFT] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblCFT] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblCFT_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblCFT_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblChallenges] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblChallenges] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblChallenges] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblChallenges_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblChallenges_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblCOE] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblCOE] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblCOE] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblCOE_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblCOE_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblConsultantConnect] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblConsultantConnect] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblConsultantConnect] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblConsultantConnect_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblConsultantConnect_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblDigitization] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblDigitization] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblDigitization] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblDigitization_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblDigitization_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblEnglishCommunication] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblEnglishCommunication] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblEnglishCommunication] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblEnglishCommunication_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblEnglishCommunication_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblErrorLog] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tblHospitalMasters] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblHospitalMasters] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[tblHospitalMasters] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[tblHospitalMasters] ADD  DEFAULT ((15)) FOR [EntryLastDate]
GO
ALTER TABLE [dbo].[tblManPower] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblManPower] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblManPower] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblManPower_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblManPower_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
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
ALTER TABLE [dbo].[tblNHNE] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblNHNE] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblNHNE] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblNHNE_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblNHNE_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblProcessImprovement] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblProcessImprovement] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblProcessImprovement] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblProcessImprovement_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblProcessImprovement_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblProcessStandardization] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblProcessStandardization] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblProcessStandardization] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblProcessStandardization_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblProcessStandardization_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblQualityImprovement] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblQualityImprovement] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblQualityImprovement] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblQualityImprovement_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblQualityImprovement_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReinforcementCommunication] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblReinforcementCommunication] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReinforcementCommunication] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReinforcementCommunication_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReinforcementCommunication_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport1] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblReport1] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport1] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport1_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport1_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport10] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblReport10] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport10] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport10_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport10_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport2] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblReport2] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport2] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport2_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport2_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport3] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblReport3] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport3] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport3_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport3_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport4] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblReport4] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport4] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport4_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport4_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport5] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblReport5] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport5] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport5_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport5_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport6] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblReport6] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport6] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport6_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport6_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport7] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblReport7] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport7] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport7_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport7_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport8] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblReport8] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport8] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport8_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport8_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport9] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblReport9] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport9] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblReport9_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblReport9_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblServiceExcellence] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblServiceExcellence] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblServiceExcellence] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblServiceExcellence_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblServiceExcellence_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblSessionDetails] ADD  DEFAULT (getdate()) FOR [SessionStartTime]
GO
ALTER TABLE [dbo].[tblSOP] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblSOP] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblSOP] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblSOP_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblSOP_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblStaffEngagement] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblStaffEngagement] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblStaffEngagement] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblStaffEngagement_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblStaffEngagement_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblTopComplaints] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblTopComplaints] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblTopComplaints] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblTopComplaints_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblTopComplaints_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblTopIncidents] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblTopIncidents] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblTopIncidents] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblTopIncidents_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblTopIncidents_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblTownHall] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblTownHall] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblTownHall] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblTownHall_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblTownHall_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblTrainingInitiatives] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblTrainingInitiatives] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblTrainingInitiatives] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblTrainingInitiatives_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblTrainingInitiatives_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblVOC] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblVOC] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblVOC] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblVOC_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblVOC_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblWOW] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[tblWOW] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblWOW] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblWOW_Attachments] ADD  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[tblWOW_Attachments] ADD  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[tblAcademicCouncil]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblAcademicCouncil_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblAcademicCouncil] ([Id])
GO
ALTER TABLE [dbo].[tblAchievements]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblAchievements_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblAchievements] ([Id])
GO
ALTER TABLE [dbo].[tblANICE]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblANICE_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblANICE] ([Id])
GO
ALTER TABLE [dbo].[tblAppreciation]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblAppreciation_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblAppreciation] ([Id])
GO
ALTER TABLE [dbo].[tblBestPractices]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblBestPractices_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblBestPractices] ([Id])
GO
ALTER TABLE [dbo].[tblCFT]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblCFT_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblCFT] ([Id])
GO
ALTER TABLE [dbo].[tblChallenges]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblChallenges_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblChallenges] ([Id])
GO
ALTER TABLE [dbo].[tblCOE]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblCOE_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblCOE] ([Id])
GO
ALTER TABLE [dbo].[tblConsultantConnect]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblConsultantConnect_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblConsultantConnect] ([Id])
GO
ALTER TABLE [dbo].[tblDigitization]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblDigitization_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblDigitization] ([Id])
GO
ALTER TABLE [dbo].[tblEnglishCommunication]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblEnglishCommunication_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblEnglishCommunication] ([Id])
GO
ALTER TABLE [dbo].[tblManPower]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblManPower_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblManPower] ([Id])
GO
ALTER TABLE [dbo].[tblNHNE]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblNHNE_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblNHNE] ([Id])
GO
ALTER TABLE [dbo].[tblProcessImprovement]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblProcessImprovement_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblProcessImprovement] ([Id])
GO
ALTER TABLE [dbo].[tblProcessStandardization]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblProcessStandardization_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblProcessStandardization] ([Id])
GO
ALTER TABLE [dbo].[tblQualityImprovement]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblQualityImprovement_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblQualityImprovement] ([Id])
GO
ALTER TABLE [dbo].[tblReinforcementCommunication]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblReinforcementCommunication_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblReinforcementCommunication] ([Id])
GO
ALTER TABLE [dbo].[tblReport1]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblReport1_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblReport1] ([Id])
GO
ALTER TABLE [dbo].[tblReport10]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblReport10_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblReport10] ([Id])
GO
ALTER TABLE [dbo].[tblReport2]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblReport2_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblReport2] ([Id])
GO
ALTER TABLE [dbo].[tblReport3]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblReport3_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblReport3] ([Id])
GO
ALTER TABLE [dbo].[tblReport4]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblReport4_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblReport4] ([Id])
GO
ALTER TABLE [dbo].[tblReport5]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblReport5_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblReport5] ([Id])
GO
ALTER TABLE [dbo].[tblReport6]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblReport6_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblReport6] ([Id])
GO
ALTER TABLE [dbo].[tblReport7]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblReport7_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblReport7] ([Id])
GO
ALTER TABLE [dbo].[tblReport8]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblReport8_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblReport8] ([Id])
GO
ALTER TABLE [dbo].[tblReport9]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblReport9_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblReport9] ([Id])
GO
ALTER TABLE [dbo].[tblRP_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblRP] ([Id])
GO
ALTER TABLE [dbo].[tblServiceExcellence]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblServiceExcellence_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblServiceExcellence] ([Id])
GO
ALTER TABLE [dbo].[tblSOP]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblSOP_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblSOP] ([Id])
GO
ALTER TABLE [dbo].[tblStaffEngagement]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblStaffEngagement_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblStaffEngagement] ([Id])
GO
ALTER TABLE [dbo].[tblTopComplaints]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblTopComplaints_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblTopComplaints] ([Id])
GO
ALTER TABLE [dbo].[tblTopIncidents]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblTopIncidents_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblTopIncidents] ([Id])
GO
ALTER TABLE [dbo].[tblTownHall]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblTownHall_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblTownHall] ([Id])
GO
ALTER TABLE [dbo].[tblTrainingInitiatives]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblTrainingInitiatives_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblTrainingInitiatives] ([Id])
GO
ALTER TABLE [dbo].[tblVOC]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblVOC_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblVOC] ([Id])
GO
ALTER TABLE [dbo].[tblWOW]  WITH CHECK ADD FOREIGN KEY([Hospital_Id])
REFERENCES [dbo].[tblHospitalMasters] ([Id])
GO
ALTER TABLE [dbo].[tblWOW_Attachments]  WITH CHECK ADD FOREIGN KEY([Form_Id])
REFERENCES [dbo].[tblWOW] ([Id])
GO
/****** Object:  StoredProcedure [dbo].[usp_addAttachment]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_addAttachment]
(
@FormCode varchar(50),
@Form_Id varchar(50),
@file_name varchar(500),
@file_ext varchar(100),
@file_contenttype varchar(100),
@file_content nvarchar(max),
@file_size varchar(50),
@ModifiedBy varchar(100),
@Output varchar(100) OUTPUT
)
AS
BEGIN
	If @FormCode = 'TBL01'
	BEGIN
		INSERT INTO tblCOE_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL02'	
	BEGIN
		INSERT INTO tblSOP_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL03'	
	BEGIN
		INSERT INTO tblServiceExcellence_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL04'	
	BEGIN
		INSERT INTO tblConsultantConnect_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL05'	
	BEGIN
		INSERT INTO tblProcessImprovement_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL06'	
	BEGIN
		INSERT INTO tblTopIncidents_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL07'	
	BEGIN
		INSERT INTO tblTopComplaints_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL08'	
	BEGIN
		INSERT INTO tblWOW_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL09'	
	BEGIN
		INSERT INTO tblVOC_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL10'	
	BEGIN
		INSERT INTO tblANICE_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL11'	
	BEGIN
		INSERT INTO tblManPower_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL12'	
	BEGIN
		INSERT INTO tblTrainingInitiatives_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL13'	
	BEGIN
		INSERT INTO tblEnglishCommunication_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL14'	
	BEGIN
		INSERT INTO tblReinforcementCommunication_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL15'	
	BEGIN
		INSERT INTO tblTownHall_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL16'	
	BEGIN
		INSERT INTO tblCFT_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL17'	
	BEGIN
		INSERT INTO tblRP_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL18'	
	BEGIN
		INSERT INTO tblAcademicCouncil_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL19'	
	BEGIN
		INSERT INTO tblBestPractices_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL20'	
	BEGIN
		INSERT INTO tblAchievements_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL21'	
	BEGIN
		INSERT INTO tblAppreciation_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL22'	
	BEGIN
		INSERT INTO tblChallenges_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
	Else If @FormCode = 'TBL23'	
	BEGIN
		INSERT INTO tblProcessStandardization_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
Else If @FormCode = 'TBL24'	
	BEGIN
		INSERT INTO tblNHNE_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
Else If @FormCode = 'TBL25'	
	BEGIN
		INSERT INTO tblQualityImprovement_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
Else If @FormCode = 'TBL26'	
	BEGIN
		INSERT INTO tblDigitization_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
Else If @FormCode = 'TBL27'	
	BEGIN
		INSERT INTO tblStaffEngagement_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
Else If @FormCode = 'TBL28'	
	BEGIN
		INSERT INTO tblReport1_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
Else If @FormCode = 'TBL29'	
	BEGIN
		INSERT INTO tblReport2_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
Else If @FormCode = 'TBL30'	
	BEGIN
		INSERT INTO tblReport3_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
Else If @FormCode = 'TBL31'	
	BEGIN
		INSERT INTO tblReport4_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
Else If @FormCode = 'TBL32'	
	BEGIN
		INSERT INTO tblReport5_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
Else If @FormCode = 'TBL33'	
	BEGIN
		INSERT INTO tblReport6_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
Else If @FormCode = 'TBL34'	
	BEGIN
		INSERT INTO tblReport7_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
Else If @FormCode = 'TBL35'	
	BEGIN
		INSERT INTO tblReport8_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
Else If @FormCode = 'TBL36'	
	BEGIN
		INSERT INTO tblReport9_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END
Else If @FormCode = 'TBL37'	
	BEGIN
		INSERT INTO tblReport10_Attachments(Form_Id,file_name,file_ext,file_contenttype,file_content,file_size,CreatedBy,ModifiedBy) Values(@Form_Id,@file_name,@file_ext,@file_contenttype,@file_content,@file_size,@ModifiedBy,@ModifiedBy)
		SET @Output = 'Uploaded'
	END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_addremoveAdmin]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[usp_addremoveAdmin]
(
@Id varchar(100),
@UserId varchar(100),
@LoginName varchar(100),
@CreatedBy varchar(100),
@ActionType varchar(50),
@Result varchar(100) OUTPUT
)
AS
BEGIN
	If @ActionType = 'Insert'
	BEGIN
		Insert Into tblAdminMaster(LoginName,UserId,Created,CreatedBy) Values(@UserId,@UserId,GETDATE(),@CreatedBy)
		SET @Result = 'Inserted'
	END
	ELSE IF @ActionType = 'Delete'
	BEGIN
		DELETE FROM tblAdminMaster WHERE Id=@Id
		SET @Result = 'Deleted'
	END
	SELECT @Result
END
GO
/****** Object:  StoredProcedure [dbo].[usp_addSession]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[usp_addSession]
(
@UserId varchar(100),
@UserName varchar(100),
@HospitalMapped varchar(500),
@Output varchar(100) OUTPUT
)
AS
BEGIN
	INSERT INTO tblSessionDetails(UserId,UserName,HospitalsMapped) Values(@UserId,@UserName,@HospitalMapped)
	SET @Output='Inserted'
	SELECT @Output
END
GO
/****** Object:  StoredProcedure [dbo].[usp_checkAdmin]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[usp_checkAdmin]
(
@UserId varchar(100)
)
AS
BEGIN
	SELECT * FROM tblAdminMaster WHERE UserId=@UserId OR LoginName=@UserId
END
GO
/****** Object:  StoredProcedure [dbo].[usp_checkSession]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[usp_checkSession]
(
@UserId varchar(100)
)
AS
BEGIN
	SELECT Top 1 SessionStartTime,DATEDIFF(MINUTE,SessionStartTime,GETDATE()) as SessionTime FROM tblSessionDetails WHERE UserId=@UserId ORDER BY SessionStartTime DESC
END
GO
/****** Object:  StoredProcedure [dbo].[usp_deteleEntry]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[usp_deteleEntry]
(
@FormCode varchar(100),
@Id varchar(100),
@Result varchar(100) OUTPUT
)
AS
BEGIN
	DECLARE @TableName varchar(100)
	EXEC usp_getTableNameFromFormCode @FormName=@FormCode,@Output=@TableName OUTPUT
	DECLARE @Table_Name SYSNAME, @DynamicSQL NVARCHAR(4000)
	SET @Table_Name = @TableName
	SET @DynamicSQL = N'DELETE FROM '+@Table_Name+'_Attachments where Form_Id='+@Id
	Print @DynamicSQL
	EXECUTE sp_executesql @DynamicSQL
	SET @DynamicSQL = N'DELETE FROM '+@Table_Name+' where Id='+@Id
	Print @DynamicSQL
	EXECUTE sp_executesql @DynamicSQL
	SET @Result = 'Deleted'
END
GO
/****** Object:  StoredProcedure [dbo].[usp_enableDisableHospital]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[usp_enableDisableHospital]
(
@Id int,
@IsActive bit,
@ModifiedBy varchar(500),
@Result varchar(100) OUTPUT
)
AS
BEGIN
	UPDATE tblHospitalMasters SET IsActive=@IsActive,LastModifiedBy=@ModifiedBy,ModifiedOn=GETDATE() WHERE Id=@Id
	SET @Result = 'Updated'
END
GO
/****** Object:  StoredProcedure [dbo].[usp_enableDisableReports]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create     PROCEDURE [dbo].[usp_enableDisableReports]
(
@Id int,
@IsActive bit,
@Result varchar(100) OUTPUT
)
AS
BEGIN
	UPDATE tblMasterAllTables SET IsActive=@IsActive WHERE Id=@Id
	SET @Result = 'Updated'
END
GO
/****** Object:  StoredProcedure [dbo].[usp_exportFormRecordsByRange]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     Procedure [dbo].[usp_exportFormRecordsByRange]
(
@StartDate varchar(100),
@EndDate varchar(100),
@LightHouseHospitalId varchar(500),
@FormCode varchar(100)
)
AS
BEGIN
	DECLARE @TableName varchar(100)
	EXEC usp_getTableNameFromFormCode @FormName=@FormCode,@Output=@TableName OUTPUT
	DECLARE @Table_Name SYSNAME, @DynamicSQL NVARCHAR(4000)
	SET @Table_Name = @TableName
	IF @FormCode = 'TBL01'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by tblCOE.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [COE (Name)],NoOfNursesAttended as [Number of Nurses attended],ConsultantsInvolved as [Consultants involved (Name, Designation & Department)],NatureOfActivityDone as [Nature of Activity Done],ConsultantFeedback as [Consultant Feedback],ActionTaken as [Action taken Post Feedback],AdditionalMentions as [Any additional mentions],Remarks,FormStatus as [Form Status],FORMAT(tblCOE.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblCOE.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL02'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by tblSOP.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,NoOfNursesTrained as [Number of Nurses trained],NoOfNursesCompetencyChecked as [Number of Nurses competency checked],NoOfNursesPassed as [Number of Nurses passed in first attempt],NoOfNursesRetrained as [Number of Nurses retrained],ConsultantFeedback AS [Consultant Feedback],Remarks,FormStatus as [Form Status],FORMAT(tblSOP.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblSOP.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL03'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by tblServiceExcellence.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,NoOfPatients as [Number of Patients],ConsultantFeedback as [Patient/Family Feedback],Remarks,FormStatus as [Form Status],FORMAT(tblServiceExcellence.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblServiceExcellence.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL04'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by tblConsultantConnect.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,SelectionType as [Selection of Consultant],ConsultantsInvolved as [Consultants involved],ConsultantComplaints as [Complaints / Suggestions],PostComplaintAction as [Feedback post action taken with duration of the closure],ConsultantFeedback AS [Consultant Feedback post action taken],AdditionalMentions As [Any Additional Mention],Remarks,FormStatus as [Form Status],FORMAT(tblConsultantConnect.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblConsultantConnect.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL05'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblProcessImprovement.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,CriticalLabValue as [Critical Lab value],BloodTransfusion as [Blood Transfusion],POCT as [POCT],ClinicalHandOff as [Clinical Hand Off ],ComplianceMedicationErrors AS [Compliance to Medication Errors],ComplianceBloodSugar AS [Compliance to Blood Sugar],ReasonsNotAchieve As [Reasons for not achieving the targets amongst any of the processes],Remarks,FormStatus as [Form Status],FORMAT(tblProcessImprovement.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblProcessImprovement.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL06'
	BEGIN
	    SET @DynamicSQL = N'SELECT row_number() over(order by  tblTopIncidents.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,OrderNumber as [OrderNumber],NameOfIncident as [Name of the Incident],NumberOfIncidents as [Number of Incidents occurred],ActionTaken as [Action taken],Remarks,FormStatus as [Form Status],FORMAT(tblTopIncidents.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblTopIncidents.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL07'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblTopComplaints.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,OrderNumber as [OrderNumber],NameOfComplaint as [Name of the Complaint],NumberOfComplaints as [Number of Complaints occurred],ActionTaken as [Action taken],Remarks,FormStatus as [Form Status],FORMAT(tblTopComplaints.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblTopComplaints.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL08'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblWOW.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,SC_MT_Expenditure as [Monthly Target Expenditure],SC_TargetSaving as [Target Saving],SC_Achievement as [Achievement],ComplianceBilling_Target as [Target],ComplianceBilling_Achievement as [Achieved],Remarks,FormStatus as [Form Status],FORMAT(tblWOW.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblWOW.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL09'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblVOC.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,CnCNursingStaff_Target as [Courtesy and compassion of nursing staff],HowPainManaged_Target as [How well pain was managed],CallBellResponse_Target as [Call bell response],CnCNursingStaff_Score as [Courtesy and compassion of nursing staff],HowPainManaged_Score as [How well pain was managed],CallBellResponse_Score as [Call bell response],Remarks,FormStatus as [Form Status],FORMAT(tblVOC.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblVOC.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL10'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblANICE.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,Score as [Score],Remarks,FormStatus as [Form Status],FORMAT(tblANICE.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblANICE.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL11'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblManPower.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,SanctionedManpower as [Sanctioned Manpower],ExistingManpower as [Existing Manpower],Remarks,FormStatus as [Form Status],FORMAT(tblManPower.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblManPower.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL12'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblTrainingInitiatives.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,TopicsCovered as [Topics Covered],PercentageCompliance as [Percentage Compliance],Remarks,FormStatus as [Form Status],FORMAT(tblTrainingInitiatives.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblTrainingInitiatives.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL13'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblEnglishCommunication.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,NoOfNurseTrained as [Number of Nurses trained],Initiatives as [Initiatives to improve English Communication],Outcome as [Outcomes of SSLC/Buddy mentor progamme],Remarks,FormStatus as [Form Status],FORMAT(tblEnglishCommunication.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblEnglishCommunication.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL14'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReinforcementCommunication.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,NoOfNurseTrained as [Number of Nurses trained],Theme as [Theme for the month],Outcome as [Outcomes],Remarks,FormStatus as [Form Status],FORMAT(tblReinforcementCommunication.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReinforcementCommunication.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL15'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblTownHall.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,PointsOfDiscussion as [Points of Discussion],NoOfAttendee as [Number of Attendees],Remarks,FormStatus as [Form Status],FORMAT(tblTownHall.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblTownHall.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL16'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblCFT.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,Members as [Name and detail of the member(s)],Details as [Details of the participation],Learnings as [Learning/Best practices from audits that can be implemented across the group],Remarks,FormStatus as [Form Status],FORMAT(tblCFT.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblCFT.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL17'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblRP.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,Members as [Name and detail of the member(s)],TopicsAssigned as [TopicsAssigned],Remarks,FormStatus as [Form Status],FORMAT(tblRP.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblRP.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL18'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblAcademicCouncil.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,Members as [Name and detail of the member(s)],TopicsAssigned as [TopicsAssigned],Remarks,FormStatus as [Form Status],FORMAT(tblAcademicCouncil.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblAcademicCouncil.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL19'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblBestPractices.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,BestPractices as [Best Practices],Remarks,FormStatus as [Form Status],FORMAT(tblBestPractices.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblBestPractices.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL20'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblAchievements.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,Details as [Details of the Achievement],Remarks,FormStatus as [Form Status],FORMAT(tblAchievements.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblAchievements.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL21'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblAppreciation.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,Details as [Details of the Appreciation],Remarks,FormStatus as [Form Status],FORMAT(tblAppreciation.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblAppreciation.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL22'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblChallenges.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,Challenges as [Challenges],Remarks,FormStatus as [Form Status],FORMAT(tblChallenges.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblChallenges.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL23'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblProcessStandardization.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,PCI as [Percentage compliance of implementation],Impact as [Impact],Remarks,FormStatus as [Form Status],FORMAT(tblProcessStandardization.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblProcessStandardization.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

	ELSE IF @FormCode = 'TBL24'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblNHNE.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,DOC as [Details of the custodians],PCT as [Percentage compliance  of training],NoOfIBI as [Number of incidents before implementation], Remarks,FormStatus as [Form Status],FORMAT(tblNHNE.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblNHNE.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

	ELSE IF @FormCode = 'TBL25'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblQualityImprovement.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,DetailsOfCustodians as [Details of the custodians],PCT as [Percentage compliance  of training],Remarks,FormStatus as [Form Status],FORMAT(tblQualityImprovement.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblQualityImprovement.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

	ELSE IF @FormCode = 'TBL26'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblDigitization.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,TechnologyAdopted as [Technology adopted ],PCT as [Percentage compliance  of training],Impact as [Impact], Remarks,FormStatus as [Form Status],FORMAT(tblDigitization.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblDigitization.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

	ELSE IF @FormCode = 'TBL27'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblStaffEngagement.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,NumberOfNursesInvolved as [Number of nurses involved],PCA as [Percentage Complaince to the activity], Remarks,FormStatus as [Form Status],FORMAT(tblStaffEngagement.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblStaffEngagement.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

	ELSE IF @FormCode = 'TBL28'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport1.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Remarks,FormStatus as [Form Status],FORMAT(tblReport1.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport1.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

			ELSE IF @FormCode = 'TBL29'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport2.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Remarks,FormStatus as [Form Status],FORMAT(tblReport2.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport2.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

			ELSE IF @FormCode = 'TBL30'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport3.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Remarks,FormStatus as [Form Status],FORMAT(tblReport3.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport3.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

			ELSE IF @FormCode = 'TBL31'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport4.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Remarks,FormStatus as [Form Status],FORMAT(tblReport4.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport4.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

			ELSE IF @FormCode = 'TBL32'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport5.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Remarks,FormStatus as [Form Status],FORMAT(tblReport5.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport5.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

			ELSE IF @FormCode = 'TBL33'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport6.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Remarks,FormStatus as [Form Status],FORMAT(tblReport6.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport6.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

			ELSE IF @FormCode = 'TBL34'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport7.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Remarks,FormStatus as [Form Status],FORMAT(tblReport7.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport7.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

			ELSE IF @FormCode = 'TBL35'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport8.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Remarks,FormStatus as [Form Status],FORMAT(tblReport8.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport8.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

			ELSE IF @FormCode = 'TBL36'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport9.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Remarks,FormStatus as [Form Status],FORMAT(tblReport9.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport9.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

			ELSE IF @FormCode = 'TBL37'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport10.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Remarks,FormStatus as [Form Status],FORMAT(tblReport10.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport10.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

	EXECUTE sp_executesql @DynamicSQL
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getAllAdmin]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     Procedure [dbo].[usp_getAllAdmin]
AS
BEGIN
	SELECT * FROM tblAdminMaster ORDER BY Created DESC
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getAllAdminHospitals]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     Procedure [dbo].[usp_getAllAdminHospitals]
AS
BEGIN
	SELECT * FROM tblHospitalMasters ORDER BY HospitalName ASC
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getAllAdminReports]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_getAllAdminReports]
AS
BEGIN
	SELECT * FROM tblMasterAllTables ORDER BY FormName ASC
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getAllHospitals]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[usp_getAllHospitals]
AS
BEGIN
	SELECT * FROM tblHospitalMasters Where IsActive=1 ORDER BY HospitalName ASC
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getAllReports]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_getAllReports]
AS
BEGIN
	SELECT * FROM tblMasterAllTables Where IsActive=1 ORDER BY ID ASC
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getAttachmentById]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[usp_getAttachmentById]
(
@FormCode varchar(50),
@Id varchar(10)
)
AS
BEGIN
	DECLARE @TableName varchar(100)
	EXEC usp_getTableNameFromFormCode @FormName=@FormCode,@Output=@TableName OUTPUT
	DECLARE @Table_Name SYSNAME, @DynamicSQL NVARCHAR(4000)
	SET @Table_Name = @TableName
	PRINT @Table_Name
	SET @DynamicSQL = N'SELECT * FROM ' + @Table_Name +'_Attachments WHERE Id='+ @Id
	PRINT @DynamicSQL
	EXECUTE sp_executesql @DynamicSQL
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getAttachments]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[usp_getAttachments]
(
@FormCode varchar(50),
@Form_Id varchar(10)
)
AS
BEGIN
	DECLARE @TableName varchar(100)
	EXEC usp_getTableNameFromFormCode @FormName=@FormCode,@Output=@TableName OUTPUT
	DECLARE @Table_Name SYSNAME, @DynamicSQL NVARCHAR(4000)
	SET @Table_Name = @TableName
	PRINT @Table_Name
	SET @DynamicSQL = N'SELECT Id,Form_Id,file_name,file_ext,file_contenttype,file_size,Created,Modified,CreatedBy,ModifiedBy FROM ' + @Table_Name +'_Attachments WHERE Form_Id='+ @Form_Id
	PRINT @DynamicSQL
	EXECUTE sp_executesql @DynamicSQL
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getErrorLogs]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[usp_getErrorLogs]
AS
BEGIN
	SELECT TOP 50 * FROM tblErrorLog ORDER BY CreatedOn DESC
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getFileAttachmentsURL]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[usp_getFileAttachmentsURL]
(
@FormCode varchar(100),
@FormID varchar(100),
@Output varchar(max) OUTPUT
)
AS
BEGIN
DECLARE @Sql NVARCHAR(MAX)
DECLARE @siteURL varchar(500)
SET @siteURL = 'http://localhost:50884'
declare @Result varchar(max)
DECLARE @TableName varchar(100)
EXEC usp_getTableNameFromFormCode @FormName=@FormCode,@Output=@TableName OUTPUT
DECLARE @Table_Name SYSNAME
SET @Table_Name = @TableName
--PRINT @Table_Name
SET @Sql = N'SELECT DISTINCT @Resultval=stuff((select '';'' + CONCAT('''+@siteURL+''',''/home/downloadfile?formCode='+@FormCode+'&fileId='',u.Id,'''')from '+@Table_Name+'_Attachments u where u.Id = Id AND Form_Id = '+@FormID+' order by u.file_name for xml path('''')),1,1,'''')from '+@Table_Name+'_Attachments group by file_name'
--PRINT @Sql
EXECUTE sp_executesql @Sql,N'@Resultval varchar(max) OUTPUT',@Resultval=@Result OUTPUT
--PRINT @Result
SELECT @Output=replace(@Result,'&amp;','&')
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getFormData]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_getFormData]
(
@FormCode varchar(50),
@MonthIndex varchar(10),
@Year varchar(10),
@LightHouseHospitalId varchar(10)
)
AS
BEGIN
	DECLARE @TableName varchar(100)
	EXEC usp_getTableNameFromFormCode @FormName=@FormCode,@Output=@TableName OUTPUT
	DECLARE @Table_Name SYSNAME, @DynamicSQL NVARCHAR(4000),@CONDITION NVARCHAR(128)
	SET @Table_Name = @TableName
	SET @CONDITION = ' WHERE LightHouseHospitalId=' + @LightHouseHospitalId + ' AND MonthIndex=' + @MonthIndex + ' AND Year=' + @Year
	--PRINT @Table_Name
	--PRINT @LightHouseHospitalId
	--PRINT @CONDITION
	SET @DynamicSQL = N'SELECT * FROM ' + @Table_Name + @CONDITION
	--PRINT @DynamicSQL
	EXECUTE sp_executesql @DynamicSQL
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getFormRecordsByRange]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_getFormRecordsByRange]
(
@StartDate varchar(100),
@EndDate varchar(100),
@LightHouseHospitalId varchar(500),
@FormCode varchar(100)
)
AS
BEGIN
	DECLARE @TableName varchar(100)
	EXEC usp_getTableNameFromFormCode @FormName=@FormCode,@Output=@TableName OUTPUT
	DECLARE @Table_Name SYSNAME, @DynamicSQL NVARCHAR(4000),@siteURL nvarchar(500)
	SET @siteURL = 'http://localhost:50884'
	SET @Table_Name = @TableName
	--SET @DynamicSQL = N'SELECT *,dbo.ufn_getFileAttachmentsURL('''+ @FormCode+''','+ @Table_Name +'.Id) as Attachments FROM ' + @Table_Name +' left join tblHospitalMasters on ' + @Table_Name +'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+ @LightHouseHospitalId + ') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	SET @DynamicSQL = N'SELECT *,'+@Table_Name+'.Id as Id,replace((SELECT DISTINCT stuff((select '';'' + CONCAT('''+@siteURL+''',''/home/downloadfile?formCode='+@FormCode+'&fileId='',u.Id,'''')from '+@Table_Name+'_Attachments u where u.Id = Id AND Form_Id = '+@Table_Name+'.Id order by u.file_name for xml path('''')),1,1,'''')from '+@Table_Name+'_Attachments group by file_name),''&amp;'',''&'') as Attachments FROM ' + @Table_Name +' left join tblHospitalMasters on ' + @Table_Name +'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+ @LightHouseHospitalId + ') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	Print @DynamicSQL
	EXECUTE sp_executesql @DynamicSQL
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getTableNameFromFormCode]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_getTableNameFromFormCode]
(
@FormName varchar(50),
@Output varchar(500) OUTPUT
)
AS
BEGIN
	DECLARE @tableName varchar(100)
	SELECT top 1 @tableName=TableName FROM tblMasterAllTables WHERE FormCode=@FormName
	SET @Output = @tableName
END

GO
/****** Object:  StoredProcedure [dbo].[usp_insertErrorLog]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  Procedure [dbo].[usp_insertErrorLog]
(
@Module varchar(200),
@Method varchar(100),
@ErrorMessage varchar(max),
@StackTrace varchar(max),
@CreatedBy varchar(100),
@Output varchar(100) OUTPUT
)
AS
BEGIN
	INSERT INTO tblErrorLog(Module, Method, ErrorMessage,StackTrace, CreatedBy) Values(@Module, @Method, @ErrorMessage,@StackTrace, @CreatedBy)
	SET @Output = 'Inserted'
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateAcademicCouncil]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateAcademicCouncil]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@Members varchar(max),
@TopicsAssigned varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblAcademicCouncil WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblAcademicCouncil SET Members=@Members, TopicsAssigned=@TopicsAssigned,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblAcademicCouncil(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],Members,
			TopicsAssigned,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@Members,
			@TopicsAssigned,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateAchievements]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateAchievements]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@Details varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblAchievements WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblAchievements SET Details=@Details,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblAchievements(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],Details,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@Details,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateANICE]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateANICE]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@Score varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblANICE WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblANICE SET Score=@Score,Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblANICE(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],Score,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@Score,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateAppreciation]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateAppreciation]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@Details varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblAppreciation WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblAppreciation SET Details=@Details,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblAppreciation(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],Details,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@Details,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateBestPractices]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateBestPractices]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@BestPractices varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblBestPractices WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblBestPractices SET BestPractices=@BestPractices,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblBestPractices(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],BestPractices,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@BestPractices,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateCFT]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateCFT]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@Members varchar(max),
@Details varchar(max),
@Learnings varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblCFT WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblCFT SET Members=@Members, Details=@Details,
				Learnings=@Learnings, Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblCFT(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],Members,
			Details,Learnings,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@Members,
			@Details,@Learnings,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateChallenges]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateChallenges]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@Challenges varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblChallenges WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblChallenges SET Challenges=@Challenges,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblChallenges(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],Challenges,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@Challenges,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateCOE]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateCOE]
(
@Id int,
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@NoOfNursesAttended varchar(max),
@ReportName varchar(max),
@ConsultantsInvolved varchar(max),
@NatureOfActivityDone varchar(max),
@ConsultantFeedback varchar(max),
@ActionTaken varchar(max),
@Remarks varchar(max),
@AdditionalMentions varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblCOE WHERE Id=@Id)
		BEGIN
			UPDATE tblCOE SET NoOfNursesAttended=@NoOfNursesAttended,ReportName =@ReportName, ConsultantsInvolved=@ConsultantsInvolved,
				NatureOfActivityDone=@NatureOfActivityDone, ConsultantFeedback=@ConsultantFeedback,
				ActionTaken=@ActionTaken, Remarks=@Remarks,AdditionalMentions=@AdditionalMentions, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Id=@Id
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			DECLARE @newId int
			INSERT INTO tblCOE(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,NoOfNursesAttended,
			ConsultantsInvolved,NatureOfActivityDone,ConsultantFeedback,ActionTaken,AdditionalMentions,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,@NoOfNursesAttended,
			@ConsultantsInvolved,@NatureOfActivityDone,@ConsultantFeedback,@ActionTaken,@AdditionalMentions,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			select @newId = Scope_Identity() 
			SET @Output = @newId
		END
	SELECT @Output
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateConsultantConnect]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateConsultantConnect]
(
@Id int,
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@SelectionType varchar(max),
@ConsultantsInvolved varchar(max),
@ConsultantComplaints varchar(max),
@PostComplaintAction varchar(max),
@ConsultantFeedback varchar(max),
@AdditionalMentions varchar(max),
@GlimpseLink varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	--IF Exists(SELECT 1 FROM tblConsultantConnect WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
	IF Exists(SELECT 1 FROM tblConsultantConnect WHERE Id=@Id)
		BEGIN
			UPDATE tblConsultantConnect SET SelectionType=@SelectionType, ConsultantsInvolved=@ConsultantsInvolved,
				ConsultantComplaints=@ConsultantComplaints, PostComplaintAction=@PostComplaintAction,
				ConsultantFeedback=@ConsultantFeedback,AdditionalMentions=@AdditionalMentions,GlimpseLink=@GlimpseLink, Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Id=@Id
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblConsultantConnect(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],SelectionType,
			ConsultantsInvolved,ConsultantComplaints,PostComplaintAction,ConsultantFeedback,AdditionalMentions,GlimpseLink,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@SelectionType,
			@ConsultantsInvolved,@ConsultantComplaints,@PostComplaintAction,@ConsultantFeedback,@AdditionalMentions,@GlimpseLink,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateDigitization]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   Procedure [dbo].[usp_insertupdateDigitization]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@TechnologyAdopted varchar(max),
@PCT varchar(max),
@Impact varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblDigitization WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblDigitization SET TechnologyAdopted=@TechnologyAdopted, PCT=@PCT, Impact=@Impact,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblDigitization(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],TechnologyAdopted,
			PCT,Impact,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@TechnologyAdopted,
			@PCT,@Impact,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateEnglishCommunication]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateEnglishCommunication]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@NoOfNurseTrained varchar(max),
@Initiatives varchar(max),
@Outcome varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblEnglishCommunication WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblEnglishCommunication SET NoOfNurseTrained=@NoOfNurseTrained, Initiatives=@Initiatives,
				Outcome=@Outcome,Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblEnglishCommunication(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],NoOfNurseTrained,
			Initiatives,Outcome,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@NoOfNurseTrained,
			@Initiatives,@Outcome,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateManPower]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateManPower]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@SanctionedManpower varchar(max),
@ExistingManpower varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblManPower WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblManPower SET SanctionedManpower=@SanctionedManpower,
				ExistingManpower=@ExistingManpower,Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblManPower(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],SanctionedManpower,
			ExistingManpower,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@SanctionedManpower,
			@ExistingManpower,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateMaster]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create   Procedure [dbo].[usp_insertupdateMaster]
(
@Key varchar(100),
@Value varchar(max),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(100) OUTPUT
)
AS
BEGIN
	If EXISTS(SELECT 1 From tblMaster WHERE [Key]=@Key AND IsActive=1)
	BEGIN
		UPDATE tblMaster SET [Value]=@Value,ModifiedBy=@ModifiedBy,Modified=GETDATE() WHERE [Key]=@Key AND IsActive=1
		SET @Output = 'Updated'
	END
	ELSE
	BEGIN
		INSERT INTO tblMaster([Key],[Value],Created,Modified,CreatedBy,ModifiedBy)
			VALUES(@Key,@Value,GETDATE(),GETDATE(),@ModifiedBy,@ModifiedBy)
		SET @Output = 'Inserted'
	END
	SELECT @Output
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateNHNE]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateNHNE]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@ReportName varchar(500),
@DOC varchar(max),
@PCT varchar(max),
@NoOfIBI varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblNHNE WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblNHNE SET ReportName=@ReportName, DOC=@DOC, PCT=@PCT, NoOfIBI=@NoOfIBI,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblNHNE(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,DOC,
			PCT,NoOfIBI,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,@DOC,
			@PCT,@NoOfIBI,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateProcessImprovement]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateProcessImprovement]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@ReportName varchar(500),
@CriticalLabValue varchar(max),
@BloodTransfusion varchar(max),
@Poct varchar(max),
@ClinicalHandOff varchar(max),
@ComplianceMedicationErrors varchar(max),
@ComplianceBloodSugar varchar(max),
@ReasonsNotAchieve varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblProcessImprovement WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblProcessImprovement SET ReportName=@ReportName, CriticalLabValue=@CriticalLabValue, BloodTransfusion=@BloodTransfusion,
				Poct=@Poct, ClinicalHandOff=@ClinicalHandOff,
				ComplianceMedicationErrors=@ComplianceMedicationErrors, ComplianceBloodSugar=@ComplianceBloodSugar,ReasonsNotAchieve=@ReasonsNotAchieve,Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblProcessImprovement(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,CriticalLabValue,
			BloodTransfusion,Poct,ClinicalHandOff,ComplianceMedicationErrors,ComplianceBloodSugar,ReasonsNotAchieve,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,@CriticalLabValue,
			@BloodTransfusion,@Poct,@ClinicalHandOff,@ComplianceMedicationErrors,@ComplianceBloodSugar,@ReasonsNotAchieve,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateProcessStandardization]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateProcessStandardization]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@ReportName varchar(500),
@PCI varchar(max),
@Impact varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblProcessStandardization WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblProcessStandardization SET ReportName=@ReportName,PCI=@PCI, Impact=@Impact,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblProcessStandardization(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,PCI,
			Impact,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,@PCI,
			@Impact,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateQualityImprovement]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateQualityImprovement]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@ReportName varchar(500),
@DetailsOfCustodians varchar(max),
@PCT varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblQualityImprovement WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblQualityImprovement SET ReportName=@ReportName, DetailsOfCustodians=@DetailsOfCustodians, PCT=@PCT,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblQualityImprovement(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,DetailsOfCustodians,
			PCT,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,@DetailsOfCustodians,
			@PCT,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReinforcementCommunication]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateReinforcementCommunication]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@NoOfNursesTrained varchar(max),
@Theme varchar(max),
@Outcome varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblReinforcementCommunication WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblReinforcementCommunication SET NoOfNurseTrained=@NoOfNursesTrained, Theme=@Theme,
				Outcome=@Outcome, Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblReinforcementCommunication(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],NoOfNurseTrained,Theme,
			Outcome,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@NoOfNursesTrained,
			@Theme,@Outcome,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport1]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   Procedure [dbo].[usp_insertupdateReport1]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@ReportName varchar(max),
@Details varchar(max),
@Field1 nvarchar(max),
@Field2 nvarchar(max),
@Field3 nvarchar(max),
@Field4 nvarchar(max),
@Field5 nvarchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblReport1 WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblReport1 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblReport1(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END




GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport10]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   Procedure [dbo].[usp_insertupdateReport10]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@ReportName varchar(max),
@Details varchar(max),
@Field1 nvarchar(max),
@Field2 nvarchar(max),
@Field3 nvarchar(max),
@Field4 nvarchar(max),
@Field5 nvarchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblReport10 WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblReport10 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblReport10(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport2]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   Procedure [dbo].[usp_insertupdateReport2]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@ReportName varchar(max),
@Details varchar(max),
@Field1 nvarchar(max),
@Field2 nvarchar(max),
@Field3 nvarchar(max),
@Field4 nvarchar(max),
@Field5 nvarchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblReport2 WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblReport2 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblReport2(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END




GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport3]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   Procedure [dbo].[usp_insertupdateReport3]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@ReportName varchar(max),
@Details varchar(max),
@Field1 nvarchar(max),
@Field2 nvarchar(max),
@Field3 nvarchar(max),
@Field4 nvarchar(max),
@Field5 nvarchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblReport3 WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblReport3 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblReport3(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END




GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport4]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   Procedure [dbo].[usp_insertupdateReport4]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@ReportName varchar(max),
@Details varchar(max),
@Field1 nvarchar(max),
@Field2 nvarchar(max),
@Field3 nvarchar(max),
@Field4 nvarchar(max),
@Field5 nvarchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblReport4 WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblReport4 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblReport4(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END



GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport5]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   Procedure [dbo].[usp_insertupdateReport5]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@ReportName varchar(max),
@Details varchar(max),
@Field1 nvarchar(max),
@Field2 nvarchar(max),
@Field3 nvarchar(max),
@Field4 nvarchar(max),
@Field5 nvarchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblReport5 WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblReport5 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblReport5(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END



GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport6]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   Procedure [dbo].[usp_insertupdateReport6]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@ReportName varchar(max),
@Details varchar(max),
@Field1 nvarchar(max),
@Field2 nvarchar(max),
@Field3 nvarchar(max),
@Field4 nvarchar(max),
@Field5 nvarchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblReport6 WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblReport6 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblReport6(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END




GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport7]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   Procedure [dbo].[usp_insertupdateReport7]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@ReportName varchar(max),
@Details varchar(max),
@Field1 nvarchar(max),
@Field2 nvarchar(max),
@Field3 nvarchar(max),
@Field4 nvarchar(max),
@Field5 nvarchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblReport7 WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblReport7 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblReport7(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END



GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport8]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   Procedure [dbo].[usp_insertupdateReport8]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@ReportName varchar(max),
@Details varchar(max),
@Field1 nvarchar(max),
@Field2 nvarchar(max),
@Field3 nvarchar(max),
@Field4 nvarchar(max),
@Field5 nvarchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblReport8 WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblReport8 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblReport8(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END




GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport9]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   Procedure [dbo].[usp_insertupdateReport9]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@ReportName varchar(max),
@Details varchar(max),
@Field1 nvarchar(max),
@Field2 nvarchar(max),
@Field3 nvarchar(max),
@Field4 nvarchar(max),
@Field5 nvarchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblReport9 WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblReport9 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblReport9(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END



GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateRP]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateRP]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@Members varchar(max),
@TopicsAssigned varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblRP WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblRP SET Members=@Members, TopicsAssigned=@TopicsAssigned,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblRP(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],Members,
			TopicsAssigned,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@Members,
			@TopicsAssigned,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateServiceExcellence]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateServiceExcellence]
(
@Id int,
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@ReportName varchar(500),
@NoOfPatients varchar(max),
@PatientFamilyFeedback varchar(max),
@ConsultantFeedback varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblServiceExcellence WHERE Id=@Id)
		BEGIN
			UPDATE tblServiceExcellence SET ReportName=@ReportName, NoOfPatients=@NoOfPatients, PatientFamilyFeedback=@PatientFamilyFeedback,
				ConsultantFeedback=@ConsultantFeedback, Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Id=@Id
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			DECLARE @newId int
			INSERT INTO tblServiceExcellence(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,NoOfPatients,
			PatientFamilyFeedback,ConsultantFeedback,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,@NoOfPatients,@PatientFamilyFeedback,
			@ConsultantFeedback,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			select @newId = Scope_Identity() 
			SET @Output = @newId
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateSOP]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateSOP]
(
@Id int,
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@ReportName varchar(max),
@ConsultantInvolved varchar(max),
@NoOfNursesTrained varchar(max),
@NoOfNursesCompetencyChecked varchar(max),
@NoOfNursesPassed varchar(max),
@NoOfNursesRetrained varchar(max),
@ConsultantFeedback varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblSOP WHERE Id=@Id)
		BEGIN
			UPDATE tblSOP SET NoOfNursesTrained=@NoOfNursesTrained, NoOfNursesCompetencyChecked=@NoOfNursesCompetencyChecked,ReportName=@ReportName,ConsultantInvolved=@ConsultantInvolved,
				NoOfNursesPassed=@NoOfNursesPassed, NoOfNursesRetrained=@NoOfNursesRetrained, ConsultantFeedback=@ConsultantFeedback, Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Id=@Id
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			DECLARE @newId int
			INSERT INTO tblSOP(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,NoOfNursesTrained,
			NoOfNursesCompetencyChecked,NoOfNursesPassed, NoOfNursesRetrained, ConsultantInvolved,ConsultantFeedback,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,@NoOfNursesTrained,
			@NoOfNursesCompetencyChecked,@NoOfNursesPassed,@NoOfNursesRetrained,@ConsultantInvolved,@ConsultantFeedback,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			select @newId = Scope_Identity() 
			SET @Output = @newId
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateStaffEngagement]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateStaffEngagement]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@ReportName varchar(500),
@NumberOfNursesInvolved varchar(max),
@PCA varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblStaffEngagement WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblStaffEngagement SET ReportName=@ReportName, NumberOfNursesInvolved=@NumberOfNursesInvolved, PCA=@PCA,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblStaffEngagement(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,NumberOfNursesInvolved,
			PCA,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,@NumberOfNursesInvolved,
			@PCA,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateTopComplaints]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateTopComplaints]
(
@Id int, --mandatory for create and update
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@OrderNumber varchar(max),
@NameOfComplaint varchar(max),
@NumberOfComplaints varchar(max),
@Actiontaken varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	--IF Exists(SELECT 1 FROM tblTopComplaints WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
	IF Exists(SELECT 1 FROM tblTopComplaints WHERE Id=@Id)
		BEGIN
			UPDATE tblTopComplaints SET OrderNumber=@OrderNumber, NameOfComplaint=@NameOfComplaint, NumberOfComplaints=@NumberOfComplaints,
				Actiontaken=@Actiontaken, Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Id=@Id
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblTopComplaints(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],OrderNumber,NameOfComplaint,
			NumberOfComplaints,Actiontaken,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@OrderNumber,@NameOfComplaint,
			@NumberOfComplaints,@Actiontaken,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateTopIncidents]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateTopIncidents]
(
@Id int,
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@OrderNumber varchar(max),
@NameOfIncident varchar(max),
@NumberOfIncidents varchar(max),
@ActionTaken varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	--IF Exists(SELECT 1 FROM tblTopIncidents WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
	IF Exists(SELECT 1 FROM tblTopComplaints WHERE Id=@Id)
		BEGIN
			UPDATE tblTopIncidents SET OrderNumber=@OrderNumber,NameOfIncident=@NameOfIncident, NumberOfIncidents=@NumberOfIncidents,
				ActionTaken=@ActionTaken, Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Id=@Id
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblTopIncidents(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],OrderNumber, NameOfIncident,
			NumberOfIncidents,Actiontaken,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@OrderNumber, @NameOfIncident,
			@NumberOfIncidents,@ActionTaken,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateTownHall]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateTownHall]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@NoOfAttendee varchar(max),
@PointsOfDiscussion varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblTownHall WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblTownHall SET NoOfAttendee=@NoOfAttendee, PointsOfDiscussion=@PointsOfDiscussion,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblTownHall(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],NoOfAttendee,
			PointsOfDiscussion,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@NoOfAttendee,
			@PointsOfDiscussion,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateTrainingInitiatives]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateTrainingInitiatives]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@TopicsCovered varchar(max),
@PercentageCompliance varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblTrainingInitiatives WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblTrainingInitiatives SET TopicsCovered=@TopicsCovered, PercentageCompliance=@PercentageCompliance, Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblTrainingInitiatives(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],TopicsCovered,
			PercentageCompliance,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@TopicsCovered,
			@PercentageCompliance,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateVOC]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateVOC]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@CnCNursingStaff_Target varchar(max),
@HowPainManaged_Target varchar(max),
@CallBellResponse_Target varchar(max),
@CnCNursingStaff_Score varchar(max),
@HowPainManaged_Score varchar(max),
@CallBellResponse_Score varchar(max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblVOC WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblVOC SET CnCNursingStaff_Target=@CnCNursingStaff_Target, HowPainManaged_Target=@HowPainManaged_Target,
				CallBellResponse_Target=@CallBellResponse_Target, CnCNursingStaff_Score=@CnCNursingStaff_Score, HowPainManaged_Score=@HowPainManaged_Score, CallBellResponse_Score=@CallBellResponse_Score, Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblVOC(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],CnCNursingStaff_Target,
			HowPainManaged_Target,CallBellResponse_Target,CnCNursingStaff_Score,HowPainManaged_Score,CallBellResponse_Score,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@CnCNursingStaff_Target,
			@HowPainManaged_Target,@CallBellResponse_Target,@CnCNursingStaff_Score,@HowPainManaged_Score,@CallBellResponse_Score,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateWOW]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_insertupdateWOW]
(
@Hospital_Id int, --FK
@LightHouseHospitalId int, --Lighthouse Id
@MonthIndex int,
@MonthName varchar(50),
@Year int,
@SC_MT_Expenditure varchar(max),
@TargetSaving varchar(max),
@SC_Achievement varchar(max),
@SC_TargetSaving varchar(max),
@ComplianceBilling_Target varchar(max),
@ComplianceBilling_Achievement varchar(Max),
@Remarks varchar(max),
@FormStatus varchar(100),
@IsActive bit,
@ModifiedBy varchar(100),
@Output varchar(50) OUTPUT
)
As
BEGIN
	IF Exists(SELECT 1 FROM tblWOW WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year)
		BEGIN
			UPDATE tblWOW SET SC_MT_Expenditure=@SC_MT_Expenditure, SC_TargetSaving=@SC_TargetSaving,
				SC_Achievement=@SC_Achievement, ComplianceBilling_Target=@ComplianceBilling_Target, ComplianceBilling_Achievement=@ComplianceBilling_Achievement,
		        Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Hospital_Id=@Hospital_Id AND MonthIndex=@MonthIndex AND Year=@Year
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
			INSERT INTO tblWOW(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],SC_MT_Expenditure,
			SC_TargetSaving,SC_Achievement,ComplianceBilling_Target,ComplianceBilling_Achievement,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@SC_MT_Expenditure,
			@SC_TargetSaving,@SC_Achievement,@ComplianceBilling_Target,@ComplianceBilling_Achievement,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			SET @Output = 'Inserted'
		END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_removeAttachent]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[usp_removeAttachent]
(
@FormCode varchar(100),
@AttachmentId varchar(100)
)
AS
BEGIN
	DECLARE @TableName varchar(100)
	EXEC usp_getTableNameFromFormCode @FormName=@FormCode,@Output=@TableName OUTPUT
	DECLARE @Table_Name SYSNAME, @DynamicSQL NVARCHAR(4000)
	SET @Table_Name = @TableName
	SET @DynamicSQL = N'DELETE FROM '+@Table_Name+'_Attachments where Id='+@AttachmentId
	--Print @DynamicSQL
	EXECUTE sp_executesql @DynamicSQL
END
GO
/****** Object:  StoredProcedure [dbo].[usp_removeMaster]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[usp_removeMaster]
(
@Key varchar(100),
@ModifiedBy varchar(100),
@Output varchar(100) OUTPUT
)
AS
BEGIN
	If EXISTS(SELECT 1 From tblMaster WHERE [Key]=@Key AND IsActive=1)
	BEGIN
		UPDATE tblMaster SET IsActive=0,ModifiedBy=@ModifiedBy,Modified=GETDATE() WHERE [Key]=@Key AND IsActive=1
		SET @Output = 'Updated'
	END
	ELSE
	BEGIN
		SET @Output = 'No record found'
	END
	SELECT @Output
END
GO
/****** Object:  StoredProcedure [dbo].[usp_updateAllLastEntryDate]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_updateAllLastEntryDate]
(
@EntryLastDate int,
@ModifiedBy varchar(500),
@Result varchar(100) OUTPUT
)
AS
BEGIN
	UPDATE tblHospitalMasters set EntryLastDate=@EntryLastDate,ModifiedOn=GETDATE(),LastModifiedBy=@ModifiedBy
	Set @Result='Updated' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_updateANICEId]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_updateANICEId]
(
@Id int,
@AniceID int,
@ModifiedBy varchar(500),

@Result varchar(100) OUTPUT
)
AS
BEGIN
	UPDATE tblHospitalMasters set AniceID=@AniceID,ModifiedOn=GETDATE(),LastModifiedBy=@ModifiedBy where Id=@Id
	Set @Result='Updated' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_updateHospitalName]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[usp_updateHospitalName]
(
@Id int,
@ModifiedBy varchar(500),
@HospitalName varchar(500),
@Result varchar(100) OUTPUT
)
AS
BEGIN
	UPDATE tblHospitalMasters set ModifiedOn=GETDATE(),LastModifiedBy=@ModifiedBy,HospitalName=@HospitalName where Id=@Id
	Set @Result='Updated' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_updateLastEntryDate]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[usp_updateLastEntryDate]
(
@Id int,
@EntryLastDate int,
@ModifiedBy varchar(500),
@Result varchar(100) OUTPUT
)
AS
BEGIN
	UPDATE tblHospitalMasters set EntryLastDate=@EntryLastDate,ModifiedOn=GETDATE(),LastModifiedBy=@ModifiedBy where Id=@Id
	Set @Result='Updated' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_updateReportName]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[usp_updateReportName]
(
@Id int,
@ModifiedBy varchar(500),
@FormName varchar(500),
@FormDisplayName varchar(500),
@Result varchar(100) OUTPUT
)
AS
BEGIN
	UPDATE tblMasterAllTables set ModifiedOn=GETDATE(),LastModifiedBy=@ModifiedBy,FormName=@FormName,FormDisplayName=@FormDisplayName where Id=@Id
	Set @Result='Updated' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_updateVOCTarget]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_updateVOCTarget]
(
@Id int,
@ModifiedBy varchar(500),
@VOC_CnCNursingStaff_Target int,
@VOC_HowPainManaged_Target int,
@VOC_CallBellResponse_Target int,
@Result varchar(100) OUTPUT
)
AS
BEGIN
	UPDATE tblHospitalMasters set ModifiedOn=GETDATE(),LastModifiedBy=@ModifiedBy,VOC_CnCNursingStaff_Target=@VOC_CnCNursingStaff_Target,VOC_HowPainManaged_Target=@VOC_HowPainManaged_Target,VOC_CallBellResponse_Target=@VOC_CallBellResponse_Target where Id=@Id
	Set @Result='Updated' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_updateWOWTarget]    Script Date: 29-12-2021 10:26:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   Procedure [dbo].[usp_updateWOWTarget]
(
@Id int,
@ModifiedBy varchar(500),
@WOW_ComplianceBilling_Target int,
@Result varchar(100) OUTPUT
)
AS
BEGIN
	UPDATE tblHospitalMasters set ModifiedOn=GETDATE(),LastModifiedBy=@ModifiedBy,WOW_ComplianceBilling_Target=@WOW_ComplianceBilling_Target where Id=@Id
	Set @Result='Updated' 
END


GO
