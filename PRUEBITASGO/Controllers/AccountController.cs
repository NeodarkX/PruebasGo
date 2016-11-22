using System;
using System.Globalization;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using PRUEBITASGO.Models;
using PRUEBITASGO.DAL;
using System.Web.Security;
using PRUEBITASGO.Security;
using reCAPTCHA.MVC;

namespace PRUEBITASGO.Controllers
{

    public class AccountController : Controller
    {
        // 
        // GET: /Account/Login 
        [AllowAnonymous]
        public ActionResult Login(string returnUrl)
        {
            ViewBag.ReturnUrl = returnUrl;
            if (TempData["shortMessage"] != null)
            {
                ViewBag.Message = TempData["shortMessage"].ToString();
            }
            return View();
        }

        // 
        // POST: /Account/Login 
        [HttpPost]
        [AllowAnonymous]
       
        public async Task<ActionResult> Login(User user)
        {
            UserRepository us = new UserRepository();

            if (string.IsNullOrEmpty(user.UserName) || string.IsNullOrEmpty(user.Password) || us.GetByUsernameAndPassword(user) == null)
            {
                TempData["shortMessage"] = "El usuario o password ingresados son incorrectos.";

                return RedirectToAction("Login", "Account");
            }

            SessionPersister.Username = user.UserName;
            
            return RedirectToAction("Index", "Home");
        }

        // GET: /Account/Logout
        public ActionResult Logout()
        {
            SessionPersister.Username = string.Empty;
            return RedirectToAction("Index", "Home");
        }


    }
}