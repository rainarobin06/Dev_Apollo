using System;

namespace Apollo.Web.NursingApp.ViewModel
{
    public class RecordsInputVM
    {
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string LightHouseHospitalId { get; set; }
        public string FormCode { get; set; }
    }
}