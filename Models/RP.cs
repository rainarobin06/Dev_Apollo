using System;

namespace Apollo.Web.NursingApp.Models
{
    public class RP
    {
        public int Id { get; set; }
        public int Hospital_Id { get; set; }
        public int LightHouseHospitalId { get; set; }
        public int MonthIndex { get; set; }
        public string MonthName { get; set; }
        public int Year { get; set; }
        public string Members { get; set; }
        public string TopicsAssigned { get; set; }
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