using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IBLL;
using OXCoder.DBModel;
using OXCoder.IDAL;
using OXCoder.DALFactory;

namespace OXCoder.BLLFactory
{
    public class UserService:IBLL.IUserService
    {
        public bool CheckUserByEmailAndPassword(string email,string password)
        {
            IDAL.IUserDao userDao = new UserDao();
            ox_user user = userDao.FindUserByEmail(email);
            if (user == null) return false;

            return password==user.pwd;
        }
    }
}
