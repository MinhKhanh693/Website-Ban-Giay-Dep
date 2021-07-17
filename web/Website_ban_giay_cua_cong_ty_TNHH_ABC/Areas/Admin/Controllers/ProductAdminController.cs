using DatabaseIO;
using DatabaseProvider.EntityFramework;
using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Website_ban_giay_cua_cong_ty_TNHH_ABC.Areas.Admin.Controllers
{
    public class ProductAdminController : Controller
    {
        // GET: Admin/ProductAdmin
        public ActionResult ProductAdmin()
        {
            DBIO db = new DBIO();
            dynamic model = new ExpandoObject();
            model.listSanPhamNam = db.Getlist_SanPham();
            model.listSanPhamNu = db.GetListSanPhamNu();
            model.listGosto = db.GetlistSanPhamGosto();
            model.listBeTrai = db.GetlistSanPhamBeTrai();
            model.listBeGai = db.GetlistSanPhamBeGai();
            model.listPhuKien = db.GetListSanPhamPhuKien();      
            return View(model);
        }
        public ActionResult EditProductView(int id)
        {
            DBIO db = new DBIO();
            dynamic model = new ExpandoObject();
            model.listSanPham = db.GetListSanPham(id);
            model.listLoaiSanPham = db.GetListLoaiSanPham();
            model.listSize = db.GetListSize();
            return View(model);
        }
        public ActionResult EditProduct(SanPham id)
        {
            using (MyModel mydb = new MyModel())
            {

                SanPham updateUser = (from c in mydb.SanPhams
                                                where
                                            c.ID_SanPham == id.ID_SanPham
                                                select c).FirstOrDefault();

                if (updateUser != null)
                {
                    updateUser.TenSanPham = id.TenSanPham;
                    updateUser.ID_loaiSanPham = id.ID_loaiSanPham;
                    updateUser.GiaTien = id.GiaTien;
                    updateUser.Mau = id.Mau;
                    updateUser.ID_SoSize = id.ID_SoSize;
                    updateUser.Hinh = id.Hinh;              
                    mydb.SaveChanges();
                    return Json(true);
                }
            }
            return Json(false);
        }
        public ActionResult AddProductView()
        {
            DBIO db = new DBIO();
            dynamic model = new ExpandoObject();
            model.listLoaiSanPham = db.GetListLoaiSanPham();
            model.listSize = db.GetListSize();
            return View(model);
        }
        public ActionResult AddProduct(SanPham id)
        {
            using (MyModel mydb = new MyModel())
            {
                mydb.SanPhams.Add(id);
                mydb.SaveChanges();
            }
            return Json(id);
        }
        public ActionResult DeleteProductView(int id)
        {
            DBIO db = new DBIO();
            dynamic model = new ExpandoObject();
            model.listSanPham = db.GetListSanPham(id);
            return View(model);
        }

        public ActionResult DeleteProduct(SanPham id)
        {
            
            using (MyModel myModel = new MyModel())
            {
                SanPham sanPham = myModel.SanPhams.Find(id.ID_SanPham);
                myModel.SanPhams.Remove(sanPham);
                myModel.SaveChanges();
            }
            return Json(id);
        }


    }
}