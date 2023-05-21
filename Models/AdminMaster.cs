using System;

namespace Apollo.Web.NursingApp.Models
{
    public class AdminMaster
    {
        public int Id { get; set; }
        public string UserId { get; set; }
        public string LoginName { get; set; }
        public string CreatedBy { get; set; }
        public string ActionType { get; set; }
        public DateTime Created { get; set; }
    }
}