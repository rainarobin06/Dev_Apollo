using Apollo.Web.NursingApp.Models;
using Apollo.Web.NursingApp.ViewModel;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using static Apollo.Web.NursingApp.DAL.DataManager;

namespace Apollo.Web.NursingApp.DAL
{
    public class UtilityDAL
    {
        public string AddSession(SessionDetail objSessionDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();
                Params.Add("UserId", objSessionDetail.UserId);
                Params.Add("UserName", GetCurrentUserName());
                Params.Add("HospitalMapped", objSessionDetail.HospitalsMapped);
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_addSession", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                AddError(objError);
                return null;
            }
        }

        public SessionVM CheckSession(string userID)
        {
            DBManager objDBManager = new DBManager();
            try
            {
                var Params = new DynamicParameters();
                Params.Add("UserId", userID);
                SessionVM ovjResult = objDBManager.GetEntity<SessionVM>("usp_checkSession", Params, SqlType.StoredProcedure);
                return ovjResult;
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                AddError(objError);
                return null;
            }
        }

        public string GetTableNameFromFormCode(string formCode)
        {
            DBManager objDBManager = new DBManager();
            try
            {
                var Params = new DynamicParameters();
                Params.Add("FormName", formCode);
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_getTableNameFromFormCode", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                AddError(objError);
                return null;
            }
        }

        public List<HospitalMaster> GetAllHospitals()
        {
            DBManager objDBManager = new DBManager();
            try
            {
                var Params = new DynamicParameters();
                return objDBManager.GetEntityList<HospitalMaster>("usp_getAllHospitals", Params, SqlType.StoredProcedure);
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                AddError(objError);
                return null;
            }
        }

        public List<MasterAllTables> GetAllReports()

        {
            DBManager objDBManager = new DBManager();
            try
            {
                var Params = new DynamicParameters();
                List<MasterAllTables> listMasterAllTable = objDBManager.GetEntityList<MasterAllTables>("usp_getAllReports", Params, SqlType.StoredProcedure);
                return listMasterAllTable;
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
                AddError(objError);
                return null;
            }
        }

        public List<ErrorLog> GetErrorLogs()

        {
            DBManager objDBManager = new DBManager();
            try
            {
                var Params = new DynamicParameters();
                List<ErrorLog> listErrorLog = objDBManager.GetEntityList<ErrorLog>("usp_getErrorLogs", Params, SqlType.StoredProcedure);
                return listErrorLog;
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                AddError(objError);
                return null;
            }
        }

        public string AddError(ErrorLog objSessionDetail)
        {
            DBManager objDBManager = new DBManager();

            try
            {
                var Params = new DynamicParameters();

                Params.Add("Module", objSessionDetail.Module);
                Params.Add("Method", objSessionDetail.Method);
                Params.Add("ErrorMessage", objSessionDetail.ErrorMessage);
                Params.Add("StackTrace", objSessionDetail.StackTrace);
                Params.Add("CreatedBy", GetCurrentUserName());
                Params.Add("Output", string.Empty, DbType.String, ParameterDirection.Output);
                objDBManager.Execute("usp_insertErrorLog", Params, SqlType.StoredProcedure);
                return Params.Get<string>("Output");
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                AddError(objError);
                return null;
            }
        }

        public string GetCurrentUserName()
        {
            string userName = string.Empty;
            try
            {
                if (HttpContext.Current.Session["user_id"] != null)
                {
                    userName = HttpContext.Current.Session["user_name"].ToString() + "(" + HttpContext.Current.Session["user_id"].ToString() + ")";
                }
            }
            catch (Exception)
            {
                return null;
            }
            return userName;
        }
    }
}