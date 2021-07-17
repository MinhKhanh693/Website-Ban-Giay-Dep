using DatabaseProvider.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseIO
{
    public class AdminDao
    {
        MyModel mydb = new MyModel();

        public admin GetbyIdAdmin(string username)
        {
            return mydb.admins.SingleOrDefault(x => x.username == username);
        }
    }
}
