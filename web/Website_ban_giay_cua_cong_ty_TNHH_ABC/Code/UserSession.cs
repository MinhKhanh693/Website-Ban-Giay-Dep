using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Website_ban_giay_cua_cong_ty_TNHH_ABC.Code
{
    public class UserSession
    {
        public String Email { get; set; }
        public String Password { get; set; }

        public bool RememberMe { get; set; }
    }
}