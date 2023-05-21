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
    public class AdminModuleController : ApiController
    {
        private readonly AdminDAL objAdminDAL = new AdminDAL();

        [Route("api/getadmins")]
        [HttpGet]
        public HttpResponseMessage GetAllAdmin()
        {
            List<AdminMaster> listAdminMaster = objAdminDAL.GetAllAdmin();
            if (listAdminMaster != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, listAdminMaster);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/checkadmin/{UserId}")]
        [HttpGet]
        public HttpResponseMessage CheckAdmin(string UserId)
        {
            List<AdminMaster> listAdminMaster = objAdminDAL.CheckAdmin(UserId);
            if (listAdminMaster != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, listAdminMaster);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/updateadmin")]
        [HttpPost]
        public HttpResponseMessage UpdateAdmin(AdminMaster objInput)
        {
            string result = objAdminDAL.UpdateAdmin(objInput);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/updatehospitallastentrydate")]
        [HttpPost]
        public HttpResponseMessage UpdateEntryLastDate(HospitalMasterVM objInput)
        {
            string result = objAdminDAL.UpdateEntryLastDate(objInput);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/updateaniceid")]
        [HttpPost]
        public HttpResponseMessage UpdateAniceID(HospitalMasterVM objInput)
        {
            string result = objAdminDAL.UpdateAniceID(objInput);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/updateallentrylastdate")]
        [HttpPost]
        public HttpResponseMessage UpdateAllEntryLastDate(string LastDate)
        {
            string result = objAdminDAL.UpdateAllEntryLastDate(LastDate);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/updatevoctarget")]
        [HttpPost]
        public HttpResponseMessage UpdateVOCTarget(VOCTargetInputVM inputObj)
        {
            string result = objAdminDAL.UpdateVOCTarget(inputObj);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/updatewowtarget")]
        [HttpPost]
        public HttpResponseMessage UpdateWOWTarget(WOWTargetInputVM inputObj)
        {
            string result = objAdminDAL.UpdateWOWTarget(inputObj);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/updatehospitalname")]
        [HttpPost]
        public HttpResponseMessage UpdateHospitalName(HospitalMaster inputObj)
        {
            string result = objAdminDAL.UpdateHospitalName(inputObj);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/updatereportname")]
        [HttpPost]
        public HttpResponseMessage UpdateReportName(MasterAllTables inputObj)
        {
            string result = objAdminDAL.UpdateReportName(inputObj);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/hospitalvisible")]
        [HttpPost]
        public HttpResponseMessage ManageHospitalVisiblity(int Id, bool IsActive)
        {
            string result = objAdminDAL.ManageHospitalVisiblity(Id, IsActive);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/reportvisible")]
        [HttpPost]
        public HttpResponseMessage ManageReportVisiblity(int Id, bool IsActive)
        {
            string result = objAdminDAL.ManageReportsVisiblity(Id, IsActive);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/getalladminreports")]
        [HttpGet]
        public HttpResponseMessage GetAllAdminReports()
        {
            List<MasterAllTables> listMasterAllTables = objAdminDAL.GetAllAdminReports();
            if (listMasterAllTables != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, listMasterAllTables);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/getalladminhospitals")]
        [HttpGet]
        public HttpResponseMessage GetAllAdminHospitals()
        {
            List<HospitalMaster> listHospitalMaster = objAdminDAL.GetAllAdminHospitals();
            if (listHospitalMaster != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, listHospitalMaster);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }
    }
}