using PRUEBITASGO.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using System.Web.Routing;

namespace PRUEBITASGO.Security
{
    public class CustomAuthorizateAttribute:AuthorizeAttribute
    {
        public override void OnAuthorization(AuthorizationContext filterContext)
        {
            if (string.IsNullOrEmpty(SessionPersister.Username))
            {
                filterContext.Result = new RedirectToRouteResult(new RouteValueDictionary(new { controller = "Account" , action="Login"}));
            }
            else
            {
                UserRepository us = new UserRepository();
                CustomPrincipal mp = new CustomPrincipal(us.Find(SessionPersister.Username).UserName);
            }
        
        }
    }
}
