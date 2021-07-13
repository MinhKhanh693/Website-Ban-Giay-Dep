using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Website_ban_giay_cua_cong_ty_TNHH_ABC.Code
{
    [Serializable]
    public class Userlogin
    {
        public int UserID { set; get; }
        public string lastName { set; get; }

        public int CountFavourite { set; get; }
    
    }
}