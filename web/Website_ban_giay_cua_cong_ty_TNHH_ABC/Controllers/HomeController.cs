using DatabaseIO;
using DatabaseProvider.EntityFramework;
using PagedList;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Web.Mvc;
using Website_ban_giay_cua_cong_ty_TNHH_ABC.Code;

namespace Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            DBIO db = new DBIO();
            dynamic myModel = new ExpandoObject();
           /* --San Pham nam--*/
            myModel.list_SanPham = db.Getlist_SanPham();
            List<List<Size>> sizes = new List<List<Size>>();
            foreach (var product in myModel.list_SanPham)
                sizes.Add(db.Getlist_Size(product.ID_SanPham));
            myModel.list_Size = sizes;
            /* --San Pham Nu--*/
            myModel.ListSanPhamNu = db.GetListSanPhamNu();
            List<List<Size>> sizesNU = new List<List<Size>>();
            foreach (var product in myModel.ListSanPhamNu)
                sizesNU.Add(db.Getlist_Size(product.ID_SanPham));
            myModel.listSizeNu = sizesNU;
            
            /* --San Pham Phu Kien--*/
            myModel.ListSanPhamPhuKien = db.GetListSanPhamPhuKien();
            List<List<Size>> sizesPhuKien = new List<List<Size>>();
            foreach (var product in myModel.ListSanPhamPhuKien)
                sizesPhuKien.Add(db.Getlist_Size(product.ID_SanPham));
            myModel.listSizePhuKien = sizesPhuKien;

            /* --San Pham Gosto--*/
            myModel.ListSanPhamGosto = db.GetlistSanPhamGosto();
            List<List<Size>> sizesGosto = new List<List<Size>>();
            foreach (var product in myModel.ListSanPhamGosto)
                sizesGosto.Add(db.Getlist_Size(product.ID_SanPham));
            myModel.listSizeGosto = sizesGosto;

            /* --San Pham Bé Trai--*/
            myModel.ListSanPhamBeTrai = db.GetlistSanPhamBeTrai();
            List<List<Size>> sizesBeTrai = new List<List<Size>>();
            foreach (var product in myModel.ListSanPhamBeTrai)
                sizesBeTrai.Add(db.Getlist_Size(product.ID_SanPham));
            myModel.listSizeBeTrai = sizesBeTrai;

            /* --San Pham Bé Gái--*/
            myModel.ListSanPhamBeGai = db.GetlistSanPhamBeGai();
            List<List<Size>> sizesBeGai = new List<List<Size>>();
            foreach (var product in myModel.ListSanPhamBeGai)
                sizesBeGai.Add(db.Getlist_Size(product.ID_SanPham));
            myModel.listSizeBeGai = sizesBeGai;
            return View(myModel);
        }


        


    }
}