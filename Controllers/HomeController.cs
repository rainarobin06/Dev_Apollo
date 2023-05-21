using Apollo.Web.NursingApp.DAL;
using Apollo.Web.NursingApp.Filters;
using Apollo.Web.NursingApp.Models;
using Apollo.Web.NursingApp.ViewModel;
using ClosedXML.Excel;
using Newtonsoft.Json;
using System;
using System.IO;
using System.Web.Mvc;

namespace Apollo.Web.NursingApp.Controllers
{
    [SessionTimeoutFilter]
    [CustomAuthFilter]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Report()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Export(string param)
        {
            try
            {
                ExportInputVM inputObj = new ExportInputVM();
                inputObj = JsonConvert.DeserializeObject<ExportInputVM>(param);
                ReportsDAL reportsDAL = new ReportsDAL();
                ExportExcelViewModel exportExcelViewModel = new ExportExcelViewModel();
                exportExcelViewModel = reportsDAL.GetDataSetExportToExcel(inputObj);
                using (XLWorkbook wb = new XLWorkbook())
                {
                    wb.Worksheets.Add(exportExcelViewModel.DataSet);
                    wb.Style.Alignment.Horizontal = XLAlignmentHorizontalValues.Center;
                    wb.Style.Font.Bold = true;
                    int sheetIndex = 0;
                    const int serialNumber = 1;
                    foreach (IXLWorksheet ws in wb.Worksheets)
                    {
                        ws.Columns().AdjustToContents();
                        var firstRowUsed = ws.FirstRowUsed();

                        //Attachment hyperlink
                        var dataRow = firstRowUsed.RowUsed();
                        dataRow = dataRow.RowBelow();
                        while (!dataRow.Cell(serialNumber).IsEmpty())
                        {
                            string attachURL = dataRow.LastCellUsed().GetString();
                            if (attachURL.StartsWith("http"))
                            {
                                dataRow.LastCellUsed().Value = "View Attachments";
                                dataRow.LastCellUsed().Hyperlink = new XLHyperlink(attachURL);
                            }
                            //Enable Actual Savings bg color
                            if (ws.Name == "WOW")
                            {
                                IXLCell actualSavingCell = dataRow.Cell(9); //Hard coded based on "Actual Savings" cell position in WOW worksheet
                                if (!string.IsNullOrEmpty(actualSavingCell.GetString()))
                                {
                                    Decimal actualValue = Convert.ToDecimal(actualSavingCell.GetString());
                                    actualSavingCell.Style.Font.FontColor = XLColor.White;
                                    if (actualValue < 0)
                                    {
                                        actualSavingCell.Style.Fill.BackgroundColor = XLColor.Red;
                                    }
                                    else if (actualValue > -1)
                                    {
                                        actualSavingCell.Style.Fill.BackgroundColor = XLColor.Green;
                                    }
                                }
                            }
                            dataRow = dataRow.RowBelow();
                        }

                        //Add page header
                        ws.Row(1).InsertRowsAbove(1);
                        DateTime newStartData = inputObj.StartDate.AddMonths(1);
                        string monthRange = "between " + newStartData.ToString("MMM yyyy") + " and " + inputObj.EndDate.ToString("MMM yyyy");
                        if (newStartData.ToString("MMM yyyy") == inputObj.EndDate.ToString("MMM yyyy"))
                        {
                            monthRange = "for " + newStartData.ToString("MMM yyyy");
                        }
                        ws.Cell(1, 1).Value = exportExcelViewModel.TableHeaders[sheetIndex] + " Report " + monthRange;
                        IXLCell cellSheetHeading = ws.Cell(1, 1);
                        cellSheetHeading.Style.Font.FontSize = 16;
                        cellSheetHeading.Style.Font.SetBold();
                        cellSheetHeading.Style.Font.FontColor = XLColor.Teal;
                        ws.Range("A1:K1").Row(1).Merge();
                        sheetIndex++;
                    }
                    Response.Clear();
                    Response.Buffer = true;
                    Response.Charset = "";
                    Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                    Response.AddHeader("content-disposition", "attachment;filename= excel_report.xlsx");
                    using (MemoryStream MyMemoryStream = new MemoryStream())
                    {
                        wb.SaveAs(MyMemoryStream);
                        MyMemoryStream.WriteTo(Response.OutputStream);
                        Response.Flush();
                        Response.End();
                    }
                }
            }
            catch (Exception ex)
            {
                UtilityDAL objUtilityDAL = new UtilityDAL();
                ErrorLog objError = new ErrorLog { CreatedBy = string.Empty, ErrorMessage = ex.Message, StackTrace = ex.StackTrace, Module = this.GetType().Name, Method = System.Reflection.MethodBase.GetCurrentMethod().Name };
                objUtilityDAL.AddError(objError);
                //throw;
            }
            return null;
        }

        public ActionResult DownloadFile(string formCode, string fileId)
        {
            FormsDAL formsDAL = new FormsDAL();
            try
            {
                Attachment fileInfo = formsDAL.GetAttachmentById(formCode, fileId);
                return this.GetFile(fileInfo);
            }
            catch (Exception ex)
            {
                UtilityDAL objUtilityDAL = new UtilityDAL();
                ErrorLog objError = new ErrorLog
                {
                    CreatedBy = string.Empty,
                    ErrorMessage = ex.Message,
                    StackTrace = ex.StackTrace,
                    Module = this.GetType().Name,
                    Method = System.Reflection.MethodBase.GetCurrentMethod().Name
                };
                objUtilityDAL.AddError(objError);
            }
            return View();
        }

        private FileResult GetFile(Attachment attachment)
        {
            FileResult file = null;
            try
            {
                byte[] byteContent = Convert.FromBase64String(attachment.File_content);
                file = this.File(byteContent, attachment.File_contenttype, attachment.File_name);
            }
            catch (Exception ex)
            {
                UtilityDAL objUtilityDAL = new UtilityDAL();
                ErrorLog objError = new ErrorLog
                {
                    CreatedBy = string.Empty,
                    ErrorMessage = ex.Message,
                    StackTrace = ex.StackTrace,
                    Module = this.GetType().Name,
                    Method = System.Reflection.MethodBase.GetCurrentMethod().Name
                };
                objUtilityDAL.AddError(objError);
                //throw ex;
            }
            return file;
        }

        public ActionResult Logout()
        {
            ViewBag.Message = "Logout";
            Session["user_id"] = null;
            Session["user_name"] = null;
            Session["user_email"] = null;
            return RedirectToAction("Index", "Login");
            //return View();
        }
    }
}