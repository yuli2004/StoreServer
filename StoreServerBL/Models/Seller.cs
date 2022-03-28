using System;
using System.Collections.Generic;

#nullable disable

namespace StoreServerBL.Models
{
    public partial class Seller
    {
        public Seller()
        {
            Products = new HashSet<Product>();
        }

        public int SellerId { get; set; }
        public string Username { get; set; }
        public string Picture { get; set; }
        public string Info { get; set; }
        public string Name { get; set; }
        public bool IsActive { get; set; }

        public virtual User UsernameNavigation { get; set; }
        public virtual ICollection<Product> Products { get; set; }
    }
}
