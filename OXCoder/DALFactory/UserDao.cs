﻿using System;
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
            }catch(InvalidOperationException e)
            {
                return null;
            }
            
        }
    }
}