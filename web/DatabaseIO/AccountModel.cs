using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DatabaseProvider.EntityFramework;

namespace DatabaseIO
{
    
    public class AccountModel
    {
        MyModel mydb = new MyModel();

        public bool Login(string email , string password)
        {
            object[] sqlParams =
            {
                new SqlParameter("@Email" , email),
                new SqlParameter("@Password" , password),

            };
            var res = mydb.Database.SqlQuery<bool>("Sp_Account_Login @Email,@Password",sqlParams).SingleOrDefault();
            return res;
        }

    }
}
