using System;
using System.Collections.Generic;

#nullable disable

namespace StoreServerBL.Models
{
    public partial class SurfaceMaterial
    {
        public SurfaceMaterial()
        {
            Products = new HashSet<Product>();
        }

        public int SMaterialId { get; set; }
        public string SMaterial { get; set; }

        public virtual ICollection<Product> Products { get; set; }
    }
}
