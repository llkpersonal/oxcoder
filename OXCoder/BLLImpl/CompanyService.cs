using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IBLL;
using OXCoder.IDAL;
using OXCoder.DALImpl;

namespace OXCoder.BLLImpl
{
    public class CompanyService : IBLL.ICompanyService
    {
        public void AddNewCompany(int uid, string name, string tel, string provefile)
        {
            ICompanyDao companyDao = new CompanyDao();
            companyDao.AddCompanyInformation(uid, name, tel, provefile);
            IUserDao userDao = new UserDao();
            userDao.ChangeRole(uid, 2);
        }
    }
}
