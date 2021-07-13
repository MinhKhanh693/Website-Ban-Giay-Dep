using DatabaseIO;
using DatabaseProvider.EntityFramework;
using System;
using System.Collections.Generic;

using System.Dynamic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Website_ban_giay_cua_cong_ty_TNHH_ABC.Code;

namespace Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers
{
    public class FavouriteController : Controller
    {
        // GET: Favourite
        public ActionResult Favourite()
        {
            Favourite favourite = new Favourite();
            var user = (Userlogin)Session[CommonConstants.USER_SESSION];
            dynamic myModel = new ExpandoObject();
            /* --San Pham yeu thich--*/
            myModel.listFavourite = favourite.GetListFavourite(user.UserID);
            user.CountFavourite =  myModel.listFavourite.Count;
            return View(myModel);
        }

        [HttpPost]  
        public ActionResult DeleteFavourite(YeuThich id)
        {
            using (MyModel myModel = new MyModel())
            {
               
                YeuThich yeuthich = myModel.YeuThiches.Find(id.ID_YeuThich);
                myModel.YeuThiches.Remove(yeuthich);                      
                myModel.SaveChanges();
            }
            return Json(id);

        }


    }
}