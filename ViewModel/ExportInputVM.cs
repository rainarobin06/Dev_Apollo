using System;

namespace Apollo.Web.NursingApp.ViewModel
{
    public class ExportInputVM
    {
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string ListOfHospitalsId { get; set; }
        public string ListOfFormCode { get; set; }
    }
}