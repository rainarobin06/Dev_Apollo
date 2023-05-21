using System.Web;
using System.Web.Http;
using System.Web.Http.Controllers;

namespace Apollo.Web.NursingApp.Filters
{
    public class CustomAuthorizationFilter : AuthorizeAttribute
    {
        public CustomAuthorizationFilter()
        {
        }

        protected override bool IsAuthorized(HttpActionContext actionContext)
        {
            //if (!base.IsAuthorized(actionContext)) return false;
            var isAuthorized = false;
            if (HttpContext.Current.Session != null)
            {
                if (HttpContext.Current.Session["user_id"] != null)
                {
                    isAuthorized = true;
                }
            }

            return isAuthorized;
        }

        public override void OnAuthorization(HttpActionContext actionContext)
        {
            if (!IsAuthorized(actionContext))
            {
                HandleUnauthorizedRequest(actionContext);
            }
            else
            {
                return;
            }
        }
    }
}