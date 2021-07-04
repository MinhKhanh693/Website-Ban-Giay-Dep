using DatabaseIO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Website_ban_giay_cua_cong_ty_TNHH_ABC.Code;

namespace Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        [HttpGet]
        public ActionResult Login()
        { 
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(DatabaseProvider.EntityFramework.ThongTinKhachHang model)
        {
            /*var result = new AccountModel().Login(model.email, model.password);*/
            if (Membership.ValidateUser(model.email,model.password) && ModelState.IsValid)
            {
                /*  SessionHelper.SetSession(new UserSession() { Email = model.email });*/
                FormsAuthentication.SetAuthCookie(model.email , true);
                return RedirectToAction("Index", "Home");
            }
            else
            {
                ModelState.AddModelError("", "Email hoặc mật khẩu không đúng.");
            }
            return View(model);
        }
    }
}