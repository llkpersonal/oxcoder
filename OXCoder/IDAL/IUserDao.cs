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

    }
}
