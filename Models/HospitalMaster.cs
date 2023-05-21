using System;

namespace Apollo.Web.NursingApp.Models
{
    public class HospitalMaster
    {
        public int Id { get; set; }
        public int HospitalId { get; set; }
        public string HospitalName { get; set; }
        public string Region { get; set; }
        public string EntryLastDate { get; set; }
        public string WOW_ComplianceBilling_Target { get; set; }
        public int VOC_CnCNursingStaff_Target { get; set; }
        public int VOC_HowPainManaged_Target { get; set; }
        public int VOC_CallBellResponse_Target { get; set; }
        public int AniceID { get; set; }
        public bool IsActive { get; set; }
        public DateTime CreatedOn { get; set; }
        public string CreatedByUser { get; set; }
        public DateTime ModifiedOn { get; set; }
        public string LastModifiedBy { get; set; }
        public int ComplianceBilling_Target { get; set; }
    }
}