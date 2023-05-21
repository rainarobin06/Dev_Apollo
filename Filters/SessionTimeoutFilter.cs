using System.Web;
using System.Web.Mvc;

namespace Apollo.Web.NursingApp.Filters
{
    public class SessionTimeoutFilter : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            if (HttpContext.Current.Session["user_id"] == null)
            {
                filterContext.Result = new RedirectResult("~/Login/Index");
                return;
            }
            base.OnActionExecuting(filterContext);
        }
    }
}