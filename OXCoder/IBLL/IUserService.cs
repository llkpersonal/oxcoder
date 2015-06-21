using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OXCoder.IBLL
{
    public interface IUserService
    {
        bool CheckUserByEmailAndPassword(string email,string password);
    }
}
