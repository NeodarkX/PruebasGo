using PRUEBITASGO.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PRUEBITASGO.Models
{
    public class UserRepository
    {

        ShopContext context = new ShopContext();

        public User Find(string username)
        {
            return context.Users.Where(u => u.UserName.Equals(username)).FirstOrDefault();
        }

        public User GetByUsernameAndPassword(User user)
        {
            return context.Users.Where(u => u.UserName == user.UserName & u.Password == user.Password).FirstOrDefault();
        }
    }
}
