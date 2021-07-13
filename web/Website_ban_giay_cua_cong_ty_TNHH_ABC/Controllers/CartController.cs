using DatabaseIO;
using System.Collections.Generic;
using System.Web.Mvc;
using DatabaseProvider.EntityFramework;
using System.Web.Script.Serialization;
using System.Linq;
using Website_ban_giay_cua_cong_ty_TNHH_ABC.Code;

namespace Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers
{
    public class CartController : Controller
    {
  
        // GET: Cart
        public ActionResult Cart()
        {
            var cart = Session[CommonConstants.CartSession];
            var List = new List<CartItem>();
            if (cart != null)
            {
                List = (List<CartItem>)cart;
            }
            return View(List);
        }

        [HttpPost]
        public JsonResult Update(string cartModel)
        {
            var jsonCart = new JavaScriptSerializer().Deserialize<List<CartItem>>(cartModel);
            var sessionCart = (List<CartItem>)Session[CommonConstants.CartSession];

            foreach (var item in sessionCart)
            {
                var jsonItem = jsonCart.SingleOrDefault(x => x.SanPham.ID_SanPham == item.SanPham.ID_SanPham);
                if (jsonItem != null)
                {
                    item.quanlity = jsonItem.quanlity;
                }
            }
            Session[CommonConstants.CartSession] = sessionCart;
            return Json(new
            {
                status = true
            });
        }

        public JsonResult Delete(int ID_SanPham )
        {
            var sessionCart = (List<CartItem>)Session[CommonConstants.CartSession];
            sessionCart.RemoveAll(x => x.SanPham.ID_SanPham == ID_SanPham);
            Session[CommonConstants.CartSession] = sessionCart;
            return Json(new
            {
                status = true
            });
        }


        public ActionResult AddItem(int ID_SanPham, int quanlity = 1)
        {
            var product = new ProductDao().ViewDetail(ID_SanPham);
            var cart = Session[CommonConstants.CartSession];

            if (cart != null)
            {
                var list = (List<CartItem>)cart;
                if (list.Exists(x => x.SanPham.ID_SanPham == ID_SanPham))
                {

                    foreach (var item in list)
                    {
                        if (item.SanPham.ID_SanPham == ID_SanPham)
                        {
                            item.quanlity += quanlity;
                        }
                    }
                }
                else
                {
                    //tạo mới đối tượng cart item
                    var item = new CartItem();
                    item.SanPham = product;
                    item.quanlity = quanlity;
                    list.Add(item);
                }
                //Gán vào session
                Session[CommonConstants.CartSession] = list;
            }
            else
            {
                //tạo mới đối tượng cart item
                var item = new CartItem();
                item.SanPham = product;
                item.quanlity = quanlity;
                var list = new List<CartItem>();
                list.Add(item);
                //Gán vào session
                Session[CommonConstants.CartSession] = list;
            }
            return RedirectToAction("Cart");

        }
    }
}