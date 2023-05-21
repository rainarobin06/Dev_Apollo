using System;

namespace Apollo.Web.NursingApp.Models
{
    public class Report3
    {
        public int Id { get; set; }
        public int Hospital_Id { get; set; }
        public int LightHouseHospitalId { get; set; }
        public int MonthIndex { get; set; }
        public string MonthName { get; set; }
        public int Year { get; set; }
        public string ReportName { get; set; }
        public string Details { get; set; }
        public string Field1 { get; set; }
        public string Field2 { get; set; }
        public string Field3 { get; set; }
        public string Field4 { get; set; }
        public string Field5 { get; set; }
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