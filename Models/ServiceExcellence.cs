using System;

namespace Apollo.Web.NursingApp.Models
{
    public class ServiceExcellence
    {
        public int Id { get; set; }
        public int Hospital_Id { get; set; }
        public int LightHouseHospitalId { get; set; }
        public int MonthIndex { get; set; }
        public string MonthName { get; set; }
        public int Year { get; set; }
        public string ReportName { get; set; }
        public string Participant { get; set; }
        public string NoOfPatients { get; set; }
        public string PatientFamilyFeedback { get; set; }
        public string StaffFeedback { get; set; }
        public string ConsultantFeedback { get; set; }
        public string Remarks { get; set; }
        public string FormStatus { get; set; }
        public bool IsActive { get; set; }
        public DateTime Created { get; set; }
        public DateTime Modified { get; set; }
        public string CreatedBy { get; set; }
        public string ModifiedBy { get; set; }
        public string HospitalName { get; set; }
        public string Region { get; set; }
        public string Attachments { get; set; }
    }
}