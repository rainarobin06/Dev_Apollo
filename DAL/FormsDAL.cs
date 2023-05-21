using Apollo.Web.NursingApp.Models;
using Apollo.Web.NursingApp.ViewModel;
using Dapper;
using Microsoft.SharePoint.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Security;
using System.Web;
using static Apollo.Web.NursingApp.DAL.DataManager;

using SP = Microsoft.SharePoint.Client;

namespace Apollo.Web.NursingApp.DAL
{
    public class FormsDAL
    {
        private readonly UtilityDAL objUtilityDAL = new UtilityDAL();

        public List<T> GetFormData<T>(string FormCode, int LightHouseHospitalId, int MonthIndex, int Year)
        {
            DBManager objDBManager = new DBManager();
            try
            {
                var Params = new DynamicParameters();
                Params.Add("FormCode", FormCode);
                Params.Add("LightHouseHospitalId", LightHouseHospitalId);
                Params.Add("MonthIndex", MonthIndex);
                Params.Add("Year", Year);
                return objDBManager.GetEntityList<T>("usp_getFormData", Params, SqlType.StoredProcedure);
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog
                {
                    CreatedBy = string.Empty,
                    ErrorMessage = ex.Message,
                    StackTrace = ex.StackTrace,
                    Module = this.GetType().Name,
                    Method = System.Reflection.MethodBase.GetCurrentMethod().Name
                };
                objUtilityDAL.AddError(objError);
                throw;
            }
        }

        #region Save Form Data

