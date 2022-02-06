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
            return this.Users.Where(u => u.Username == userName && u.Password == pass).FirstOrDefault();
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

        public List<Product> SearchProducts(string query)
        {
            List < Product > result = new List<Product>();
            
            foreach(Product p in Products)
            {
                string str = $"{p.ProductName}|{p.Details}";
                if (string.IsNullOrEmpty(query) || str.Contains(query))
                    result.Add(p);
            }

            return result;
        }
        
    }
}
