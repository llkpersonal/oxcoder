using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.DBModel;
namespace OXCoder.IDAL
{
    public interface IUserDao
    {
        /**
         * 添加用户基本信息
         */
        bool AddCompanyBasicInfo();
        /**
         * 根据邮件查询用户
         */
        ox_user FindUserByEmail(string email);

        /**
         * 当注册用户时 增加用户
         */
        bool addUser(String email, String pwd, int role);

        void ChangeRole(int uid,short role);

        bool ModifyInfo(int userId, string name, string gender, int age, string tel);

        bool ModifyPwd(string email, string newPwd);
    }
}
