using DatabaseProvider.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseIO
{
    public class Search
    {
        MyModel mydb = new MyModel();
        public List<SanPham> SearchProduct(string keyword)
        {
            string sql = "select * from SanPham where TenSanPham = N'"+ keyword + "' or ID_loaiSanPham = N'" + keyword + "' or Mau = N'" + keyword + "'";
            return mydb.Database.SqlQuery<SanPham>(sql).ToList();

        }
        public List<Size> Getlist_Size(int @ID_sanpham)
        {
            string sql = "select * from Size e, SanPham c where e.ID_SoSize = c.ID_SoSize and  c.ID_SanPham = '" + @ID_sanpham + "'";
            return mydb.Database.SqlQuery<Size>(sql).ToList();

        }
    }
}
