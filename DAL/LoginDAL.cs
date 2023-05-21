using Apollo.Web.NursingApp.Models;
using Apollo.Web.NursingApp.ViewModel;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Net.Http;
using System.Threading.Tasks;

namespace Apollo.Web.NursingApp.DAL
{
    public class LoginDAL
    {
        public LHAPIResponse ValidateLogin(string med_id)
        {
            LHAPIResponse myDetails = new LHAPIResponse();
            try
            {
                AppSettingsReader appsettingsreader = new AppSettingsReader();
                string lightHouseAPIUrl = (string)(new AppSettingsReader().GetValue("LightHouseAPIUrl", typeof(string)));
                string appKey = (string)(new AppSettingsReader().GetValue("ApiKey", typeof(string)));
                lightHouseAPIUrl = lightHouseAPIUrl + "&appkey=" + appKey + "&med_id=" + med_id;
                //var objResponse = Task.Run(() => WebApiClient(lightHouseAPIUrl));
                //objResponse.Wait();
                //myDetails = JsonConvert.DeserializeObject<LHAPIResponse>(objResponse.Result);
                //Temp Login
                myDetails.user_detail = new List<UserDetail>() {
                new UserDetail()
                {
                    user_id = "it_sharepoint",
                    User_email = "it_sharepoint@apollohopsputals.com",
                    User_name = "IT SharePoint",
                    location = new List<string>(){ "10101", "10102", "10103", "10104", "10106", "10107", "10108", "10109", "10110", "10111", "10113", "10201", "10202", "10204", "10209", "10301", "10311", "10321", "10331", "10341", "10351", "10361", "10362", "10371", "10381", "10391", "10401", "10501", "10551", "10601", "10701", "10702", "10801", "10901", "10911", "10914", "10917", "12101", "12102", "13001", "15104", "66666", "10912", "10913", "10915", "10105", "10916", "10203", "10400", "14101" }
                }
                };
                myDetails.Status = new RespStatus()
                {
                    StatusCode = "200",
                    StatusMessage = "Success"
                };
                return myDetails;
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
                return null;
            }
        }

        //private static async Task<string> WebApiClient(string uri)
        //{
        //    using (var client = new HttpClient())
        //    {
        //        var httpResponse = await client.GetAsync(uri, HttpCompletionOption.ResponseContentRead);
        //        httpResponse.EnsureSuccessStatusCode();
        //        try
        //        {
        //            return await httpResponse.Content.ReadAsStringAsync();
        //        }
        //        catch (Exception ex)
        //        {
        //            UtilityDAL objUtilityDAL = new UtilityDAL();
        //            ErrorLog objError = new ErrorLog();
        //            objError.CreatedBy = string.Empty;
        //            objError.ErrorMessage = "HTTP Response was invalid or could not be deserialised. Error: " + ex.Message;
        //            objError.StackTrace = ex.StackTrace;
        //            objError.Module = "Login";
        //            objError.Method = System.Reflection.MethodBase.GetCurrentMethod().Name;
        //            objUtilityDAL.AddError(objError);
        //        }
        //    }
        //    return null;
        //}
    }
}