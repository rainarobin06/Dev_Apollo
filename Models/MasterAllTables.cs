using System;

namespace Apollo.Web.NursingApp.Models
{
    public class MasterAllTables
    {
        public int Id { get; set; }
        public string Formcode { get; set; }
        public string FormName { get; set; }
        public string FormDisplayName { get; set; }
        public string TableName { get; set; }
        public bool IsActive { get; set; }
        public DateTime Created { get; set; }
    }
}