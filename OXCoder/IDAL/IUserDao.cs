using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.DBModel;
namespace OXCoder.IDAL
{
    public interface IUserDao
    {
        ox_user FindUserByEmail(string email);

        /**
         * 当注册用户时 增加用户
         */
        bool addUser(String email, String pwd, int role);

    }
}
