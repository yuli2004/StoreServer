using System;
using System.Collections.Generic;

#nullable disable

namespace StoreServerBL.Models
{
    public partial class OrderStatus
    {
        public OrderStatus()
        {
            Orders = new HashSet<Order>();
        }

        public int StatusId { get; set; }
        public string Status { get; set; }

        public virtual ICollection<Order> Orders { get; set; }
    }
}
