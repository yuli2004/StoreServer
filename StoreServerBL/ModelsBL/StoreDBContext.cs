using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;



namespace StoreServerBL.Models
{
    public partial class StoreDBContext : DbContext
    {

        public User LogIn(string userName, string pass)
        {
            return this.Users.Where(u => u.Username == userName && u.Password == pass).FirstOrDefault();
        }
    }
}
