using System;
using System.Collections.Generic;

#nullable disable

namespace StoreServerBL.Models
{
    public partial class ProductInOrder
    {
        public int ProductId { get; set; }
        public int OrderId { get; set; }
        public int Id { get; set; }
        public int Quantity { get; set; }

        public virtual Order Order { get; set; }
        public virtual Product Product { get; set; }
    }
}
