using System;
using System.Collections.Generic;

#nullable disable

namespace StoreServerBL.Models
{
    public partial class PaintMaterial
    {
        public PaintMaterial()
        {
            Products = new HashSet<Product>();
        }

        public int PMaterialId { get; set; }
        public string PMaterial { get; set; }

        public virtual ICollection<Product> Products { get; set; }
    }
}
