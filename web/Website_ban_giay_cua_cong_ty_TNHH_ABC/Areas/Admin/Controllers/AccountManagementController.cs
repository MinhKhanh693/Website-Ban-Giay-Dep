using DatabaseIO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Dynamic;
using DatabaseProvider.EntityFramework;

namespace Website_ban_giay_cua_cong_ty_TNHH_ABC.Areas.Admin.Controllers
{
    public class AccountManagementController : Controller
    {
        // GET: Admin/AccountManagement
        public ActionResult AccountManagement()
        {
            DBIO db = new DBIO();
            dynamic mymodel = new ExpandoObject();
            mymodel.ListThongTinKhachHang = db.GetListThongTinKhachHang();
            return View(mymodel);
        }

        public ActionResult EditAccountView(int id)
        {
            DBIO db = new DBIO();
            dynamic mymodel = new ExpandoObject();
            mymodel.ListThongTinKhachHang = db.GetListThongTinKhachHang(id);
            return View(mymodel);

        }
        public ActionResult EditAccount(ThongTinKhachHang id)
        {
            using (MyModel mydb = new MyModel())
            {

            ThongTinKhachHang updateUser = (from c in mydb.ThongTinKhachHangs
                                    where
                                c.ID_ThongTinKhachHang == id.ID_ThongTinKhachHang
                                    select c).FirstOrDefault();

                if (updateUser != null)
                {
                    updateUser.email = id.email;
                    updateUser.password = id.password;
                    updateUser.firstName = id.firstName;
                    updateUser.lastName = id.lastName;
                    updateUser.SDT = id.SDT;
                    updateUser.DiaChi = id.DiaChi;
                    updateUser.NgaySinh = id.NgaySinh;
                    updateUser.QuocTich = id.QuocTich;
                    mydb.SaveChanges();
                    return Json(true);
                }
            }
            return Json(false);
        }
        public ActionResult DeleteAccountView(int id)
        {
            DBIO db = new DBIO();
            dynamic mymodel = new ExpandoObject();
            mymodel.ListThongTinKhachHang = db.GetListThongTinKhachHang(id);
            return View(mymodel);

        }
        public ActionResult DeleteAccount(ThongTinKhachHang id)
        {

            using (MyModel myModel = new MyModel())
            {
                ThongTinKhachHang thongTinKhachHang = myModel.ThongTinKhachHangs.Find(id.ID_ThongTinKhachHang);
                myModel.ThongTinKhachHangs.Remove(thongTinKhachHang);
                myModel.SaveChanges();
            }
            return Json(id);
        }
    }
}