using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.DBModel;
namespace OXCoder.IBLL
{
    public interface IUserService
    {
        /**
         * 通过邮件获取用户 根据用户输入的密码和数据库中的密码做比较
         * @return
         *      true 登录成功
         *      false 登录失败
         */
        bool CheckUserByEmailAndPassword(string email,string password);


        /**
         * 通过邮件获取用户
         */
        ox_user GetUser(string email);

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
        bool SendEmailForRegister(String email);

        /*
         * 修改密码
         */
        bool ModifyPwd(String email, String newPwd);

        /*
         * 修改基本信息
         */
        bool ModifyInfo(String name, String gender, int age, String tel);
    }
}
