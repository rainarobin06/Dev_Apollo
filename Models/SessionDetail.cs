using System;

namespace Apollo.Web.NursingApp.Models
{
    public class SessionDetail
    {
        public int Id { get; set; }
        public string UserId { get; set; }
        public string UserName { get; set; }
        public string HospitalsMapped { get; set; }
        public DateTime SessionStartTime { get; set; }
    }
}