using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Website_ban_giay_cua_cong_ty_TNHH_ABC
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

       
            routes.MapRoute(
               name: "Cart",
               url: "Cart",
               defaults: new { controller = "Cart", action = "Cart", id = UrlParameter.Optional },
               namespaces: new[] {"Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers"}
           );
            routes.MapRoute(
             name: "SearchProduct",
             url: "Search/{keyword}/{page}",
             defaults: new { controller = "SearchProduct", action = "SearchProduct", keyword= UrlParameter.Optional , page = UrlParameter.Optional },
             namespaces: new[] { "Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers" }
         );
            routes.MapRoute(
              name: "ProductMale",
              url: "Male",
              defaults: new { controller = "ProductMale", action = "ProductMaleIndex", id = UrlParameter.Optional },
              namespaces: new[] { "Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers" }
          );
            routes.MapRoute(
              name: "Favourite",
              url: "Favourite",
              defaults: new { controller = "Favourite", action = "Favourite", id = UrlParameter.Optional },
              namespaces: new[] { "Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers" }
          );
            routes.MapRoute(
           name: "ProductGosto",
           url: "Gosto",
           defaults: new { controller = "ProductGosto", action = "ProductGostoIndex", id = UrlParameter.Optional },
           namespaces: new[] { "Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers" }
       );
          routes.MapRoute(
          name: "ProductBoy",
          url: "Boy",
          defaults: new { controller = "ProductBeTrai", action = "ProductBeTraiIndex", id = UrlParameter.Optional },
          namespaces: new[] { "Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers" }
      );
           routes.MapRoute(
           name: "ProductGirls",
           url: "Girls",
           defaults: new { controller = "ProductBeGai", action = "ProductBeGaiIndex", id = UrlParameter.Optional },
           namespaces: new[] { "Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers" }
       );
            routes.MapRoute(
            name: "ProductAccessories",
            url: "Accessories",
            defaults: new { controller = "ProductPhuKien", action = "ProductPhuKienIndex", id = UrlParameter.Optional },
            namespaces: new[] { "Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers" }
        );

            routes.MapRoute(
            name: "ProductFemale",
            url: "Female",
            defaults: new { controller = "ProductFemale", action = "ProductFemaleIndex", id = UrlParameter.Optional },
            namespaces: new[] { "Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers" }
        );
            routes.MapRoute(
            name: "ProductDetails",
            url: "Details/{id}",
            defaults: new { controller = "ChiTietSanPham", action = "ChiTietSanPham", id = UrlParameter.Optional },
            namespaces: new[] { "Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers" }
        );
            routes.MapRoute(
            name: "Login",
            url: "Login",
            defaults: new { controller = "Login", action = "Login", id = UrlParameter.Optional },
            namespaces: new[] { "Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers" }
        );
            routes.MapRoute(
            name: "Register",
            url: "Register",
            defaults: new { controller = "Register", action = "Register", id = UrlParameter.Optional },
            namespaces: new[] { "Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers" }
        );
            routes.MapRoute(
            name: "Default",
            url: "{controller}/{action}/{id}",
            defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
            namespaces: new[] { "Website_ban_giay_cua_cong_ty_TNHH_ABC.Controllers" }
        );


        }
    }
}
