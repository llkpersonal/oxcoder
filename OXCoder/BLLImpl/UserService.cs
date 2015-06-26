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

        public ox_user GetUser(string email)
        {
            IDAL.IUserDao userDao = new UserDao();
            ox_user user = userDao.FindUserByEmail(email);
            return user;
        }

        public int Register(String email, String pwd, int role)
        {
            IDAL.IUserDao userDao = new UserDao();
            ox_user user = userDao.FindUserByEmail(email);
            if (user != null)
                return 1;
            else
            {
                if (userDao.addUser(email, pwd, role))
                {
                    if (this.SendEmailForRegister(email))
                        return 0;
                    else
                        return 2;
                }
                else
                    return 3;
            }
        }

        public bool ModifyInfo(int userId, string name, string gender, int age, string tel)
        {
            IDAL.IUserDao userDao = new UserDao();
            return userDao.ModifyInfo(userId, name, gender, age, tel);
        }

        public bool ModifyPwd(string email, string newPwd)
        {
            IDAL.IUserDao userDao = new UserDao();
            return userDao.ModifyPwd(email, newPwd);
        }

        public bool SendEmailForRegister(string email)
        {
            return true;
        }
    }
}
