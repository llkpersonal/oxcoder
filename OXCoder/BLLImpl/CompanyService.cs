using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IBLL;
using OXCoder.IDAL;
using OXCoder.DALImpl;
using OXCoder.DBModel;

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

        public void UpdateNewCompany(int uid, string name, string tel, string provefile) 
        {
            ICompanyDao companyDao = new CompanyDao();
            companyDao.UpdateCompanyInformation(uid, name, tel, provefile);

        }

        public void UpdateCompanyBasicInfo(int uid, string cname, string briefname, string logo, string website, string province, string city, string size, string desc)
        {
            ICompanyDao companyDao = new CompanyDao();
            companyDao.UpdateCompanyBasicInformation(uid, cname, briefname, logo, website, province, city, size, desc);
            IUserDao userDao = new UserDao();
            userDao.ChangeRole(uid, 3);
        }
        public ox_company GetCompanyByUid(int uid)
        {
            ICompanyDao companyDao = new CompanyDao();
            return companyDao.FindCompanyByUid(uid);
        }
    }
}
