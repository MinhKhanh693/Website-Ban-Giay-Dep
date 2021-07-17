using System.Web.Mvc;

namespace Website_ban_giay_cua_cong_ty_TNHH_ABC.Areas.Admin
{
    public class AdminAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Admin";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
  
            context.MapRoute(
             "EditProduct",
             "EditProduct/{id}",
             new { action = "EditProductView", Controller = "ProductAdmin", id = UrlParameter.Optional }
         );
            context.MapRoute(
             "DeleteProduct",
             "DeleteProduct/{id}",
             new { action = "DeleteProductView", Controller = "ProductAdmin", id = UrlParameter.Optional }
         );
            context.MapRoute(
            "AddProduct",
            "AddProduct/{id}",
            new { action = "AddProductView", Controller = "ProductAdmin", id = UrlParameter.Optional }
            );
            context.MapRoute(
               "ProductAdmin",
               "ProductAdmin",
               new { action = "ProductAdmin", Controller = "ProductAdmin", id = UrlParameter.Optional }
           );
            context.MapRoute(
               "AccountManagement",
               "AccountManagement",
               new { action = "AccountManagement", Controller = "AccountManagement", id = UrlParameter.Optional }
           );
            context.MapRoute(
             "EditAccount",
             "EditAccount/{id}",
             new { action = "EditAccountView", Controller = "AccountManagement", id = UrlParameter.Optional }
         );
            context.MapRoute(
             "DeleteAccount",
             "DeleteAccount/{id}",
             new { action = "DeleteAccountView", Controller = "AccountManagement", id = UrlParameter.Optional }
         );
            context.MapRoute(
            "TotalBill",
            "TotalBill",
            new { action = "Bill", Controller = "Bill", id = UrlParameter.Optional }
            );
            context.MapRoute(
                "Admin_default",
                "Admin/{controller}/{action}/{id}",
                new { action = "Login",Controller ="Login",id = UrlParameter.Optional }
             );

           

        }
    }
}