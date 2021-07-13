using DatabaseIO;
using DatabaseProvider.EntityFramework;
using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Website_ban_giay_cua_cong_ty_TNHH_ABC.Code;

namespace Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers
{
    public class AccountInformationController : Controller
    {
        // GET: AccountInformation
        public ActionResult AccountInformation()
        {
            Userlogin id = (Userlogin)Session[CommonConstants.USER_SESSION];
            AccountInformation db = new AccountInformation();
            dynamic model = new ExpandoObject();        
            model.user = db.GetListAccountInformation(id.UserID);
            return View(model);
        }
        [HttpGet]
        public ActionResult UpdateAccountView()
        {
            AccountInformation();
            return View();
        }
        [HttpPost]
        public ActionResult UpdateAccount(ThongTinKhachHang user)
        {
         
            using (MyModel mydb = new MyModel())
            {
                var id = (Userlogin)Session[CommonConstants.USER_SESSION];
                ThongTinKhachHang updateUser = (from c in mydb.ThongTinKhachHangs
                                                where
                                            c.ID_ThongTinKhachHang == id.UserID
                                                select c).FirstOrDefault();

                if (updateUser != null)
                {
                    updateUser.lastName = user.lastName;
                    updateUser.firstName = user.firstName;
                    updateUser.email = user.email;
                    updateUser.DiaChi = user.DiaChi;
                    updateUser.NgaySinh = user.NgaySinh;
                    updateUser.SDT = user.SDT;
                    updateUser.QuocTich = user.QuocTich;
                    mydb.SaveChanges();
                    return Json(true);
                }
            }
            return Json(false);
        }
    }
}