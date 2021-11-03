using System;
using System.Collections.Generic;

#nullable disable

namespace StoreServerBL.Models
{
    public partial class User
    {
        public User()
        {
            Buyers = new HashSet<Buyer>();
        }

        public string Username { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public bool IsAdmin { get; set; }
        public bool IsSeller { get; set; }
        public bool IsBuyer { get; set; }

        public virtual ICollection<Buyer> Buyers { get; set; }
    }
}
