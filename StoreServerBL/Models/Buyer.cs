using System;
using System.Collections.Generic;

#nullable disable

namespace StoreServerBL.Models
{
    public partial class Buyer
    {
        public Buyer()
        {
            Orders = new HashSet<Order>();
            Reviews = new HashSet<Review>();
        }

        public string Username { get; set; }

        public virtual ICollection<Order> Orders { get; set; }
        public virtual ICollection<Review> Reviews { get; set; }
    }
}
