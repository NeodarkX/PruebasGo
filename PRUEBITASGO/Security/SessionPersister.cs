using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace PRUEBITASGO.Security
{
    public static class SessionPersister
    {
        static string USERNAME_SESSIONVAR = "username";

        public static string Username
        {
            get
            {
                if(HttpContext.Current == null)
                {
                    return string.Empty;
                }
                var sessionvar = HttpContext.Current.Session[USERNAME_SESSIONVAR];
                if(sessionvar != null)
                {
                    return sessionvar as string;
                }

                return null;
            }
            set
            {
                HttpContext.Current.Session[USERNAME_SESSIONVAR] = value;
            }
        }

        public static void logout()
        {
            HttpContext.Current.Session.Clear();
        }
    }
}
