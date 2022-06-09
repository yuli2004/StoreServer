using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;



namespace StoreServerBL.Models
{
    public partial class StoreDBContext : DbContext
    {
        #region Log in
        public User LogIn(string userName, string pass)
        {
            return this.Users.Include(u=>u.Buyer.Orders).ThenInclude(o=>o.ProductInOrders).ThenInclude(p=>p.Product)
                .Include(u=>u.Seller.Products).ThenInclude(p=>p.ProductInOrders).ThenInclude(pp=>pp.Order).ThenInclude(ppp=>ppp.Buyer ).Where(u => u.Username == userName && u.Password == pass).FirstOrDefault();
        }
        #endregion

        #region Register buyer
        public void RegisterBuyer(Buyer userBuyer)
        {
            try
            {
                this.Buyers.Add(userBuyer);
                this.SaveChanges();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
        }
        #endregion

        #region Register seller
        public bool RegisterSeller(Seller userSeller)
        {
            try
            {
                this.Sellers.Add(userSeller);
                this.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return false;
            }
        }
        #endregion

        #region UserExistsByEmail
        // פעולה הבודקת האם האימייל שהתקבל הוא ייחודי או שהוא כבר קיים ברשימת המשתמשים
        public bool UserExistsByEmail(string email)
        {
            return Users.Any(u => u.Email == email);
        }
        #endregion

        #region UserExistByUsername
        // פעולה הבודקת האם הסיסמה שהתקבלה היא ייחודית או שהיא כבר קיים ברשימת המשתמשים
        public bool UserExistsByUsername(string username)
        {
            return Users.Any(u => u.Username == username);
        }
        #endregion

        #region Search product
        public List<Product> SearchProducts(string query)
        {
            
            List < Product > result = new List<Product>();
            List<Product> allProducts = this.Products.Include(p => p.Seller.UsernameNavigation).Include(c=>c.Color).Include(s => s.Style).Include(pm=>pm.PMaterial).Include(sm=>sm.SMaterial)
                .Where(p => p.IsActive == true).ToList();
            foreach (Product p in allProducts)
            {
                string str = $"{p.ProductName}|{p.Details}";
                if (string.IsNullOrEmpty(query) || str.Contains(query))
                    result.Add(p);
            }

            return result;
        }
        #endregion

        #region get sold products
        public List<ProductInOrder> GetSoldProducts()
        {
            //List<Product> allProducts = this.Products.Include(p => p.Seller.UsernameNavigation).Include(c => c.Color).Include(s => s.Style).Include(pm => pm.PMaterial).Include(sm => sm.SMaterial)
            //    .Where(p => p.IsActive == false).ToList();
            List<ProductInOrder> soldProducts = this.ProductInOrders.Include(po=>po.Order).ThenInclude(o=>o.Buyer)
                .Include(p => p.Product).ThenInclude(c => c.Color).Include(s=>s.Product.Style).Include(pm => pm.Product.PMaterial).Include(sm => sm.Product.SMaterial).ToList();
            return soldProducts;
        }
        #endregion

        #region add order
        public bool AddOrder(Order o)
        {
            //context.Orders.Update(o);            
            //Buyer buyer=this.Buyers.Include(b=>b.UsernameNavigation).Where(b => b == o.Buyer).FirstOrDefault();
            //if (buyer == null)
            //    return false;
            //buyer.Orders.Add(o);

            SaveChanges();
            return true;
        }
        #endregion

        #region Update Product Status
        //public void UpdateProductStatus(Order o)
        //{
        //   foreach(ProductInOrder p in o.ProductInOrders)
        //    {
        //        Product product = p.Product;
        //        if(product!=null)
        //             product.IsActive = false;
        //    }
        //    SaveChanges();
        //}
        #endregion

        #region upload product
        public bool UploadProduct(Product pr)
        {
            try
            {
                this.Products.Update(pr);
                this.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return false;
            }
        }
        #endregion

    }
}
