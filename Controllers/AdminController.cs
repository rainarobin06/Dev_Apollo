using Apollo.Web.NursingApp.DAL;
using Apollo.Web.NursingApp.Models;
using System;
using System.Collections.Generic;
using System.Web.Mvc;

namespace Apollo.Web.NursingApp.Controllers
{
    public class AdminController : Controller
    {
        private readonly AdminDAL adminDAL = new AdminDAL();

        // GET: Admin
        public ActionResult Index()
        {
            try
            {
                List<AdminMaster> adminMasters = adminDAL.CheckAdmin(Session["user_id"].ToString());
                if (adminMasters.Count == 0)
                {
                    return RedirectToAction("Index", "Home");
                }
            }
            catch (Exception)
            {
                return RedirectToAction("Index", "Login");
            }
            return View();
        }

        public ActionResult LastEntryDate()
        {
            try
            {
                List<AdminMaster> adminMasters = adminDAL.CheckAdmin(Session["user_id"].ToString());
                if (adminMasters.Count == 0)
                {
                    return RedirectToAction("Index", "Home");
                }
            }
            catch (Exception)
            {
                return RedirectToAction("Index", "Login");
            }
            return View();
        }

        public ActionResult ManageAniceID()
        {
            try
            {
                List<AdminMaster> adminMasters = adminDAL.CheckAdmin(Session["user_id"].ToString());
                if (adminMasters.Count == 0)
                {
                    return RedirectToAction("Index", "Home");
                }
            }
            catch (Exception)
            {
                return RedirectToAction("Index", "Login");
            }
            return View();
        }

        public ActionResult ManageHospitals()
        {
            try
            {
                List<AdminMaster> adminMasters = adminDAL.CheckAdmin(Session["user_id"].ToString());
                if (adminMasters.Count == 0)
                {
                    return RedirectToAction("Index", "Home");
                }
            }
            catch (Exception)
            {
                return RedirectToAction("Index", "Login");
            }
            return View();
        }

        public ActionResult ManageReports()

        {
            try
            {
                List<AdminMaster> adminMasters = adminDAL.CheckAdmin(Session["user_id"].ToString());
                if (adminMasters.Count == 0)
                {
                    return RedirectToAction("Index", "Home");
                }
            }
            catch (Exception)
            {
                return RedirectToAction("Index", "Login");
            }
            return View();
        }

        public ActionResult ManageVOCTarget()
        {
            try
            {
                List<AdminMaster> adminMasters = adminDAL.CheckAdmin(Session["user_id"].ToString());
                if (adminMasters.Count == 0)
                {
                    return RedirectToAction("Index", "Home");
                }
            }
            catch (Exception)
            {
                return RedirectToAction("Index", "Login");
            }
            return View();
        }

        public ActionResult ManageWOWTarget()
        {
            try
            {
                List<AdminMaster> adminMasters = adminDAL.CheckAdmin(Session["user_id"].ToString());
                if (adminMasters.Count == 0)
                {
                    return RedirectToAction("Index", "Home");
                }
            }
            catch (Exception)
            {
                return RedirectToAction("Index", "Login");
            }
            return View();
        }

        public ActionResult ViewErrors()
        {
            try
            {
                List<AdminMaster> adminMasters = adminDAL.CheckAdmin(Session["user_id"].ToString());
                if (adminMasters.Count == 0)
                {
                    return RedirectToAction("Index", "Home");
                }
            }
            catch (Exception)
            {
                return RedirectToAction("Index", "Login");
            }
            return View();
        }
    }
}