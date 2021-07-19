using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Dynamic;
using DatabaseIO;
using DatabaseProvider.EntityFramework;

namespace Website_ban_giay_cua_cong_ty_TNHH_ABC.Areas.Admin.Controllers
{
    public class DashBoardController : Controller
    {
        // GET: Admin/DashBoard
        public ActionResult DashBoard()
        {
            dynamic mydb = new ExpandoObject();
     
            using(MyModel mymodel = new MyModel())
            {
                var count = (from o in mymodel.SanPhams                        
                             select o.ID_SanPham).Count();
                mydb.countSanPham = count;
            }
            using (MyModel mymodel = new MyModel())
            {
                var count = (from o in mymodel.ThongTinKhachHangs
                             select o.ID_ThongTinKhachHang).Count();
                mydb.countUser = count;
            }
            using (MyModel mymodel = new MyModel())
            {
                var count = (from o in mymodel.Hoadons
                             select o.ID_HoaDon).Count();
                mydb.countHoaDon = count;
            }
            using (MyModel mymodel = new MyModel())
            {
                var count = (from o in mymodel.Hoadons
                             select o.TongTien).Sum();
                mydb.countDoanhThu = count;
            }
            DateTime thisDay = DateTime.Today;
            mydb.now = thisDay;

          
            return View(mydb);
        }
    }
}