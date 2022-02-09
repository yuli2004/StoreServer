using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using StoreServerBL.Models;

namespace StoreServer.DTO
{
    public class LookupTables
    {
        public List<Color> Colors { get; set; }
        public List<Material> Materials { get; set; }
        public List<Style> Styles { get; set; }
        public  List<Product> AllProducts { get; set; }
    }
}
