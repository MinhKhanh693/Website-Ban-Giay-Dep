using System.Web.Mvc;
using System.Web.Security;
using DatabaseIO;
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
            
            if (Membership.ValidateUser(model.email,model.password) && ModelState.IsValid)
            {
                FormsAuthentication.SetAuthCookie(model.email, true);
                var dao = new UserDao();
                var user = dao.GetById(model.email); 
                var userSession = new Userlogin();
                userSession.lastName = user.lastName;
                userSession.UserID = user.ID_ThongTinKhachHang;
                Session.Add(CommonConstants.USER_SESSION, userSession);
                return Redirect("/");
            }
            else
            {
                ModelState.AddModelError("", "Email hoặc mật khẩu không đúng.");
            }
            return View(model);
        }
        public ActionResult Logout()
        {
            Session[CommonConstants.USER_SESSION] = null;
            return Redirect("/");
        }
    }
}