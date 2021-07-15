using DatabaseProvider.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseIO
{
    public class ProductDao
    {
       
        MyModel mydb = new MyModel();
        public SanPham ViewDetail(int id)
        {
            return mydb.SanPhams.Find(id);
        }
    }
}
