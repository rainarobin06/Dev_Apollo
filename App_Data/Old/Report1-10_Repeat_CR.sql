USE [NursingApplication_Phase1]
GO

select * from tblCOE

/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport1]    Script Date: 07-01-2022 14:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   Procedure [dbo].[usp_insertupdateReport1]
(
@Id int, --mandatory for create and update
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
	IF Exists(SELECT 1 FROM tblReport1 WHERE Id=@Id)
		BEGIN
			UPDATE tblReport1 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Id=@Id
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
		DECLARE @newId int
			INSERT INTO tblReport1(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			select @newId = Scope_Identity() 
			SET @Output = @newId
		END
END



GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport1]    Script Date: 07-01-2022 14:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   Procedure [dbo].[usp_insertupdateReport2]
(
@Id int, --mandatory for create and update
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
	IF Exists(SELECT 1 FROM tblReport2 WHERE Id=@Id)
		BEGIN
			UPDATE tblReport2 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Id=@Id
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
		DECLARE @newId int
			INSERT INTO tblReport2(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			select @newId = Scope_Identity() 
			SET @Output = @newId
		END
END



GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport1]    Script Date: 07-01-2022 14:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   Procedure [dbo].[usp_insertupdateReport3]
(
@Id int, --mandatory for create and update
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
	IF Exists(SELECT 1 FROM tblReport3 WHERE Id=@Id)
		BEGIN
			UPDATE tblReport3 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Id=@Id
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
		DECLARE @newId int
			INSERT INTO tblReport3(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			select @newId = Scope_Identity() 
			SET @Output = @newId
		END
END



GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport1]    Script Date: 07-01-2022 14:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   Procedure [dbo].[usp_insertupdateReport4]
(
@Id int, --mandatory for create and update
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
	IF Exists(SELECT 1 FROM tblReport4 WHERE Id=@Id)
		BEGIN
			UPDATE tblReport4 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Id=@Id
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
		DECLARE @newId int
			INSERT INTO tblReport4(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			select @newId = Scope_Identity() 
			SET @Output = @newId
		END
END



GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport1]    Script Date: 07-01-2022 14:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   Procedure [dbo].[usp_insertupdateReport5]
(
@Id int, --mandatory for create and update
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
	IF Exists(SELECT 1 FROM tblReport5 WHERE Id=@Id)
		BEGIN
			UPDATE tblReport5 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Id=@Id
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
		DECLARE @newId int
			INSERT INTO tblReport5(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			select @newId = Scope_Identity() 
			SET @Output = @newId
		END
END



GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport1]    Script Date: 07-01-2022 14:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   Procedure [dbo].[usp_insertupdateReport6]
(
@Id int, --mandatory for create and update
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
	IF Exists(SELECT 1 FROM tblReport6 WHERE Id=@Id)
		BEGIN
			UPDATE tblReport6 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Id=@Id
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
		DECLARE @newId int
			INSERT INTO tblReport6(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			select @newId = Scope_Identity() 
			SET @Output = @newId
		END
END



GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport1]    Script Date: 07-01-2022 14:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   Procedure [dbo].[usp_insertupdateReport7]
(
@Id int, --mandatory for create and update
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
	IF Exists(SELECT 1 FROM tblReport7 WHERE Id=@Id)
		BEGIN
			UPDATE tblReport7 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Id=@Id
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
		DECLARE @newId int
			INSERT INTO tblReport7(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			select @newId = Scope_Identity() 
			SET @Output = @newId
		END
END



GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport1]    Script Date: 07-01-2022 14:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   Procedure [dbo].[usp_insertupdateReport8]
(
@Id int, --mandatory for create and update
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
	IF Exists(SELECT 1 FROM tblReport8 WHERE Id=@Id)
		BEGIN
			UPDATE tblReport8 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Id=@Id
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
		DECLARE @newId int
			INSERT INTO tblReport8(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			select @newId = Scope_Identity() 
			SET @Output = @newId
		END
END



GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport1]    Script Date: 07-01-2022 14:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   Procedure [dbo].[usp_insertupdateReport9]
(
@Id int, --mandatory for create and update
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
	IF Exists(SELECT 1 FROM tblReport9 WHERE Id=@Id)
		BEGIN
			UPDATE tblReport9 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Id=@Id
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
		DECLARE @newId int
			INSERT INTO tblReport9(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			select @newId = Scope_Identity() 
			SET @Output = @newId
		END
END



GO
/****** Object:  StoredProcedure [dbo].[usp_insertupdateReport1]    Script Date: 07-01-2022 14:24:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   Procedure [dbo].[usp_insertupdateReport10]
(
@Id int, --mandatory for create and update
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
	IF Exists(SELECT 1 FROM tblReport10 WHERE Id=@Id)
		BEGIN
			UPDATE tblReport10 SET ReportName=@ReportName, Details=@Details, Field1=@Field1, Field2=@Field2, Field3=@Field3, Field4=@Field4, Field5=@Field5,
				Remarks=@Remarks, FormStatus=@FormStatus, ModifiedBy=@ModifiedBy,
				Modified = GETDATE(),ReportDate=CAST(CONCAT(CAST(Year AS VARCHAR(4)), '-',CAST(MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE) WHERE Id=@Id
			SET @Output = 'Updated'
		END
	ELSE
		BEGIN
		DECLARE @newId int
			INSERT INTO tblReport10(Hospital_Id,LightHouseHospitalId,MonthIndex,[MonthName],[Year],ReportName,
			Details,Field1,Field2,Field3,Field4,Field5,Remarks,FormStatus,Created,CreatedBy,
			Modified,ModifiedBy,ReportDate) Values(@Hospital_Id,@LightHouseHospitalId,@MonthIndex,@MonthName,@Year,@ReportName,
			@Details,@Field1,@Field2,@Field3,@Field4,@Field5,@Remarks,@FormStatus,GETDATE(),@ModifiedBy,
			GETDATE(),@ModifiedBy,CAST(CONCAT(CAST(@Year AS VARCHAR(4)), '-',CAST(@MonthIndex+1 AS VARCHAR(2)), '-',CAST(15 AS VARCHAR(2))) AS DATE))
			select @newId = Scope_Identity() 
			SET @Output = @newId
		END
END

ALTER Procedure [dbo].[usp_exportFormRecordsByRange]
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
		SET @DynamicSQL = N'SELECT row_number() over(order by tblCOE.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        ReportName as [COE (Name)],NoOfNursesAttended as [Number of Nurses attended],ConsultantsInvolved as [Consultants Involved],NatureOfActivityDone as [Nature Of Activity Done],ConsultantFeedback as [Consultant Feedback],ActionTaken as [Action taken Post Feedback],AdditionalMentions as [Any Additional Mentions],
        Remarks,FormStatus as [Form Status],FORMAT(tblCOE.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblCOE.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL02'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by tblSOP.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],
        NoOfNursesTrained as [Number of Nurses trained],NoOfNursesCompetencyChecked as [Number of Nurses competency checked],NoOfNursesPassed as [Number of Nurses passed in first attempt],NoOfNursesRetrained as [Number of Nurses retrained],ConsultantFeedback AS [Consultant Feedback],ConsultantInvolved As [Consultant Involved],AdditionalMentions as [Any Additional Mentions],
        Remarks,FormStatus as [Form Status],FORMAT(tblSOP.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblSOP.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL03'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by tblServiceExcellence.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Participant as [Participant Type],
        NoOfPatients as [Number of Participants],PatientFamilyFeedback as [Patient/Family Feedback], StaffFeedback as [Staff Feedback],ConsultantFeedback as [Consultant Feedback],
        Remarks,FormStatus as [Form Status],FORMAT(tblServiceExcellence.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblServiceExcellence.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL04'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by tblConsultantConnect.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        SelectionType as [Selection of Consultant],ConsultantsInvolved as [Consultants involved],ConsultantComplaints as [Complaints / Suggestions],PostComplaintAction as [Feedback post action taken with duration of the closure],ConsultantFeedback AS [Consultant Feedback post action taken],AdditionalMentions As [Any Additional Mention],
        Remarks,FormStatus as [Form Status],FORMAT(tblConsultantConnect.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblConsultantConnect.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL05'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblProcessImprovement.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],
        CriticalLabValue as [Critical Lab value],BloodTransfusion as [Blood Transfusion],POCT as [POCT],ClinicalHandOff as [Clinical Hand Off ],ComplianceMedicationErrors AS [Compliance to Medication Errors],ComplianceBloodSugar AS [Compliance to Blood Sugar],ReasonsNotAchieve As [Reasons for not achieving the targets amongst any of the processes],AdditionalMentions as [Any Additional Mentions],
        Remarks,FormStatus as [Form Status],FORMAT(tblProcessImprovement.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblProcessImprovement.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL06'
	BEGIN
	    SET @DynamicSQL = N'SELECT row_number() over(order by  tblTopIncidents.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        NameOfIncident as [Name of the Incident],NumberOfIncidents as [Number of Incidents occurred],ActionTaken as [Action taken],MedicationError as [Medication error],NSI as [NSI],PatientFall as [NSI],SampleError as [Sample error],
        Remarks,FormStatus as [Form Status],FORMAT(tblTopIncidents.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblTopIncidents.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL07'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblTopComplaints.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        OrderNumber as [OrderNumber],NameOfComplaint as [Name of the Complaint],NumberOfComplaints as [Number of Complaints occurred],ActionTaken as [Action taken],
        Remarks,FormStatus as [Form Status],FORMAT(tblTopComplaints.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblTopComplaints.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL08'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblWOW.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        SC_MT_Expenditure as [Monthly Target Expenditure],SC_TargetSaving as [Target Saving],SC_Achievement as [Achievement],ComplianceBilling_Target as [Target],ComplianceBilling_Achievement as [Achieved],
        Remarks,FormStatus as [Form Status],FORMAT(tblWOW.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblWOW.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL09'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblVOC.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        CnCNursingStaff_Target as [Courtesy and compassion of nursing staff],HowPainManaged_Target as [How well pain was managed],CallBellResponse_Target as [Call bell response],CnCNursingStaff_Score as [Courtesy and compassion of nursing staff],HowPainManaged_Score as [How well pain was managed],CallBellResponse_Score as [Call bell response],
        Remarks,FormStatus as [Form Status],FORMAT(tblVOC.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblVOC.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL10'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblANICE.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        Score as [Score],
        Remarks,FormStatus as [Form Status],FORMAT(tblANICE.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblANICE.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL11'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblManPower.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        SanctionedManpower as [Sanctioned Manpower],ExistingManpower as [Existing Manpower],
        Remarks,FormStatus as [Form Status],FORMAT(tblManPower.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblManPower.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL12'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblTrainingInitiatives.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        TopicsCovered as [Topics Covered],PercentageCompliance as [Percentage Compliance],
        Remarks,FormStatus as [Form Status],FORMAT(tblTrainingInitiatives.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblTrainingInitiatives.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL13'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblEnglishCommunication.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        NoOfNurseTrained as [Number of Nurses trained],Initiatives as [Initiatives to improve English Communication],Outcome as [Outcomes of SSLC/Buddy mentor progamme],
        Remarks,FormStatus as [Form Status],FORMAT(tblEnglishCommunication.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblEnglishCommunication.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL14'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReinforcementCommunication.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        NoOfNurseTrained as [Number of Nurses trained],Theme as [Theme for the month],Outcome as [Outcomes],
        Remarks,FormStatus as [Form Status],FORMAT(tblReinforcementCommunication.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReinforcementCommunication.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL15'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblTownHall.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        PointsOfDiscussion as [Points of Discussion],NoOfAttendee as [Number of Attendees],
        Remarks,FormStatus as [Form Status],FORMAT(tblTownHall.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblTownHall.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL16'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblCFT.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        Members as [Name and detail of the member(s)],Details as [Details of the participation],Learnings as [Learning/Best practices from audits that can be implemented across the group],
        Remarks,FormStatus as [Form Status],FORMAT(tblCFT.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblCFT.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL17'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblRP.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        Members as [Name and detail of the member(s)],TopicsAssigned as [TopicsAssigned],
        Remarks,FormStatus as [Form Status],FORMAT(tblRP.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblRP.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL18'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblAcademicCouncil.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        Members as [Name and detail of the member(s)],TopicsAssigned as [TopicsAssigned],
        Remarks,FormStatus as [Form Status],FORMAT(tblAcademicCouncil.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblAcademicCouncil.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL19'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblBestPractices.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        BestPractices as [Best Practices],
        Remarks,FormStatus as [Form Status],FORMAT(tblBestPractices.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblBestPractices.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL20'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblAchievements.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        Details as [Details of the Achievement],
        Remarks,FormStatus as [Form Status],FORMAT(tblAchievements.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblAchievements.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL21'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblAppreciation.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        Details as [Details of the Appreciation],
        Remarks,FormStatus as [Form Status],FORMAT(tblAppreciation.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblAppreciation.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL22'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblChallenges.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        Challenges as [Challenges],
        Remarks,FormStatus as [Form Status],FORMAT(tblChallenges.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblChallenges.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	ELSE IF @FormCode = 'TBL23'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblProcessStandardization.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],
        PCI as [Percentage compliance of implementation],Impact as [Impact],
        Remarks,FormStatus as [Form Status],FORMAT(tblProcessStandardization.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblProcessStandardization.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

	ELSE IF @FormCode = 'TBL24'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblNHNE.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],
        DOC as [Details of the custodians],PCT as [Percentage compliance  of training],NoOfIBI as [Number of incidents before implementation], Remarks,FormStatus as [Form Status],FORMAT(tblNHNE.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblNHNE.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

	ELSE IF @FormCode = 'TBL25'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblQualityImprovement.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],
        DetailsOfCustodians as [Details of the custodians],PCT as [Percentage compliance  of training],
        Remarks,FormStatus as [Form Status],FORMAT(tblQualityImprovement.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblQualityImprovement.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

	ELSE IF @FormCode = 'TBL26'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblDigitization.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,
        TechnologyAdopted as [Technology adopted ],PCT as [Percentage compliance  of training],Impact as [Impact], Remarks,FormStatus as [Form Status],FORMAT(tblDigitization.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblDigitization.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

	ELSE IF @FormCode = 'TBL27'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblStaffEngagement.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],
        NumberOfNursesInvolved as [Number of nurses involved],PCA as [Percentage Complaince to the activity], Remarks,FormStatus as [Form Status],FORMAT(tblStaffEngagement.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblStaffEngagement.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END
	
	ELSE IF @FormCode = 'TBL28'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport1.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Field1 as [Column1], Field2 as [Column2], Field3 as [Column3],Remarks,FormStatus as [Form Status],FORMAT(tblReport1.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport1.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

			ELSE IF @FormCode = 'TBL29'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport2.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Field1 as [Column1], Field2 as [Column2], Field3 as [Column3],Remarks,FormStatus as [Form Status],FORMAT(tblReport2.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport2.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

			ELSE IF @FormCode = 'TBL30'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport3.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Field1 as [Column1], Field2 as [Column2], Field3 as [Column3],Remarks,FormStatus as [Form Status],FORMAT(tblReport3.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport3.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

			ELSE IF @FormCode = 'TBL31'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport4.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Field1 as [Column1], Field2 as [Column2], Field3 as [Column3],Remarks,FormStatus as [Form Status],FORMAT(tblReport4.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport4.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

			ELSE IF @FormCode = 'TBL32'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport5.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Field1 as [Column1], Field2 as [Column2], Field3 as [Column3],Remarks,FormStatus as [Form Status],FORMAT(tblReport5.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport5.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

			ELSE IF @FormCode = 'TBL33'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport6.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Field1 as [Column1], Field2 as [Column2], Field3 as [Column3],Remarks,FormStatus as [Form Status],FORMAT(tblReport6.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport6.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

			ELSE IF @FormCode = 'TBL34'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport7.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Field1 as [Column1], Field2 as [Column2], Field3 as [Column3],Remarks,FormStatus as [Form Status],FORMAT(tblReport7.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport7.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

			ELSE IF @FormCode = 'TBL35'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport8.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Field1 as [Column1], Field2 as [Column2], Field3 as [Column3],Remarks,FormStatus as [Form Status],FORMAT(tblReport8.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport8.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

			ELSE IF @FormCode = 'TBL36'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport9.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Field1 as [Column1], Field2 as [Column2], Field3 as [Column3],Remarks,FormStatus as [Form Status],FORMAT(tblReport9.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport9.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

			ELSE IF @FormCode = 'TBL37'
	BEGIN
		SET @DynamicSQL = N'SELECT row_number() over(order by  tblReport10.Id) As [S.No],HospitalName As [Units],Region,MonthName as [Month],Year,ReportName as [Report Name],Details as [Details], Field1 as [Column1], Field2 as [Column2], Field3 as [Column3],Remarks,FormStatus as [Form Status],FORMAT(tblReport10.Modified,''dd-MMM-yyyy hh:mm tt'') as [Submitted on],tblReport10.ModifiedBy as [Sumitted by],(SELECT CONCAT(COUNT(*),'' files;'','+@Table_Name+'.Id) from '+@Table_Name+'_Attachments Where Form_Id='+@Table_Name+'.Id)As Attachments,ReportDate FROM '+@Table_Name+' left join tblHospitalMasters on '+@Table_Name+'.LightHouseHospitalId=tblHospitalMasters.HospitalId WHERE LightHouseHospitalId In('+@LightHouseHospitalId+') AND ReportDate BETWEEN '''+ @StartDate +''' AND '''+ @EndDate +''''
	END

	EXECUTE sp_executesql @DynamicSQL
END