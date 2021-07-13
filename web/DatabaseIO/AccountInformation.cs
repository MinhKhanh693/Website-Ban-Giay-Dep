using DatabaseProvider.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseIO
{
    public class AccountInformation
    {
        MyModel mydb = new MyModel();
        public List<ThongTinKhachHang> GetListAccountInformation(int iduser)
        {
            string sql = "Select * from Thongtinkhachhang where ID_ThongTinKhachHang = '" + iduser + "'";
            return mydb.Database.SqlQuery<ThongTinKhachHang>(sql).ToList();
        }
    }
}
