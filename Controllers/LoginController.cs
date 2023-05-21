using Apollo.Web.NursingApp.DAL;
using Apollo.Web.NursingApp.Models;
using Apollo.Web.NursingApp.ViewModel;
using System;
using System.Configuration;
using System.Web.Mvc;

namespace Apollo.Web.NursingApp.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Index(string med_id)
        {
            LoginDAL loginDAL = new LoginDAL();
            if (!string.IsNullOrEmpty(med_id))
            {
                LHAPIResponse lightHouseReponse = loginDAL.ValidateLogin(med_id);
                if (lightHouseReponse != null)
                {
                    string SessionTimeout = (string)(new AppSettingsReader().GetValue("SessionTimeout", typeof(string)));
                    UtilityDAL utilityDAL = new UtilityDAL();
                    SessionDetail objSessionDetail = new SessionDetail
                    {
                        HospitalsMapped = string.Join(",", lightHouseReponse.user_detail[0].location),
                        UserId = lightHouseReponse.user_detail[0].user_id,
                        UserName = lightHouseReponse.user_detail[0].User_name
                    };
                    string result = utilityDAL.AddSession(objSessionDetail);
                    if (result == "Inserted")
                    {
                        Session["user_id"] = lightHouseReponse.user_detail[0].user_id;
                        Session["user_name"] = lightHouseReponse.user_detail[0].User_name;
                        Session["user_email"] = lightHouseReponse.user_detail[0].User_email;
                        Session.Timeout = Convert.ToInt32(SessionTimeout);
                        return RedirectToAction("Index", "Home");
                    }
                }
            }
            return View();
        }
    }
}