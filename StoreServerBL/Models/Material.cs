using System;
using System.Collections.Generic;

#nullable disable

namespace StoreServerBL.Models
{
    public partial class Material
    {
        public Material()
        {
            Products = new HashSet<Product>();
        }

        public int MaterialId { get; set; }
        public string Material1 { get; set; }

        public virtual List<Product> Products { get; set; }
    }
}
