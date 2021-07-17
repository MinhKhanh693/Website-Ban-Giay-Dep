using DatabaseIO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Website_ban_giay_cua_cong_ty_TNHH_ABC.Areas.Admin.code;
using Website_ban_giay_cua_cong_ty_TNHH_ABC.Code;

namespace Website_ban_giay_cua_cong_ty_TNHH_ABC.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        // GET: Admin/Login
        [HttpGet]
        public ActionResult Login()
        {

            return View();
        }

        [HttpPost]
       
        public ActionResult Login(DatabaseProvider.EntityFramework.admin model)
        {
            var acc = new AccountModel().LoginAdmin(model.username,model.password);
            if (acc && ModelState.IsValid==false)
            {
                FormsAuthentication.SetAuthCookie(model.username, true);
                var dao = new AdminDao();
                var admin = dao.GetbyIdAdmin(model.username);
                var adminSession = new AdminLogin();
                adminSession.username = admin.username;
                adminSession.ID_admin = admin.ID_admin;
                Session.Add(CommonConstants.ADMIN_SESSION, adminSession);
                return Redirect("/AccountManagement");
            }
            else
            {
                ModelState.AddModelError("", "username hoặc mật khẩu không đúng.");
            }
            return View(model);
        }
        public ActionResult Logout()
        {
            Session[CommonConstants.ADMIN_SESSION] = null;
            return Redirect("/Admin");
        }
    }
}