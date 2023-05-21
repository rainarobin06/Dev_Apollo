using System;

namespace Apollo.Web.NursingApp.Models
{
    public class ErrorLog
    {
        public int Id { get; set; }
        public string Module { get; set; }
        public string Method { get; set; }
        public string ErrorMessage { get; set; }
        public string StackTrace { get; set; }
        public DateTime CreatedOn { get; set; }
        public string CreatedBy { get; set; }
    }
}