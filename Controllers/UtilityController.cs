using Apollo.Web.NursingApp.DAL;
using Apollo.Web.NursingApp.Filters;
using Apollo.Web.NursingApp.Models;
using Apollo.Web.NursingApp.ViewModel;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Apollo.Web.NursingApp.Controllers
{
    [CustomAuthorizationFilter]
    public class UtilityController : ApiController
    {
        private readonly UtilityDAL objUtiliyDAL = new UtilityDAL();

        [Route("api/addsession")]
        [HttpPost]
        public HttpResponseMessage AddSession(SessionDetail objSessionDetail)
        {
            string result = objUtiliyDAL.AddSession(objSessionDetail);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/getallhospitals")]
        [HttpGet]
        public HttpResponseMessage GetAllHospitals()
        {
            List<HospitalMaster> listHospitalMaster = objUtiliyDAL.GetAllHospitals();

            if (listHospitalMaster != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, listHospitalMaster);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/getallreports")]
        [HttpGet]
        public HttpResponseMessage GetAllReports()
        {
            List<MasterAllTables> listMasterAllTable = objUtiliyDAL.GetAllReports();
            if (listMasterAllTable != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, listMasterAllTable);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/geterrorlogs")]
        [HttpGet]
        public HttpResponseMessage GetErrorLogs()
        {
            List<ErrorLog> listErrorLog = objUtiliyDAL.GetErrorLogs();

            if (listErrorLog != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, listErrorLog);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/adderror")]
        [HttpPost]
        public HttpResponseMessage AddError(ErrorLog objSessionDetail)

        {
            string result = objUtiliyDAL.AddError(objSessionDetail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/getsession/{userId}")]
        [HttpPost]
        public HttpResponseMessage CheckSession(string userId)
        {
            SessionVM result = objUtiliyDAL.CheckSession(userId);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/gettablename/{formCode}")]
        [HttpPost]
        public HttpResponseMessage AddGetTableNameFromFormCode(string formCode)
        {
            string result = objUtiliyDAL.GetTableNameFromFormCode(formCode);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/getuserinfo/{medid}")]
        [HttpPost]
        public HttpResponseMessage GetUserInfoFromLH(string medid)
        {
            LoginDAL loginDAL = new LoginDAL();
            LHAPIResponse lightHouseReponse = loginDAL.ValidateLogin(medid);

            if (lightHouseReponse != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, lightHouseReponse);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }
    }
}