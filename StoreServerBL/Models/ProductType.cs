using System;
using System.Collections.Generic;

#nullable disable

namespace StoreServerBL.Models
{
    public partial class ProductType
    {
        public ProductType()
        {
            Products = new HashSet<Product>();
        }

        public int TypeId { get; set; }
        public string Type { get; set; }

        public virtual ICollection<Product> Products { get; set; }
    }
}
