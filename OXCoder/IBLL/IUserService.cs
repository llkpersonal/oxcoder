using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OXCoder.IBLL
{
    public interface IUserService
    {
        bool CheckUserByEmailAndPassword(string email,string password);

        /**
         * 先查询看有没有填写邮件的用户，然后再增加记录
         * @param role 注册用户的角色 0：企业  1：普通用户
         * @return
         *      0 成功
         *      1 用户名存在
         *      2 发送邮件失败
         *      3 添加到数据库失败
         */
        int Register(String email, String pwd, int role);


        /**
         * 当注册时发送邮件给注册的用户
         */
        bool sendEmailForRegister(String email);
    }
}
