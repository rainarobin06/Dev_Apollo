using Apollo.Web.NursingApp.Models;
using Apollo.Web.NursingApp.ViewModel;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using static Apollo.Web.NursingApp.DAL.DataManager;

namespace Apollo.Web.NursingApp.DAL
{
    public class ReportsDAL
    {
        private readonly UtilityDAL objUtilityDAL = new UtilityDAL();

        public ExportExcelViewModel GetDataSetExportToExcel(ExportInputVM inputObj)
        {
            try
            {
                List<string> tableHeaders = new List<string>();
                ExportExcelViewModel exportExcelViewModel = new ExportExcelViewModel();
                string domainName = HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Authority);
                DataSet ds = new DataSet();
                string[] formsList = inputObj.ListOfFormCode.Split(',');
                List<MasterAllTables> objMasterTables = new List<MasterAllTables>();
                objMasterTables = objUtilityDAL.GetAllReports();
                foreach (string formId in formsList)
                {
                    MasterAllTables objMaster = objMasterTables.First(x => x.Formcode == formId);
                    DataTable dataTable = GetReportTable(inputObj, formId, objMaster.FormName);
                    if (dataTable != null)
                    {
                        foreach (DataRow row in dataTable.Rows)
                        {
                            int colIndex = 0;
                            foreach (DataColumn column in dataTable.Columns)
                            {
                                if (column.ColumnName == "Attachments")
                                {
                                    string rowVal = row[colIndex].ToString();
                                    if (!rowVal.StartsWith("0 files"))
                                    {
                                        row.SetField(column, domainName + "/attachments/?formCode=" + formId + "&formId=" + rowVal.Split(';')[1]);
                                    }
                                    else
                                    {
                                        row.SetField(column, "");
                                    }
                                }
                                colIndex++;
                            }
                        }
                        tableHeaders.Add(objMaster.FormDisplayName);
                        ds.Tables.Add(dataTable);
                    }
                    else
                    {
                        ErrorLog objError = new ErrorLog
                        {
                            CreatedBy = string.Empty,
                            ErrorMessage = "Data table is null - " + formId,
                            StackTrace = "Data Table is null",
                            Module = this.GetType().Name,
                            Method = System.Reflection.MethodBase.GetCurrentMethod().Name
                        };
                        objUtilityDAL.AddError(objError);
                    }
                }
                exportExcelViewModel.DataSet = ds;
                exportExcelViewModel.TableHeaders = tableHeaders;
                return exportExcelViewModel;
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

        public DataTable GetReportTable(ExportInputVM inputObj, string formId, string tabName)
        {
            DBManager objDBManager = new DBManager();
            try
            {
                DataTable dataTable = objDBManager.GetDataAsTable("usp_exportFormRecordsByRange", inputObj, formId);
                dataTable.TableName = tabName;
                dataTable.Columns.Remove("ReportDate");
                return dataTable;
            }
            catch (Exception ex)
            {
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                return null;
            }
        }

        public List<T> GetFormRecordsByRange<T>(RecordsInputVM objInput)
        {
            DBManager objDBManager = new DBManager();
            try
            {
                var Params = new DynamicParameters();
                Params.Add("StartDate", objInput.StartDate.ToString("yyyy-MM-dd"));
                Params.Add("EndDate", objInput.EndDate.ToString("yyyy-MM-dd"));
                Params.Add("LightHouseHospitalId", objInput.LightHouseHospitalId);
                Params.Add("FormCode", objInput.FormCode);
                return objDBManager.GetEntityList<T>("usp_getFormRecordsByRange", Params, SqlType.StoredProcedure);
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