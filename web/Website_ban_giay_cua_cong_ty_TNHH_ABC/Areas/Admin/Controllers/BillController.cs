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
    public class BillController : Controller
    {
        // GET: Admin/Bill
        public ActionResult Bill()
        {
            dynamic mydb = new ExpandoObject();
            DBIO db = new DBIO();
            mydb.listHoaDon = db.GetListHoaDon();
            
            return View(mydb);
        }
        public ActionResult StatisticalBill()
        {

            return View();
        }
    }
}