using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IBLL;
using OXCoder.DBModel;
using OXCoder.IDAL;
using OXCoder.DALImpl;

namespace OXCoder.BLLImpl
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

        public int Register(String email, String pwd, int role)
        {
            //IDAL.IUserDao userDao = new UserDao();
            //ox_user user = userDao.FindUserByEmail(email);
            //if (user )
            //try
            //{
            //    context.ox_user.InsertOnSubmit(new ox_user { email = email, pwd = pwd });
            //    context.SubmitChanges();
            //    return true;
            //}
            //catch (InvalidOperationException e)
            //{
            //    return false;
            //}

            return 0;
        }

        public bool sendEmailForRegister(String email)
        {
            return true;
        }
    }
}
