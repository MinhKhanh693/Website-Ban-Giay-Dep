using DatabaseIO;
using System.Collections.Generic;
using System.Web.Mvc;
using Website_ban_giay_cua_cong_ty_TNHH_ABC.Code;

namespace Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers
{
    public class PaymentController : Controller
    {
        // GET: Payment
        public ActionResult Payment()
        {
            var cart = Session[CommonConstants.CartSession];
            var List = new List<CartItem>();
            if (cart != null)
            {
                List = (List<CartItem>)cart;
            }
            return View(List);
        }
    }
}