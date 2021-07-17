using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Website_ban_giay_cua_cong_ty_TNHH_ABC.Areas.Admin.code
{
    [Serializable]
    public class AdminLogin
    {
        public string username { get; set; }
        public int ID_admin { get; set; }
        public string email { get; set; }
    }
}