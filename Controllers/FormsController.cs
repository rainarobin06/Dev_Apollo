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
    public class FormsController : ApiController
    {
        private readonly FormsDAL objFormsDAL = new FormsDAL();

        [Route("api/getform/{FormCode}/{LightHouseHospitalId}/{Year}/{MonthIndex}")]
        [HttpGet]
        public HttpResponseMessage GetFormData(string FormCode, int LightHouseHospitalId, int MonthIndex, int Year)
        {
            switch (FormCode.ToUpper())
            {
                case "TBL01":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<COE>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL02":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<SOP>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL03":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<ServiceExcellence>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL04":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<ConsultantConnect>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL05":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<ProcessImprovement>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL06":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<TopIncidents>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL07":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<TopComplaints>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL08":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<WOW>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL09":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<VOC>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL10":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<ANICE>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL11":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<ManPower>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL12":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<TrainingInitiatives>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL13":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<EnglishCommunication>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL14":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<ReinforcementCommunication>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL15":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<TownHall>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL16":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<CFT>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL17":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<RP>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL18":
                    List<AcademicCouncil> result = objFormsDAL.GetFormData<AcademicCouncil>(FormCode, LightHouseHospitalId, MonthIndex, Year);
                    return Request.CreateResponse(HttpStatusCode.OK, result);

                case "TBL19":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<BestPractice>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL20":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<Achievements>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL21":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<Appreciation>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL22":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<Challenge>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL23":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<ProcessStandardization>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL24":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<NHNE>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL25":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<QualityImprovement>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL26":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<Digitization>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL27":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<StaffEngagement>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL28":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<Report1>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL29":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<Report2>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL30":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<Report3>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL31":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<Report4>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL32":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<Report5>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL33":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<Report6>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL34":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<Report7>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL35":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<Report8>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL36":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<Report9>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                case "TBL37":
                    return Request.CreateResponse(HttpStatusCode.OK, objFormsDAL.GetFormData<Report10>(FormCode, LightHouseHospitalId, MonthIndex, Year));

                default:
                    return Request.CreateResponse(HttpStatusCode.OK, "Invalid Form Code");
            }
        }

        #region Save Form Data

        [Route("api/save/tbl02")]
        [HttpPost]
        public HttpResponseMessage AddSop(SOP objSOPDetail)
        {
            string result = objFormsDAL.AddSOP(objSOPDetail);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl18")]
        [HttpPost]
        public HttpResponseMessage AddAcademicCouncil(AcademicCouncil objAcademicCouncilDetail)
        {
            string result = objFormsDAL.AddAcdemicCouncil(objAcademicCouncilDetail);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl20")]
        [HttpPost]
        public HttpResponseMessage AddAchievements(Achievements objAchievementsDetail)
        {
            string result = objFormsDAL.AddAchievements(objAchievementsDetail);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl10")]
        [HttpPost]
        public HttpResponseMessage AddAnice(ANICE objAniceDetail)
        {
            string result = objFormsDAL.AddAnice(objAniceDetail);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl21")]
        [HttpPost]
        public HttpResponseMessage AddAppreciation(Appreciation objAppreciationDetail)
        {
            string result = objFormsDAL.AddAppreciation(objAppreciationDetail);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl19")]
        [HttpPost]
        public HttpResponseMessage AddBestPractices(BestPractice objBestPracticesDetail)
        {
            string result = objFormsDAL.AddBestPractices(objBestPracticesDetail);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl16")]
        [HttpPost]
        public HttpResponseMessage AddCFT(CFT objCFTDetail)
        {
            string result = objFormsDAL.AddCFT(objCFTDetail);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl17")]
        [HttpPost]
        public HttpResponseMessage AddRP(RP objRPTDetail)
        {
            string result = objFormsDAL.AddRP(objRPTDetail);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl22")]
        [HttpPost]
        public HttpResponseMessage AddChallenges(Challenge objChallengesDetail)
        {
            string result = objFormsDAL.AddChallenges(objChallengesDetail);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl01")]
        [HttpPost]
        public HttpResponseMessage AddCOE(COE objCOEDetail)
        {
            string result = objFormsDAL.AddCOE(objCOEDetail);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl04")]
        [HttpPost]
        public HttpResponseMessage AddConsultConnect(ConsultantConnect ibjConsultConnectDetail)
        {
            string result = objFormsDAL.AddConsultConnect(ibjConsultConnectDetail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl13")]
        [HttpPost]
        public HttpResponseMessage AddEnglishCommunication(EnglishCommunication objEnglishCommunicationDetail)
        {
            string result = objFormsDAL.AddEnglishCommunication(objEnglishCommunicationDetail);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl11")]
        [HttpPost]
        public HttpResponseMessage AddManPower(ManPower objManPowerDetail)
        {
            string result = objFormsDAL.AddManPower(objManPowerDetail);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl05")]
        [HttpPost]
        public HttpResponseMessage AddProcessImprovement(ProcessImprovement objProcessImprovementDetail)
        {
            string result = objFormsDAL.AddProcessImprovement(objProcessImprovementDetail);
            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl14")]
        [HttpPost]
        public HttpResponseMessage AddReinforcementCommunication(ReinforcementCommunication objReinforcementCommunicationDetail)
        {
            string result = objFormsDAL.AddReinforcementCommunication(objReinforcementCommunicationDetail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl03")]
        [HttpPost]
        public HttpResponseMessage AddServiceExcellence(ServiceExcellence objServiceExcellenceDetail)
        {
            string result = objFormsDAL.AddServiceExcellence(objServiceExcellenceDetail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl07")]
        [HttpPost]
        public HttpResponseMessage AddTopComplaints(TopComplaints objTopComplaintsDetail)
        {
            string result = objFormsDAL.AddTopComplaints(objTopComplaintsDetail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl06")]
        [HttpPost]
        public HttpResponseMessage AddTopIncidents(TopIncidents objTopIncidentsDetail)
        {
            string result = objFormsDAL.AddTopIncidents(objTopIncidentsDetail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl15")]
        [HttpPost]
        public HttpResponseMessage AddTownHall(TownHall objTownHallDetail)
        {
            string result = objFormsDAL.AddTownHall(objTownHallDetail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl12")]
        [HttpPost]
        public HttpResponseMessage AddTrainingInitiatives(TrainingInitiatives objTrainingInitiativesDetail)
        {
            string result = objFormsDAL.AddTrainingInitiatives(objTrainingInitiativesDetail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl23")]
        [HttpPost]
        public HttpResponseMessage AddProcessStandardization(ProcessStandardization objProcessStandardizationDetail)
        {
            string result = objFormsDAL.AddProcessStandardization(objProcessStandardizationDetail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl24")]
        [HttpPost]
        public HttpResponseMessage AddNHNE(NHNE objNHNEDetail)
        {
            string result = objFormsDAL.AddNHNE(objNHNEDetail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl25")]
        [HttpPost]
        public HttpResponseMessage AddQualityImprovement(QualityImprovement objQualityImprovementDetail)
        {
            string result = objFormsDAL.AddQualityImprovement(objQualityImprovementDetail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl26")]
        [HttpPost]
        public HttpResponseMessage AddDigitization(Digitization objDigitizationDetail)
        {
            string result = objFormsDAL.AddDigitization(objDigitizationDetail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl27")]
        [HttpPost]
        public HttpResponseMessage AddStaffEngagement(StaffEngagement objStaffEngagementDetail)
        {
            string result = objFormsDAL.AddStaffEngagement(objStaffEngagementDetail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl28")]
        [HttpPost]
        public HttpResponseMessage AddReport1(Report1 objReport1Detail)
        {
            string result = objFormsDAL.AddReport1(objReport1Detail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl29")]
        [HttpPost]
        public HttpResponseMessage AddReport2(Report2 objReport2Detail)
        {
            string result = objFormsDAL.AddReport2(objReport2Detail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl30")]
        [HttpPost]
        public HttpResponseMessage AddReport3(Report3 objReport3Detail)
        {
            string result = objFormsDAL.AddReport3(objReport3Detail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl31")]
        [HttpPost]
        public HttpResponseMessage AddReport4(Report4 objReport4Detail)
        {
            string result = objFormsDAL.AddReport4(objReport4Detail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl32")]
        [HttpPost]
        public HttpResponseMessage AddReport5(Report5 objReport5Detail)
        {
            string result = objFormsDAL.AddReport5(objReport5Detail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl33")]
        [HttpPost]
        public HttpResponseMessage AddReport6(Report6 objReport6Detail)
        {
            string result = objFormsDAL.AddReport6(objReport6Detail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl34")]
        [HttpPost]
        public HttpResponseMessage AddReport7(Report7 objReport7Detail)
        {
            string result = objFormsDAL.AddReport7(objReport7Detail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl35")]
        [HttpPost]
        public HttpResponseMessage AddReport8(Report8 objReport8Detail)
        {
            string result = objFormsDAL.AddReport8(objReport8Detail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl36")]
        [HttpPost]
        public HttpResponseMessage AddReport9(Report9 objReport9Detail)
        {
            string result = objFormsDAL.AddReport9(objReport9Detail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl37")]
        [HttpPost]
        public HttpResponseMessage AddReport10(Report10 objReport10Detail)
        {
            string result = objFormsDAL.AddReport10(objReport10Detail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl09")]
        [HttpPost]
        public HttpResponseMessage AddVOC(VOC objVOCDetail)
        {
            string result = objFormsDAL.AddVOC(objVOCDetail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        [Route("api/save/tbl08")]
        [HttpPost]
        public HttpResponseMessage AddWOW(WOW objWOWDetail)
        {
            string result = objFormsDAL.AddWOW(objWOWDetail);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        #endregion Save Form Data

        #region Save Attachments

        [Route("api/attach/{formCode}/{formId}")]
        [HttpPost]
        public HttpResponseMessage AddAttachment(string formCode, string formId)
        {
            string result = objFormsDAL.AddAttachment(formCode, formId);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        #endregion Save Attachments

        #region Get Attachments

        [Route("api/attachments/{formCode}/{formId}")]
        [HttpGet]
        public HttpResponseMessage GetAttachments(string formCode, string formId)
        {
            List<Attachment> result = objFormsDAL.GetAttachments(formCode, formId);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        #endregion Get Attachments

        #region Delete Attachment

        [Route("api/deleteattachment")]
        [HttpPost]
        public HttpResponseMessage RemoveAttachment(string formCode, string attachId)
        {
            string result = objFormsDAL.RemoveAttachment(formCode, attachId);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        #endregion Delete Attachment

        #region Delete Entry

        [Route("api/removeentry")]
        [HttpPost]
        public HttpResponseMessage RemoveEntry(string formCode, string Id)
        {
            string result = objFormsDAL.RemoveEntry(formCode, Id);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        #endregion Delete Entry

        #region GET ANICE SCORE

        [Route("api/latestanicescore")]
        [HttpPost]
        public HttpResponseMessage GetANICEScore(ANICEInputVM inputObj)
        {
            string result = objFormsDAL.GetAniceScore(inputObj);

            if (result != null)
            {
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "There is an Error");
            }
        }

        #endregion GET ANICE SCORE
    }
}