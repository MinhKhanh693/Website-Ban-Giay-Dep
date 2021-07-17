using System.Web.Mvc;
using System.Dynamic;
using DatabaseIO;
using System.Collections.Generic;
using DatabaseProvider.EntityFramework;
using System;
using Website_ban_giay_cua_cong_ty_TNHH_ABC.Code;
using System.Configuration;
using System.Data.SqlClient;

namespace Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers
{
    public class ChiTietSanPhamController : Controller
    {
        // GET: ChiTietSanPham

        public ActionResult ChiTietSanPham(int id = 0)
        {
            DBIO Mymodel = new DBIO();
            dynamic mydb = new ExpandoObject();
      
            mydb.listChiTietSanPham = Mymodel.GetListChiTietSanPham(id);
            if (mydb.listChiTietSanPham == null)
            {
                return HttpNotFound();
           }
            else
            {
                List<List<Size>> sizes = new List<List<Size>>();
                foreach (var product in mydb.listChiTietSanPham)
                    sizes.Add(Mymodel.Getlist_Size(product.ID_SanPham));
                mydb.list_sizeChiTietSanPham = sizes;
            }
            return View(mydb);
        }
       
      
        [HttpPost]
        public ActionResult AddFavourite(YeuThich id)
        {
           
            using (MyModel myModel = new MyModel())
            {
                
                var user = (Userlogin)Session[CommonConstants.USER_SESSION];
                var userid = user.UserID;
                id.ID_ThongTinKhachHang = userid;
           
                myModel.YeuThiches.Add(id);
                myModel.SaveChanges();

            }
            
            return Json(id);
         
        }

    }
}