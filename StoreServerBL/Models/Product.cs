﻿using System;
using System.Collections.Generic;

#nullable disable

namespace StoreServerBL.Models
{
    public partial class Product
    {
        public Product()
        {
            ProductInOrders = new HashSet<ProductInOrder>();
            Reviews = new HashSet<Review>();
        }

        public int ProductId { get; set; }
        public int SellerId { get; set; }
        public string Picture { get; set; }
        public string ProductName { get; set; }
        public string Details { get; set; }
        public DateTime AdvertisingDate { get; set; }
        public double Price { get; set; }
        public int SMaterialId { get; set; }
        public int ColorId { get; set; }
        public int StyleId { get; set; }
        public int Height { get; set; }
        public int Width { get; set; }
        public bool IsActive { get; set; }
        public int PMaterialId { get; set; }

        public virtual Color Color { get; set; }
        public virtual PaintMaterial PMaterial { get; set; }
        public virtual SurfaceMaterial SMaterial { get; set; }
        public virtual Seller Seller { get; set; }
        public virtual Style Style { get; set; }
        public virtual ICollection<ProductInOrder> ProductInOrders { get; set; }
        public virtual ICollection<Review> Reviews { get; set; }
    }
}
