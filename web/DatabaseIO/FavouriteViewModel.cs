using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseIO
{
    public class FavouriteViewModel
    {
        public int ID_YeuThich { get; set; }
        public int ID_SanPham { get; set; }
        public int ID_ThongTinKhachHang { get; set; }
 
        public string TenSanPham { get; set; }

        public decimal? GiaTien { get; set; }
     
        public string ID_loaiSanPham { get; set; }

        public int? ID_SoSize { get; set; }
 
        public string Hinh { get; set; }

        public string Mau { get; set; }

    }
}
