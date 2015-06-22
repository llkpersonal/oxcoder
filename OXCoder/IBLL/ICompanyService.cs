using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OXCoder.IBLL
{
    public interface ICompanyService
    {
        void AddNewCompany(int uid, string name, string tel, string provefile);
    }
}
