using Apollo.Web.NursingApp.DAL;
using Apollo.Web.NursingApp.Models;
using System;
using System.Collections.Generic;
using System.Web.Mvc;

namespace Apollo.Web.NursingApp.Controllers
{
    public class AttachmentsController : Controller
    {
        // GET: Attachments
        public ActionResult Index()
        {
            return View();
        }

        public new JsonResult View(string formCode, string formId)
        {
            FormsDAL objFormsDAL = new FormsDAL();
            List<Attachment> result = objFormsDAL.GetAttachments(formCode, formId);
            if (result != null)
            {
                return Json(result, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json("NULL", JsonRequestBehavior.AllowGet);
            }
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
    }
}