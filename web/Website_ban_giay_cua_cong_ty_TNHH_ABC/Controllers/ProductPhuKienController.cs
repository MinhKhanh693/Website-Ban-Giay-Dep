using DatabaseIO;
using DatabaseProvider.EntityFramework;
using PagedList;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Web.Mvc;

namespace Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers
{
    public class ProductPhuKienController : Controller
    {
        // GET: ProductPhuKien
        DBIO db = new DBIO();
        public ActionResult ProductPhuKienIndex(int? page)
        {
            dynamic myModel = new ExpandoObject();

            // 1. Tham số int? dùng để thể hiện null và kiểu int
            // page có thể có giá trị là null và kiểu int.

            // 2. Nếu page = null thì đặt lại là 1.
            if (page == null) page = 1;

            // 3. Tạo truy vấn, lưu ý phải sắp xếp theo trường nào đó, ví dụ OrderBy
            var links = (from l in db.GetListSanPhamPhuKien()
                         select l).OrderBy(x => x.ID_SanPham);

            List<List<Size>> sizes = new List<List<Size>>();
            foreach (var product in links)
                sizes.Add(db.Getlist_Size(product.ID_SanPham));
            myModel.list_Size = sizes;
            // 4. Tạo kích thước trang (pageSize) hay là số Link hiển thị trên 1 trang
            int pageSize = 12;

            // 4.1 Toán tử ?? trong C# mô tả nếu page khác null thì lấy giá trị page, còn
            // nếu page = null thì lấy giá trị 1 cho biến pageNumber.
            int pageNumber = (page ?? 1);

            // 5. Trả về các Link được phân trang theo kích thước và số trang.
            myModel.page = links.ToPagedList(pageNumber, pageSize);
            return View(myModel);
        }
    }
}