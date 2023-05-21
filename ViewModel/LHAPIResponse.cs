using System.Collections.Generic;

namespace Apollo.Web.NursingApp.ViewModel
{
    public class LHAPIResponse
    {
        public List<UserDetail> user_detail { get; set; }
        public RespStatus Status { get; set; }
    }

    public class RespStatus
    {
        public string StatusCode { get; set; }
        public string StatusMessage { get; set; }
    }

    public class UserDetail
    {
        public string user_id { get; set; }
        public List<string> location { get; set; }
        public string User_name { get; set; }
        public string User_email { get; set; }
        public string User_mobile { get; set; }
        public string Module { get; set; }
        public string Entry { get; set; }
        public string Report { get; set; }
    }
}