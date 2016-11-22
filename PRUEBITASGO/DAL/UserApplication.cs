using PRUEBITASGO.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PRUEBITASGO.DAL
{
    public class UserApplication
    {
        UserRepository userRepo = new UserRepository();
        public User GetByUsernameAndPassword(User user)
        {
            return userRepo.GetByUsernameAndPassword(user);
        }
    }
}
