using Apollo.Web.NursingApp.Models;
using Apollo.Web.NursingApp.ViewModel;
using Dapper;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace Apollo.Web.NursingApp.DAL
{
    public static class DataManager
    {
        public enum SqlType
        {
            StoredProcedure,
            DynamicSqls
        }

        public class DBManager
        {
            private readonly string connectionString = null;
            private SqlConnection connection = null;

            public DBManager()
            {
                connectionString = ConfigurationManager.ConnectionStrings["NursingApplication_Phase1"].ToString();
            }

            //returns list of rows
            public List<T> GetEntityList<T>(string sql, object parameters, SqlType sqlType)
            {
                try
                {
                    using (connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        if (sqlType == SqlType.DynamicSqls)
                        {
                            return connection.Query<T>(sql, parameters).AsList<T>();
                        }
                        else
                        {
                            return connection.Query<T>(sql, parameters, commandType: CommandType.StoredProcedure).AsList<T>();
                        }
                    }
                }
                catch (Exception)
                {
                    throw;
                }
            }

            public DataTable GetDataAsTable(string sql, ExportInputVM inputVM, string formId)
            {
                try
                {
                    using (connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        using (SqlCommand cmd = new SqlCommand(sql))
                        {
                            using (SqlDataAdapter da = new SqlDataAdapter())
                            {
                                DataTable dt = new DataTable();
                                cmd.CommandType = CommandType.StoredProcedure;
                                cmd.Parameters.AddWithValue("@StartDate", inputVM.StartDate.ToString("yyyy-MM-dd"));
                                cmd.Parameters.AddWithValue("@EndDate", inputVM.EndDate.ToString("yyyy-MM-dd"));
                                cmd.Parameters.AddWithValue("@LightHouseHospitalId", inputVM.ListOfHospitalsId);
                                cmd.Parameters.AddWithValue("@FormCode", formId);
                                cmd.Connection = connection;
                                da.SelectCommand = cmd;
                                da.Fill(dt);
                                return dt;
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    UtilityDAL objUtilityDAL = new UtilityDAL();
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

            //returns single rows
            public T GetEntity<T>(string sql, object parameters, SqlType sqlType)
            {
                try
                {
                    using (connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        if (sqlType == SqlType.DynamicSqls)
                        {
                            return connection.Query<T>(sql, parameters).AsList<T>().FirstOrDefault();
                        }
                        else
                        {
                            return connection.Query<T>(sql, parameters, commandType: CommandType.StoredProcedure).AsList<T>().FirstOrDefault();
                        }
                    }
                }
                catch (Exception)
                {
                    throw;
                }
            }

            public long GetIdentityAfterInsert(string sql, object parameters, SqlType sqlType)
            {
                try
                {
                    using (connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        if (sqlType == SqlType.DynamicSqls)
                        {
                            return connection.Query<long>(sql, parameters).AsList<long>().SingleOrDefault();
                        }
                        else
                        {
                            return connection.Query<long>(sql, parameters, commandType: CommandType.StoredProcedure).AsList<long>().SingleOrDefault();
                        }
                    }
                }
                catch (Exception)
                {
                    throw;
                }
            }

            //update,delete, insert operation
            public int Execute(string sql, object parameters, SqlType sqlType)
            {
                try
                {
                    using (connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        if (sqlType == SqlType.DynamicSqls)
                        {
                            return connection.Execute(sql, parameters);
                        }
                        else
                        {
                            return connection.Execute(sql, parameters, commandType: CommandType.StoredProcedure);
                        }
                    }
                }
                catch (Exception)
                {
                    throw;
                }
            }

            //returns 1 value either string or int
            public T GetScalarValue<T>(string sql, object parameters, SqlType sqlType)
            {
                try
                {
                    using (connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        if (sqlType == SqlType.DynamicSqls)
                        {
                            return connection.ExecuteScalar<T>(sql, parameters);
                        }
                        else
                        {
                            return connection.ExecuteScalar<T>(sql, parameters, commandType: CommandType.StoredProcedure);
                        }
                    }
                }
                catch (Exception)
                {
                    throw;
                }
            }
        }
    }
}