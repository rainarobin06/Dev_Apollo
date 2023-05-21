using Apollo.Web.NursingApp.DAL;
using Apollo.Web.NursingApp.Filters;
using Apollo.Web.NursingApp.Models;
using Apollo.Web.NursingApp.ViewModel;
using Newtonsoft.Json;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Apollo.Web.NursingApp.Controllers
{
    [CustomAuthorizationFilter]
    public class ReportsController : ApiController
    {
        private readonly ReportsDAL objReportsDAL = new ReportsDAL();

        [Route("api/getrecordsbyrange")]
        [HttpGet]
        public HttpResponseMessage GetFormRecordsByRange(string param)
        {
            RecordsInputVM objInput = JsonConvert.DeserializeObject<RecordsInputVM>(param);

            switch (objInput.FormCode.ToUpper())
            {
                case "TBL01":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<COE>(objInput));

                case "TBL02":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<SOP>(objInput));

                case "TBL03":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<ServiceExcellence>(objInput));

                case "TBL04":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<ConsultantConnect>(objInput));

                case "TBL05":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<ProcessImprovement>(objInput));

                case "TBL06":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<TopIncidents>(objInput));

                case "TBL07":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<TopComplaints>(objInput));

                case "TBL08":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<WOW>(objInput));

                case "TBL09":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<VOC>(objInput));

                case "TBL10":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<ANICE>(objInput));

                case "TBL11":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<ManPower>(objInput));

                case "TBL12":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<TrainingInitiatives>(objInput));

                case "TBL13":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<EnglishCommunication>(objInput));

                case "TBL14":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<ReinforcementCommunication>(objInput));

                case "TBL15":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<TownHall>(objInput));

                case "TBL16":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<CFT>(objInput));

                case "TBL17":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<RP>(objInput));

                case "TBL18":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<AcademicCouncil>(objInput));

                case "TBL19":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<BestPractice>(objInput));

                case "TBL20":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<Achievements>(objInput));

                case "TBL21":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<Appreciation>(objInput));

                case "TBL22":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<Challenge>(objInput));

                case "TBL23":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<ProcessStandardization>(objInput));

                case "TBL24":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<NHNE>(objInput));

                case "TBL25":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<QualityImprovement>(objInput));

                case "TBL26":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<Digitization>(objInput));

                case "TBL27":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<StaffEngagement>(objInput));

                case "TBL28":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<Report1>(objInput));

                case "TBL29":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<Report2>(objInput));

                case "TBL30":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<Report3>(objInput));

                case "TBL31":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<Report4>(objInput));

                case "TBL32":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<Report5>(objInput));

                case "TBL33":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<Report6>(objInput));

                case "TBL34":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<Report7>(objInput));

                case "TBL35":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<Report8>(objInput));

                case "TBL36":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<Report9>(objInput));

                case "TBL37":
                    return Request.CreateResponse(HttpStatusCode.OK, objReportsDAL.GetFormRecordsByRange<Report10>(objInput));

                default:
                    return Request.CreateResponse(HttpStatusCode.OK, "Invalid Form Code");
            }
        }
    }
}