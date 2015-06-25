using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IDAL;
using OXCoder.DBModel;

namespace OXCoder.DALImpl
{
    public class UserDao:IDAL.IUserDao
    {
        public ox_user FindUserByEmail(string email)
        {
            DBModel.OXUserDataContext context = new OXUserDataContext();
            try 
            { 
                ox_user user = context.ox_user.Single(d => d.email == email);
                return user;
            }
            catch(InvalidOperationException e)
            {
                return null;
            }
            
        }

        public bool AddCompanyBasicInfo()
        {
            return true;
        }
        public bool addUser(String email, String pwd, int role)
        {
            DBModel.OXUserDataContext context = new OXUserDataContext();
            try
            {
                string name = email.Split('@')[0];
                context.ox_user.InsertOnSubmit(new ox_user { email = email, pwd = pwd, name = name, role = Convert.ToInt16(role) });
                context.SubmitChanges();
                return true;
            }
            catch (InvalidOperationException e)
            {
                return false;
            }
        }

        public void ChangeRole(int uid, short role)
        {
            DBModel.OXUserDataContext context = new OXUserDataContext();
            ox_user user = context.ox_user.Single(d => d.id == uid);
            user.role = role;
            context.SubmitChanges();
        }
    }
}
