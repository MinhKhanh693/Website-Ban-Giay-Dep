using DatabaseProvider.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseIO
{
    public class Favourite
    {
        MyModel mydb = new MyModel();
        public List<FavouriteViewModel> GetListFavourite(int IdUser)
        {

            var model = from y in mydb.YeuThiches
                        join c in mydb.SanPhams on y.ID_SanPham equals c.ID_SanPham
                        join t in mydb.ThongTinKhachHangs on y.ID_ThongTinKhachHang equals t.ID_ThongTinKhachHang
                        where t.ID_ThongTinKhachHang == IdUser
                        select new FavouriteViewModel()
                        {
                            GiaTien = c.GiaTien,
                            Hinh = c.Hinh,
                            Mau = c.Mau,
                            TenSanPham = c.TenSanPham,
                            ID_loaiSanPham = c.ID_loaiSanPham,
                            ID_SoSize = c.ID_SoSize,
                            ID_YeuThich = y.ID_YeuThich,
                            ID_SanPham = c.ID_SanPham,
                        };                      
            return model.ToList();
        }     
        public YeuThich DeleteFavourite(int id_sanpham , int id_ThongTinKhachHang)
        {
           string sql = "delete from YeuThich where ID_SanPham = '" + id_sanpham + "' and ID_ThongTinKhachHang = '" + id_ThongTinKhachHang + "' ";
           return mydb.Database.SqlQuery<YeuThich>(sql).FirstOrDefault();
        }
    }
}
