using Apollo.Web.NursingApp.Models;
using Apollo.Web.NursingApp.ViewModel;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using static Apollo.Web.NursingApp.DAL.DataManager;

namespace Apollo.Web.NursingApp.DAL
{
    public class AdminDAL
    {
        private readonly UtilityDAL objUtilityDAL = new UtilityDAL();

        public List<AdminMaster> GetAllAdmin()
        {
            DBManager objDBManager = new DBManager();
            try
            {
                var Params = new DynamicParameters();
                return objDBManager.GetEntityList<AdminMaster>("usp_getAllAdmin", Params, SqlType.StoredProcedure);
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public List<AdminMaster> CheckAdmin(string userID)
        {
            DBManager objDBManager = new DBManager();
            try
            {
                var Params = new DynamicParameters();
                Params.Add("UserId", userID);
                return objDBManager.GetEntityList<AdminMaster>("usp_checkAdmin", Params, SqlType.StoredProcedure);
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string UpdateAdmin(AdminMaster objInput)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Id", objInput.Id);
                Params.Add("UserId", objInput.UserId);
                Params.Add("LoginName", objInput.LoginName);
                Params.Add("CreatedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("ActionType", objInput.ActionType);
                Params.Add("Result", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_addremoveAdmin", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Result");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string UpdateEntryLastDate(HospitalMasterVM objInput)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Id", objInput.Id);
                Params.Add("EntryLastDate", objInput.EntryLastDate);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Result", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_updateLastEntryDate", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Result");
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

        public string UpdateAllEntryLastDate(string Lastdate)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("EntryLastDate", Lastdate);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Result", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_updateAllLastEntryDate", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Result");
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

        public string UpdateVOCTarget(VOCTargetInputVM inputObj)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Id", inputObj.Id);
                Params.Add("VOC_CnCNursingStaff_Target", inputObj.VOC_CnCNursingStaff_Target);
                Params.Add("VOC_HowPainManaged_Target", inputObj.VOC_HowPainManaged_Target);
                Params.Add("VOC_CallBellResponse_Target", inputObj.VOC_CallBellResponse_Target);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Result", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_updateVOCTarget", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Result");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string UpdateWOWTarget(WOWTargetInputVM inputObj)
        {
            DBManager objDBManager = new DBManager();
            try
            {
                var Params = new DynamicParameters();
                Params.Add("Id", inputObj.Id);
                Params.Add("WOW_ComplianceBilling_Target", inputObj.WOW_ComplianceBilling_Target);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Result", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_updateWOWTarget", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Result");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string UpdateHospitalName(HospitalMaster inputObj)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Id", inputObj.Id);
                Params.Add("HospitalName", inputObj.HospitalName);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Result", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_updateHospitalName", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Result");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string UpdateReportName(MasterAllTables inputObj)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Id", inputObj.Id);
                Params.Add("FormName", inputObj.FormName);
                Params.Add("FormDisplayName", inputObj.FormDisplayName);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Result", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_updateReportName", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Result");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string UpdateAniceID(HospitalMasterVM objInput)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Id", objInput.Id);
                Params.Add("AniceID", objInput.AniceId);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Result", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_updateANICEId", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Result");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string ManageHospitalVisiblity(int Id, bool IsActive)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Id", Id);
                Params.Add("IsActive", IsActive);
                Params.Add("ModifiedBy", objUtilityDAL.GetCurrentUserName());
                Params.Add("Result", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_enableDisableHospital", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Result");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public string ManageReportsVisiblity(int Id, bool IsActive)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("Id", Id);
                Params.Add("IsActive", IsActive);

                Params.Add("Result", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_enableDisableReports", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Result");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public List<MasterAllTables> GetAllAdminReports()
        {
            DBManager objDBManager = new DBManager();
            try
            {
                var Params = new DynamicParameters();
                List<MasterAllTables> listMasterAllTables = objDBManager.GetEntityList<MasterAllTables>("usp_getAllAdminReports", Params, SqlType.StoredProcedure);
                return listMasterAllTables;
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public List<HospitalMaster> GetAllAdminHospitals()
        {
            DBManager objDBManager = new DBManager();
            try
            {
                var Params = new DynamicParameters();
                List<HospitalMaster> listHospitalMaster = objDBManager.GetEntityList<HospitalMaster>("usp_getAllAdminHospitals", Params, SqlType.StoredProcedure);
                return listHospitalMaster;
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
    }
}