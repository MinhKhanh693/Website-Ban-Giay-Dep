using DatabaseIO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Website_ban_giay_cua_cong_ty_TNHH_ABC.Code;

namespace Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers
{
    public class CartCountController : Controller
    {
        // GET: CartCount
        public PartialViewResult CartCount()
        {
            var cart = Session[CommonConstants.CartSession];
            var List = new List<CartItem>();
            if (cart != null)
            {
                List = (List<CartItem>)cart;
            }
            return PartialView(List);
        }
    }
}