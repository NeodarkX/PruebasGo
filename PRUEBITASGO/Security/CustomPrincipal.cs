using PRUEBITASGO.Models;
using PRUEBITASGO.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Text;
using System.Threading.Tasks;

namespace PRUEBITASGO.Security
{
    public class CustomPrincipal : IPrincipal
    {
        private User user;
        private UserRepository us = new UserRepository();

        public CustomPrincipal(string username)
        {
            this.user = us.Find(username);
            this.Identity = new GenericIdentity(username);
        }

        public IIdentity Identity
        {
            get;
            set;
        }

        public bool IsInRole(string role)
        {
            return true;
        }
    }
}
