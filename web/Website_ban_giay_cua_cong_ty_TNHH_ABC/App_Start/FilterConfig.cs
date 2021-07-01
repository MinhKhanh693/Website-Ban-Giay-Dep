using System.Web;
using System.Web.Mvc;

namespace Website_ban_giay_cua_cong_ty_TNHH_ABC
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
