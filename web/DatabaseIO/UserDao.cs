using DatabaseProvider.EntityFramework;
using System.Linq;

namespace DatabaseIO
{
    public class UserDao
    {
        MyModel mydb = null;
        public UserDao(){
            mydb = new MyModel();
        }   
        public ThongTinKhachHang GetById(string email)
        {
            return mydb.ThongTinKhachHangs.SingleOrDefault(x => x.email == email) ;
        }
    }
}