        public string AddAcdemicCouncil(AcademicCouncil objAcademicCouncilDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objAcademicCouncilDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objAcademicCouncilDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objAcademicCouncilDetail.MonthIndex);
                Params.Add("MonthName", objAcademicCouncilDetail.MonthName);
                Params.Add("Year", objAcademicCouncilDetail.Year);
                Params.Add("Members", objAcademicCouncilDetail.Members);
                Params.Add("TopicsAssigned", objAcademicCouncilDetail.TopicsAssigned);
                Params.Add("Remarks", objAcademicCouncilDetail.Remarks);
                Params.Add("FormStatus", objAcademicCouncilDetail.FormStatus);
                Params.Add("IsActive", objAcademicCouncilDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("[usp_insertupdateAcademicCouncil]", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog
                {
                    CreatedBy = string.Empty,
                    ErrorMessage = ex.Message,
                    StackTrace = ex.StackTrace,
                    Module = this.GetType().Name,
                    Method = System.Reflection.MethodBase.GetCurrentMethod().Name
                };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddAchievements(Achievements objAchievementsDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objAchievementsDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objAchievementsDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objAchievementsDetail.MonthIndex);
                Params.Add("MonthName", objAchievementsDetail.MonthName);
                Params.Add("Year", objAchievementsDetail.Year);
                Params.Add("Details", objAchievementsDetail.Details);
                Params.Add("Remarks", objAchievementsDetail.Remarks);
                Params.Add("FormStatus", objAchievementsDetail.FormStatus);
                Params.Add("IsActive", objAchievementsDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateAchievements", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddAnice(ANICE objAniceDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objAniceDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objAniceDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objAniceDetail.MonthIndex);
                Params.Add("MonthName", objAniceDetail.MonthName);
                Params.Add("Year", objAniceDetail.Year);
                Params.Add("Score", objAniceDetail.Score);
                Params.Add("Remarks", objAniceDetail.Remarks);
                Params.Add("FormStatus", objAniceDetail.FormStatus);
                Params.Add("IsActive", objAniceDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateANICE", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddAppreciation(Appreciation objAppreciationDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objAppreciationDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objAppreciationDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objAppreciationDetail.MonthIndex);
                Params.Add("MonthName", objAppreciationDetail.MonthName);
                Params.Add("Year", objAppreciationDetail.Year);
                Params.Add("Details", objAppreciationDetail.Details);
                Params.Add("Remarks", objAppreciationDetail.Remarks);
                Params.Add("FormStatus", objAppreciationDetail.FormStatus);
                Params.Add("IsActive", objAppreciationDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateAppreciation", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddBestPractices(BestPractice objBestPracticesDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objBestPracticesDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objBestPracticesDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objBestPracticesDetail.MonthIndex);
                Params.Add("MonthName", objBestPracticesDetail.MonthName);
                Params.Add("Year", objBestPracticesDetail.Year);
                Params.Add("BestPractices", objBestPracticesDetail.BestPractices);
                Params.Add("Remarks", objBestPracticesDetail.Remarks);
                Params.Add("FormStatus", objBestPracticesDetail.FormStatus);
                Params.Add("IsActive", objBestPracticesDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateBestPractices", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddCFT(CFT objCFTDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objCFTDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objCFTDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objCFTDetail.MonthIndex);
                Params.Add("MonthName", objCFTDetail.MonthName);
                Params.Add("Year", objCFTDetail.Year);
                Params.Add("Members", objCFTDetail.Members);
                Params.Add("Details", objCFTDetail.Details);
                Params.Add("Learnings", objCFTDetail.Learnings);
                Params.Add("Remarks", objCFTDetail.Remarks);
                Params.Add("FormStatus", objCFTDetail.FormStatus);
                Params.Add("IsActive", objCFTDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateCFT", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddRP(RP objRPDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objRPDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objRPDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objRPDetail.MonthIndex);
                Params.Add("MonthName", objRPDetail.MonthName);
                Params.Add("Year", objRPDetail.Year);
                Params.Add("Members", objRPDetail.Members);
                Params.Add("TopicsAssigned", objRPDetail.TopicsAssigned);
                Params.Add("Remarks", objRPDetail.Remarks);
                Params.Add("FormStatus", objRPDetail.FormStatus);
                Params.Add("IsActive", objRPDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateRP", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddChallenges(Challenge objChallengesDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objChallengesDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objChallengesDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objChallengesDetail.MonthIndex);
                Params.Add("MonthName", objChallengesDetail.MonthName);
                Params.Add("Year", objChallengesDetail.Year);
                Params.Add("Challenges", objChallengesDetail.Challenges);
                Params.Add("Remarks", objChallengesDetail.Remarks);
                Params.Add("FormStatus", objChallengesDetail.FormStatus);
                Params.Add("IsActive", objChallengesDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateChallenges", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddConsultConnect(ConsultantConnect objConsultConnectDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                if (string.IsNullOrEmpty(objConsultConnectDetail.ConsultantsInvolved) && string.IsNullOrEmpty(objConsultConnectDetail.ConsultantComplaints) && string.IsNullOrEmpty(objConsultConnectDetail.PostComplaintAction) && string.IsNullOrEmpty(objConsultConnectDetail.ConsultantFeedback))
                {
                    //return;
                    return null;
                }
                else
                {
                    var Params = new DynamicParameters();
                    Params.Add("Id", objConsultConnectDetail.Id);
                    Params.Add("Hospital_Id", objConsultConnectDetail.Hospital_Id);
                    Params.Add("LightHouseHospitalId", objConsultConnectDetail.LightHouseHospitalId);
                    Params.Add("MonthIndex", objConsultConnectDetail.MonthIndex);
                    Params.Add("MonthName", objConsultConnectDetail.MonthName);
                    Params.Add("Year", objConsultConnectDetail.Year);
                    Params.Add("SelectionType", objConsultConnectDetail.SelectionType);
                    Params.Add("ConsultantsInvolved", objConsultConnectDetail.ConsultantsInvolved);
                    Params.Add("ConsultantComplaints", objConsultConnectDetail.ConsultantComplaints);
                    Params.Add("PostComplaintAction", objConsultConnectDetail.PostComplaintAction);
                    Params.Add("ConsultantFeedback", objConsultConnectDetail.ConsultantFeedback);
                    Params.Add("AdditionalMentions", objConsultConnectDetail.AdditionalMentions);
                    Params.Add("Remarks", objConsultConnectDetail.Remarks);
                    Params.Add("FormStatus", objConsultConnectDetail.FormStatus);
                    Params.Add("IsActive", objConsultConnectDetail.IsActive);
                    Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                    Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                    objDBManager.Execute("usp_insertupdateConsultantConnect", Params, SqlType.StoredProcedure);
                    return Params.Get<string>("Output");
                }
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddEnglishCommunication(EnglishCommunication objEnglishCommunicationDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objEnglishCommunicationDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objEnglishCommunicationDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objEnglishCommunicationDetail.MonthIndex);
                Params.Add("MonthName", objEnglishCommunicationDetail.MonthName);
                Params.Add("Year", objEnglishCommunicationDetail.Year);
                Params.Add("NoOfNurseTrained", objEnglishCommunicationDetail.NoOfNurseTrained);
                Params.Add("Initiatives", objEnglishCommunicationDetail.Initiatives);
                Params.Add("Outcome", objEnglishCommunicationDetail.Outcome);
                Params.Add("Remarks", objEnglishCommunicationDetail.Remarks);
                Params.Add("FormStatus", objEnglishCommunicationDetail.FormStatus);
                Params.Add("IsActive", objEnglishCommunicationDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateEnglishCommunication", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddManPower(ManPower objManPowerDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objManPowerDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objManPowerDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objManPowerDetail.MonthIndex);
                Params.Add("MonthName", objManPowerDetail.MonthName);
                Params.Add("Year", objManPowerDetail.Year);
                Params.Add("SanctionedManpower", objManPowerDetail.SanctionedManpower);
                Params.Add("ExistingManpower", objManPowerDetail.ExistingManpower);
                Params.Add("Remarks", objManPowerDetail.Remarks);
                Params.Add("FormStatus", objManPowerDetail.FormStatus);
                Params.Add("IsActive", objManPowerDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateManPower", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddProcessImprovement(ProcessImprovement objProcessImprovementDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objProcessImprovementDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objProcessImprovementDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objProcessImprovementDetail.MonthIndex);
                Params.Add("MonthName", objProcessImprovementDetail.MonthName);
                Params.Add("Year", objProcessImprovementDetail.Year);
                Params.Add("ReportName", objProcessImprovementDetail.ReportName);
                Params.Add("CriticalLabValue", objProcessImprovementDetail.CriticalLabValue);
                Params.Add("BloodTransfusion", objProcessImprovementDetail.BloodTransfusion);
                Params.Add("Poct", objProcessImprovementDetail.POCT);
                Params.Add("ClinicalHandOff", objProcessImprovementDetail.ClinicalHandOff);
                Params.Add("ComplianceMedicationErrors", objProcessImprovementDetail.ComplianceMedicationErrors);
                Params.Add("ComplianceBloodSugar", objProcessImprovementDetail.ComplianceBloodSugar);
                Params.Add("ReasonsNotAchieve", objProcessImprovementDetail.ReasonsNotAchieve);
                Params.Add("AdditionalMentions", objProcessImprovementDetail.AdditionalMentions);
                Params.Add("Remarks", objProcessImprovementDetail.Remarks);
                Params.Add("FormStatus", objProcessImprovementDetail.FormStatus);
                Params.Add("IsActive", objProcessImprovementDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateProcessImprovement", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddReinforcementCommunication(ReinforcementCommunication objReinforcementCommunicationDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objReinforcementCommunicationDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objReinforcementCommunicationDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objReinforcementCommunicationDetail.MonthIndex);
                Params.Add("MonthName", objReinforcementCommunicationDetail.MonthName);
                Params.Add("Year", objReinforcementCommunicationDetail.Year);
                Params.Add("NoOfNursesTrained", objReinforcementCommunicationDetail.NoOfNurseTrained);
                Params.Add("Theme", objReinforcementCommunicationDetail.Theme);
                Params.Add("Outcome", objReinforcementCommunicationDetail.Outcome);
                Params.Add("Remarks", objReinforcementCommunicationDetail.Remarks);
                Params.Add("FormStatus", objReinforcementCommunicationDetail.FormStatus);
                Params.Add("IsActive", objReinforcementCommunicationDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateReinforcementCommunication", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddServiceExcellence(ServiceExcellence objServiceExcellenceDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Id", objServiceExcellenceDetail.Id);
                Params.Add("Hospital_Id", objServiceExcellenceDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objServiceExcellenceDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objServiceExcellenceDetail.MonthIndex);
                Params.Add("MonthName", objServiceExcellenceDetail.MonthName);
                Params.Add("Year", objServiceExcellenceDetail.Year);
                Params.Add("ReportName", objServiceExcellenceDetail.ReportName);
                Params.Add("NoOfPatients", objServiceExcellenceDetail.NoOfPatients);
                Params.Add("Participant", objServiceExcellenceDetail.Participant);
                Params.Add("PatientFamilyFeedback", objServiceExcellenceDetail.PatientFamilyFeedback);
                Params.Add("StaffFeedback", objServiceExcellenceDetail.StaffFeedback);
                Params.Add("ConsultantFeedback", objServiceExcellenceDetail.ConsultantFeedback);
                Params.Add("Remarks", objServiceExcellenceDetail.Remarks);
                Params.Add("FormStatus", objServiceExcellenceDetail.FormStatus);
                Params.Add("IsActive", objServiceExcellenceDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateServiceExcellence", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddSOP(SOP objSOPDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Id", objSOPDetail.Id);
                Params.Add("Hospital_Id", objSOPDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objSOPDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objSOPDetail.MonthIndex);
                Params.Add("MonthName", objSOPDetail.MonthName);
                Params.Add("Year", objSOPDetail.Year);
                Params.Add("ReportName", objSOPDetail.ReportName);
                Params.Add("NoOfNursesTrained", objSOPDetail.NoOfNursesTrained);
                Params.Add("NoOfNursesCompetencyChecked", objSOPDetail.NoOfNursesCompetencyChecked);
                Params.Add("NoOfNursesPassed", objSOPDetail.NoOfNursesPassed);
                Params.Add("NoOfNursesRetrained", objSOPDetail.NoOfNursesRetrained);
                Params.Add("ConsultantInvolved", objSOPDetail.ConsultantInvolved);
                Params.Add("ConsultantFeedback", objSOPDetail.ConsultantFeedback);
                Params.Add("AdditionalMentions", objSOPDetail.AdditionalMentions);
                Params.Add("Remarks", objSOPDetail.Remarks);
                Params.Add("FormStatus", objSOPDetail.FormStatus);
                Params.Add("IsActive", objSOPDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateSOP", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddCOE(COE objCOEDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Id", objCOEDetail.Id);
                Params.Add("Hospital_Id", objCOEDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objCOEDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objCOEDetail.MonthIndex);
                Params.Add("MonthName", objCOEDetail.MonthName);
                Params.Add("Year", objCOEDetail.Year);
                Params.Add("ReportName", objCOEDetail.ReportName);
                Params.Add("NoOfNursesAttended", objCOEDetail.NoOfNursesAttended);
                Params.Add("ConsultantsInvolved", objCOEDetail.ConsultantsInvolved);
                Params.Add("NatureOfActivityDone", objCOEDetail.NatureOfActivityDone);
                Params.Add("ConsultantFeedback", objCOEDetail.ConsultantFeedback);
                Params.Add("ActionTaken", objCOEDetail.ActionTaken);
                Params.Add("AdditionalMentions", objCOEDetail.AdditionalMentions);
                Params.Add("Remarks", objCOEDetail.Remarks);
                Params.Add("FormStatus", objCOEDetail.FormStatus);
                Params.Add("IsActive", objCOEDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                //long insertedId = objDBManager.GetIdentityAfterInsert("usp_insertupdateCOE", Params, SqlType.StoredProcedure);
                //return insertedId.ToString();
                objDBManager.Execute("usp_insertupdateCOE", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddTopComplaints(TopComplaints objTopComplaintsDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objTopComplaintsDetail.Hospital_Id);
                Params.Add("Id", objTopComplaintsDetail.Id);
                Params.Add("LightHouseHospitalId", objTopComplaintsDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objTopComplaintsDetail.MonthIndex);
                Params.Add("MonthName", objTopComplaintsDetail.MonthName);
                Params.Add("Year", objTopComplaintsDetail.Year);
                Params.Add("OrderNumber", objTopComplaintsDetail.OrderNumber);
                Params.Add("NameOfComplaint", objTopComplaintsDetail.NameOfComplaint);
                Params.Add("NumberOfComplaints", objTopComplaintsDetail.NumberOfComplaints);
                Params.Add("Actiontaken", objTopComplaintsDetail.ActionTaken);
                Params.Add("Remarks", objTopComplaintsDetail.Remarks);
                Params.Add("FormStatus", objTopComplaintsDetail.FormStatus);
                Params.Add("IsActive", objTopComplaintsDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateTopComplaints", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddTopIncidents(TopIncidents objTopIncidentsDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objTopIncidentsDetail.Hospital_Id);
                Params.Add("Id", objTopIncidentsDetail.Id);
                Params.Add("LightHouseHospitalId", objTopIncidentsDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objTopIncidentsDetail.MonthIndex);
                Params.Add("MonthName", objTopIncidentsDetail.MonthName);
                Params.Add("Year", objTopIncidentsDetail.Year);
                Params.Add("OrderNumber", objTopIncidentsDetail.OrderNumber);
                Params.Add("NameOfIncident", objTopIncidentsDetail.NameOfIncident);
                //Params.Add("NumberOfIncidents", objTopIncidentsDetail.NumberOfIncidents);
                Params.Add("NumberOfIncidents", objTopIncidentsDetail.NumberOfIncidents);
                Params.Add("Actiontaken", objTopIncidentsDetail.ActionTaken);
                Params.Add("MedicationError", objTopIncidentsDetail.MedicationError);
                Params.Add("NSI", objTopIncidentsDetail.NSI);
                Params.Add("PatientFall", objTopIncidentsDetail.PatientFall);
                Params.Add("SampleError", objTopIncidentsDetail.SampleError);
                Params.Add("Remarks", objTopIncidentsDetail.Remarks);
                Params.Add("FormStatus", objTopIncidentsDetail.FormStatus);
                Params.Add("IsActive", objTopIncidentsDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateTopIncidents", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddTownHall(TownHall objTownHallDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objTownHallDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objTownHallDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objTownHallDetail.MonthIndex);
                Params.Add("MonthName", objTownHallDetail.MonthName);
                Params.Add("Year", objTownHallDetail.Year);
                Params.Add("NoOfAttendee", objTownHallDetail.NoOfAttendee);
                Params.Add("PointsOfDiscussion", objTownHallDetail.PointsOfDiscussion);
                Params.Add("Remarks", objTownHallDetail.Remarks);
                Params.Add("FormStatus", objTownHallDetail.FormStatus);
                Params.Add("IsActive", objTownHallDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateTownHall", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddProcessStandardization(ProcessStandardization objProcessStandardizationDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objProcessStandardizationDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objProcessStandardizationDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objProcessStandardizationDetail.MonthIndex);
                Params.Add("MonthName", objProcessStandardizationDetail.MonthName);
                Params.Add("Year", objProcessStandardizationDetail.Year);
                Params.Add("ReportName", objProcessStandardizationDetail.ReportName);
                Params.Add("PCI", objProcessStandardizationDetail.PCI);
                Params.Add("Impact", objProcessStandardizationDetail.Impact);
                Params.Add("Remarks", objProcessStandardizationDetail.Remarks);
                Params.Add("FormStatus", objProcessStandardizationDetail.FormStatus);
                Params.Add("IsActive", objProcessStandardizationDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateProcessStandardization", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddNHNE(NHNE objNHNEDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objNHNEDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objNHNEDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objNHNEDetail.MonthIndex);
                Params.Add("MonthName", objNHNEDetail.MonthName);
                Params.Add("Year", objNHNEDetail.Year);
                Params.Add("ReportName", objNHNEDetail.ReportName);
                Params.Add("DOC", objNHNEDetail.DOC);
                Params.Add("NoOfIBI", objNHNEDetail.NoOfIBI);
                Params.Add("PCT", objNHNEDetail.PCT);
                Params.Add("Remarks", objNHNEDetail.Remarks);
                Params.Add("FormStatus", objNHNEDetail.FormStatus);
                Params.Add("IsActive", objNHNEDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateNHNE", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddQualityImprovement(QualityImprovement objQualityImprovementDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objQualityImprovementDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objQualityImprovementDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objQualityImprovementDetail.MonthIndex);
                Params.Add("MonthName", objQualityImprovementDetail.MonthName);
                Params.Add("Year", objQualityImprovementDetail.Year);
                Params.Add("ReportName", objQualityImprovementDetail.ReportName);
                Params.Add("DetailsOfCustodians", objQualityImprovementDetail.DetailsOfCustodians);
                Params.Add("PCT", objQualityImprovementDetail.PCT);
                Params.Add("Remarks", objQualityImprovementDetail.Remarks);
                Params.Add("FormStatus", objQualityImprovementDetail.FormStatus);
                Params.Add("IsActive", objQualityImprovementDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateQualityImprovement", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddDigitization(Digitization objDigitizationDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objDigitizationDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objDigitizationDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objDigitizationDetail.MonthIndex);
                Params.Add("MonthName", objDigitizationDetail.MonthName);
                Params.Add("Year", objDigitizationDetail.Year);
                Params.Add("TechnologyAdopted", objDigitizationDetail.TechnologyAdopted);
                Params.Add("PCT", objDigitizationDetail.PCT);
                Params.Add("Impact", objDigitizationDetail.Impact);
                Params.Add("Remarks", objDigitizationDetail.Remarks);
                Params.Add("FormStatus", objDigitizationDetail.FormStatus);
                Params.Add("IsActive", objDigitizationDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateDigitization", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddStaffEngagement(StaffEngagement objStaffEngagementDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objStaffEngagementDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objStaffEngagementDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objStaffEngagementDetail.MonthIndex);
                Params.Add("MonthName", objStaffEngagementDetail.MonthName);
                Params.Add("Year", objStaffEngagementDetail.Year);
                Params.Add("ReportName", objStaffEngagementDetail.ReportName);
                Params.Add("NumberOfNursesInvolved", objStaffEngagementDetail.NumberOfNursesInvolved);
                Params.Add("PCA", objStaffEngagementDetail.PCA);
                Params.Add("Remarks", objStaffEngagementDetail.Remarks);
                Params.Add("FormStatus", objStaffEngagementDetail.FormStatus);
                Params.Add("IsActive", objStaffEngagementDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateStaffEngagement", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        #region Dummy Reports

        public string AddReport1(Report1 objReport1Detail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objReport1Detail.Hospital_Id);
                Params.Add("Id", objReport1Detail.Id);
                Params.Add("LightHouseHospitalId", objReport1Detail.LightHouseHospitalId);
                Params.Add("MonthIndex", objReport1Detail.MonthIndex);
                Params.Add("MonthName", objReport1Detail.MonthName);
                Params.Add("Year", objReport1Detail.Year);
                Params.Add("ReportName", objReport1Detail.ReportName);
                Params.Add("Details", objReport1Detail.Details);
                Params.Add("Field1", objReport1Detail.Field1);
                Params.Add("Field2", objReport1Detail.Field2);
                Params.Add("Field3", objReport1Detail.Field3);
                Params.Add("Field4", objReport1Detail.Field4);
                Params.Add("Field5", objReport1Detail.Field5);
                Params.Add("Remarks", objReport1Detail.Remarks);
                Params.Add("FormStatus", objReport1Detail.FormStatus);
                Params.Add("IsActive", objReport1Detail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateReport1", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddReport2(Report2 objReport2Detail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objReport2Detail.Hospital_Id);
                Params.Add("Id", objReport2Detail.Id);
                Params.Add("LightHouseHospitalId", objReport2Detail.LightHouseHospitalId);
                Params.Add("MonthIndex", objReport2Detail.MonthIndex);
                Params.Add("MonthName", objReport2Detail.MonthName);
                Params.Add("Year", objReport2Detail.Year);
                Params.Add("ReportName", objReport2Detail.ReportName);
                Params.Add("Details", objReport2Detail.Details);
                Params.Add("Field1", objReport2Detail.Field1);
                Params.Add("Field2", objReport2Detail.Field2);
                Params.Add("Field3", objReport2Detail.Field3);
                Params.Add("Field4", objReport2Detail.Field4);
                Params.Add("Field5", objReport2Detail.Field5);
                Params.Add("Remarks", objReport2Detail.Remarks);
                Params.Add("FormStatus", objReport2Detail.FormStatus);
                Params.Add("IsActive", objReport2Detail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateReport2", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddReport3(Report3 objReport3Detail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objReport3Detail.Hospital_Id);
                Params.Add("Id", objReport3Detail.Id);
                Params.Add("LightHouseHospitalId", objReport3Detail.LightHouseHospitalId);
                Params.Add("MonthIndex", objReport3Detail.MonthIndex);
                Params.Add("MonthName", objReport3Detail.MonthName);
                Params.Add("Year", objReport3Detail.Year);
                Params.Add("ReportName", objReport3Detail.ReportName);
                Params.Add("Details", objReport3Detail.Details);
                Params.Add("Field1", objReport3Detail.Field1);
                Params.Add("Field2", objReport3Detail.Field2);
                Params.Add("Field3", objReport3Detail.Field3);
                Params.Add("Field4", objReport3Detail.Field4);
                Params.Add("Field5", objReport3Detail.Field5);
                Params.Add("Remarks", objReport3Detail.Remarks);
                Params.Add("FormStatus", objReport3Detail.FormStatus);
                Params.Add("IsActive", objReport3Detail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateReport3", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddReport4(Report4 objReport4Detail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objReport4Detail.Hospital_Id);
                Params.Add("Id", objReport4Detail.Id);
                Params.Add("LightHouseHospitalId", objReport4Detail.LightHouseHospitalId);
                Params.Add("MonthIndex", objReport4Detail.MonthIndex);
                Params.Add("MonthName", objReport4Detail.MonthName);
                Params.Add("Year", objReport4Detail.Year);
                Params.Add("ReportName", objReport4Detail.ReportName);
                Params.Add("Details", objReport4Detail.Details);
                Params.Add("Field1", objReport4Detail.Field1);
                Params.Add("Field2", objReport4Detail.Field2);
                Params.Add("Field3", objReport4Detail.Field3);
                Params.Add("Field4", objReport4Detail.Field4);
                Params.Add("Field5", objReport4Detail.Field5);
                Params.Add("Remarks", objReport4Detail.Remarks);
                Params.Add("FormStatus", objReport4Detail.FormStatus);
                Params.Add("IsActive", objReport4Detail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateReport4", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddReport5(Report5 objReport5Detail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objReport5Detail.Hospital_Id);
                Params.Add("Id", objReport5Detail.Id);
                Params.Add("LightHouseHospitalId", objReport5Detail.LightHouseHospitalId);
                Params.Add("MonthIndex", objReport5Detail.MonthIndex);
                Params.Add("MonthName", objReport5Detail.MonthName);
                Params.Add("Year", objReport5Detail.Year);
                Params.Add("ReportName", objReport5Detail.ReportName);
                Params.Add("Details", objReport5Detail.Details);
                Params.Add("Field1", objReport5Detail.Field1);
                Params.Add("Field2", objReport5Detail.Field2);
                Params.Add("Field3", objReport5Detail.Field3);
                Params.Add("Field4", objReport5Detail.Field4);
                Params.Add("Field5", objReport5Detail.Field5);
                Params.Add("Remarks", objReport5Detail.Remarks);
                Params.Add("FormStatus", objReport5Detail.FormStatus);
                Params.Add("IsActive", objReport5Detail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateReport5", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddReport6(Report6 objReport6Detail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objReport6Detail.Hospital_Id);
                Params.Add("Id", objReport6Detail.Id);
                Params.Add("LightHouseHospitalId", objReport6Detail.LightHouseHospitalId);
                Params.Add("MonthIndex", objReport6Detail.MonthIndex);
                Params.Add("MonthName", objReport6Detail.MonthName);
                Params.Add("Year", objReport6Detail.Year);
                Params.Add("ReportName", objReport6Detail.ReportName);
                Params.Add("Details", objReport6Detail.Details);
                Params.Add("Field1", objReport6Detail.Field1);
                Params.Add("Field2", objReport6Detail.Field2);
                Params.Add("Field3", objReport6Detail.Field3);
                Params.Add("Field4", objReport6Detail.Field4);
                Params.Add("Field5", objReport6Detail.Field5);
                Params.Add("Remarks", objReport6Detail.Remarks);
                Params.Add("FormStatus", objReport6Detail.FormStatus);
                Params.Add("IsActive", objReport6Detail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateReport6", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddReport7(Report7 objReport7Detail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objReport7Detail.Hospital_Id);
                Params.Add("Id", objReport7Detail.Id);
                Params.Add("LightHouseHospitalId", objReport7Detail.LightHouseHospitalId);
                Params.Add("MonthIndex", objReport7Detail.MonthIndex);
                Params.Add("MonthName", objReport7Detail.MonthName);
                Params.Add("Year", objReport7Detail.Year);
                Params.Add("ReportName", objReport7Detail.ReportName);
                Params.Add("Details", objReport7Detail.Details);
                Params.Add("Field1", objReport7Detail.Field1);
                Params.Add("Field2", objReport7Detail.Field2);
                Params.Add("Field3", objReport7Detail.Field3);
                Params.Add("Field4", objReport7Detail.Field4);
                Params.Add("Field5", objReport7Detail.Field5);
                Params.Add("Remarks", objReport7Detail.Remarks);
                Params.Add("FormStatus", objReport7Detail.FormStatus);
                Params.Add("IsActive", objReport7Detail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateReport7", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddReport8(Report8 objReport8Detail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objReport8Detail.Hospital_Id);
                Params.Add("Id", objReport8Detail.Id);
                Params.Add("LightHouseHospitalId", objReport8Detail.LightHouseHospitalId);
                Params.Add("MonthIndex", objReport8Detail.MonthIndex);
                Params.Add("MonthName", objReport8Detail.MonthName);
                Params.Add("Year", objReport8Detail.Year);
                Params.Add("ReportName", objReport8Detail.ReportName);
                Params.Add("Details", objReport8Detail.Details);
                Params.Add("Field1", objReport8Detail.Field1);
                Params.Add("Field2", objReport8Detail.Field2);
                Params.Add("Field3", objReport8Detail.Field3);
                Params.Add("Field4", objReport8Detail.Field4);
                Params.Add("Field5", objReport8Detail.Field5);
                Params.Add("Remarks", objReport8Detail.Remarks);
                Params.Add("FormStatus", objReport8Detail.FormStatus);
                Params.Add("IsActive", objReport8Detail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateReport8", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddReport9(Report9 objReport9Detail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objReport9Detail.Hospital_Id);
                Params.Add("Id", objReport9Detail.Id);
                Params.Add("LightHouseHospitalId", objReport9Detail.LightHouseHospitalId);
                Params.Add("MonthIndex", objReport9Detail.MonthIndex);
                Params.Add("MonthName", objReport9Detail.MonthName);
                Params.Add("Year", objReport9Detail.Year);
                Params.Add("ReportName", objReport9Detail.ReportName);
                Params.Add("Details", objReport9Detail.Details);
                Params.Add("Field1", objReport9Detail.Field1);
                Params.Add("Field2", objReport9Detail.Field2);
                Params.Add("Field3", objReport9Detail.Field3);
                Params.Add("Field4", objReport9Detail.Field4);
                Params.Add("Field5", objReport9Detail.Field5);
                Params.Add("Remarks", objReport9Detail.Remarks);
                Params.Add("FormStatus", objReport9Detail.FormStatus);
                Params.Add("IsActive", objReport9Detail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateReport9", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddReport10(Report10 objReport10Detail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objReport10Detail.Hospital_Id);
                Params.Add("Id", objReport10Detail.Id);
                Params.Add("LightHouseHospitalId", objReport10Detail.LightHouseHospitalId);
                Params.Add("MonthIndex", objReport10Detail.MonthIndex);
                Params.Add("MonthName", objReport10Detail.MonthName);
                Params.Add("Year", objReport10Detail.Year);
                Params.Add("ReportName", objReport10Detail.ReportName);
                Params.Add("Details", objReport10Detail.Details);
                Params.Add("Field1", objReport10Detail.Field1);
                Params.Add("Field2", objReport10Detail.Field2);
                Params.Add("Field3", objReport10Detail.Field3);
                Params.Add("Field4", objReport10Detail.Field4);
                Params.Add("Field5", objReport10Detail.Field5);
                Params.Add("Remarks", objReport10Detail.Remarks);
                Params.Add("FormStatus", objReport10Detail.FormStatus);
                Params.Add("IsActive", objReport10Detail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateReport10", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        #endregion Dummy Reports

        public string AddTrainingInitiatives(TrainingInitiatives objTrainingInitiativesDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objTrainingInitiativesDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objTrainingInitiativesDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objTrainingInitiativesDetail.MonthIndex);
                Params.Add("MonthName", objTrainingInitiativesDetail.MonthName);
                Params.Add("Year", objTrainingInitiativesDetail.Year);
                Params.Add("TopicsCovered", objTrainingInitiativesDetail.TopicsCovered);
                Params.Add("PercentageCompliance", objTrainingInitiativesDetail.PercentageCompliance);
                Params.Add("Remarks", objTrainingInitiativesDetail.Remarks);
                Params.Add("FormStatus", objTrainingInitiativesDetail.FormStatus);
                Params.Add("IsActive", objTrainingInitiativesDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateTrainingInitiatives", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddVOC(VOC objVOCDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objVOCDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objVOCDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objVOCDetail.MonthIndex);
                Params.Add("MonthName", objVOCDetail.MonthName);
                Params.Add("Year", objVOCDetail.Year);
                Params.Add("CnCNursingStaff_Target", objVOCDetail.CnCNursingStaff_Target);
                Params.Add("HowPainManaged_Target", objVOCDetail.HowPainManaged_Target);
                Params.Add("CallBellResponse_Target", objVOCDetail.CallBellResponse_Target);
                Params.Add("CnCNursingStaff_Score", objVOCDetail.CnCNursingStaff_Score);
                Params.Add("HowPainManaged_Score", objVOCDetail.HowPainManaged_Score);
                Params.Add("CallBellResponse_Score", objVOCDetail.CallBellResponse_Score);
                Params.Add("Remarks", objVOCDetail.Remarks);
                Params.Add("FormStatus", objVOCDetail.FormStatus);
                Params.Add("IsActive", objVOCDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateVOC", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string AddWOW(WOW objWOWDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Hospital_Id", objWOWDetail.Hospital_Id);
                Params.Add("LightHouseHospitalId", objWOWDetail.LightHouseHospitalId);
                Params.Add("MonthIndex", objWOWDetail.MonthIndex);
                Params.Add("MonthName", objWOWDetail.MonthName);
                Params.Add("Year", objWOWDetail.Year);
                Params.Add("SC_MT_Expenditure", objWOWDetail.SC_MT_Expenditure);
                Params.Add("TargetSaving", objWOWDetail.SC_TargetSaving);
                Params.Add("SC_Achievement", objWOWDetail.SC_Achievement);
                Params.Add("SC_TargetSaving", objWOWDetail.SC_TargetSaving);
                Params.Add("ComplianceBilling_Target", objWOWDetail.ComplianceBilling_Target);
                Params.Add("ComplianceBilling_Achievement", objWOWDetail.ComplianceBilling_Achievement);
                Params.Add("Remarks", objWOWDetail.Remarks);
                Params.Add("FormStatus", objWOWDetail.FormStatus);
                Params.Add("IsActive", objWOWDetail.IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertupdateWOW", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        #endregion Save Form Data

        #region Attachments

        public string AddAttachment(string formCode, string formId)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                string fileUploadResult = string.Empty;
                foreach (string key in HttpContext.Current.Request.Files)
                {
                    HttpPostedFile postedFile = HttpContext.Current.Request.Files[key];
                    byte[] uploadedFile = new byte[postedFile.InputStream.Length];
                    int fileSize = uploadedFile.Length;
                    postedFile.InputStream.Read(uploadedFile, 0, uploadedFile.Length);
                    string fileContent = Convert.ToBase64String(uploadedFile);
                    var Params = new DynamicParameters();
                    string fileExt = postedFile.FileName.Substring(postedFile.FileName.LastIndexOf("."));
                    Params.Add("FormCode", formCode);
                    Params.Add("Form_Id", formId);
                    Params.Add("file_name", postedFile.FileName);
                    Params.Add("file_ext", fileExt);
                    Params.Add("file_contenttype", postedFile.ContentType);
                    Params.Add("file_content", fileContent);
                    Params.Add("file_size", fileSize);
                    Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                    Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                    objDBManager.Execute("usp_addAttachment", Params, SqlType.StoredProcedure);
                    fileUploadResult = Params.Get<string>("Output");
                }
                return fileUploadResult;
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        #endregion Attachments

        #region Get Attachments

        public List<Models.Attachment> GetAttachments(string formCode, string formId)
        {
            DBManager objDBManager = new DBManager();
            try
            {
                var Params = new DynamicParameters();
                Params.Add("FormCode", formCode);
                Params.Add("Form_Id", formId);
                return objDBManager.GetEntityList<Models.Attachment>("usp_getAttachments", Params, SqlType.StoredProcedure);
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public Models.Attachment GetAttachmentById(string FormCode, string fileId)
        {
            DBManager objDBManager = new DBManager();
            try
            {
                var Params = new DynamicParameters();
                Params.Add("FormCode", FormCode);
                Params.Add("Id", fileId);
                Models.Attachment result = objDBManager.GetEntity<Models.Attachment>("usp_getAttachmentById", Params, SqlType.StoredProcedure);
                return result;
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        #endregion Get Attachments

        public string RemoveAttachment(string formCode, string attachId)
        {
            DBManager objDBManager = new DBManager();
            try
            {
                var Params = new DynamicParameters();
                Params.Add("FormCode", formCode);
                Params.Add("AttachmentId", attachId);
                objDBManager.GetEntityList<Models.Attachment>("usp_removeAttachent", Params, SqlType.StoredProcedure);
                return "Deleted";
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string RemoveEntry(string formCode, string Id)
        {
            DBManager objDBManager = new DBManager();
            try
            {
                var Params = new DynamicParameters();
                Params.Add("FormCode", formCode);
                Params.Add("Id", Id);
                Params.Add("Result", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_deteleEntry", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Result");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string GetAniceScore(ANICEInputVM inputObj)
        {
            string scroreVal = string.Empty;
            try
            {
                AppSettingsReader appsettingsreader = new AppSettingsReader();
                string ANICESiteURL = (string)(new AppSettingsReader().GetValue("ANICESiteURL", typeof(string)));
                string ANICEListName = (string)(new AppSettingsReader().GetValue("ANICEListName", typeof(string)));
                string SPOUserAccount = (string)(new AppSettingsReader().GetValue("SPOUserAccount", typeof(string)));
                string SPOUserAccountPwd = (string)(new AppSettingsReader().GetValue("SPOUserAccountPwd", typeof(string)));
                ClientContext clientContext = new ClientContext(ANICESiteURL);
                SP.List oList = clientContext.Web.Lists.GetByTitle(ANICEListName);
                clientContext.Credentials = new Microsoft.SharePoint.Client.SharePointOnlineCredentials(SPOUserAccount, ConvertToSecureString(SPOUserAccountPwd));
                CamlQuery camlQuery = new CamlQuery
                {
                    ViewXml = "<View><Query><Where><And><And><Eq><FieldRef Name='Month'/><Value Type='Number'>" + inputObj.MonthIndex + "</Value></Eq><Eq><FieldRef Name='Year'/><Value Type='Number'>" + inputObj.Year + "</Value></Eq></And><Eq><FieldRef Name='Location' LookupId='TRUE'/><Value Type='Lookup'>" + inputObj.LocationId + "</Value></Eq></And></Where></Query><RowLimit>1</RowLimit></View>"
                };
                ListItemCollection collListItem = oList.GetItems(camlQuery);
                clientContext.Load(collListItem);
                clientContext.ExecuteQuery();
                foreach (ListItem oListItem in collListItem)
                {
                    scroreVal = oListItem["CumulativePercentage"].ToString();
                }
                return scroreVal;
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public SecureString ConvertToSecureString(string strPassword)
        {
            var secureStr = new SecureString();
            if (strPassword.Length > 0)
            {
                foreach (var c in strPassword) secureStr.AppendChar(c);
            }
            return secureStr;
        }
    }
}