using System;

namespace Apollo.Web.NursingApp.Models
{
    public class Attachment
    {
        public int Id { get; set; }
        public int Form_Id { get; set; }
        public string File_name { get; set; }
        public string File_ext { get; set; }
        public string File_contenttype { get; set; }
        public string File_content { get; set; }
        public int File_size { get; set; }
        public DateTime Created { get; set; }
        public DateTime Modified { get; set; }
        public string CreatedBy { get; set; }
        public string ModifiedBy { get; set; }
    }
}