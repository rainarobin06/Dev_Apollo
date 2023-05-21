using System.Collections.Generic;
using System.Data;

namespace Apollo.Web.NursingApp.ViewModel
{
    public class ExportExcelViewModel
    {
        public List<string> TableHeaders { get; set; }
        public DataSet DataSet { get; set; }
    }
}