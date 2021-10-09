using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace LUT_CarSystem.Models
{
    public class FunctionFilterAttribute : ActionFilterAttribute
    {
         int _functionID;
        public FunctionFilterAttribute(int funcID)
        {
            this._functionID = funcID;
          }
       public override void OnActionExecuting(ActionExecutingContext filterContext)
         {
           HttpContextBase context = filterContext.HttpContext;
            int ids = -1;
            bool isAuthenticated = HttpContext.Current.Session["user"] == null ? false : true;
            if (isAuthenticated)
            {
                ids = (int)context.Session["Power"];
            }
               
            System.Diagnostics.Debug.WriteLine("Power访问权限=====(((" + ids+")))");
            if (ids<_functionID)
            {
                filterContext.Result = new RedirectToRouteResult(new RouteValueDictionary(new { controller = "Login", action = "Login", returnUrl = filterContext.HttpContext.Request.Url, returnMessage = "您无权查看." }));
                return;
            }
             base.OnActionExecuting(filterContext);
      }
    }
}
