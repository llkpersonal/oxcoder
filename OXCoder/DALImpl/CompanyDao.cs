using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IDAL;
using OXCoder.DBModel;

namespace OXCoder.DALImpl
{
    public class CompanyDao : IDAL.ICompanyDao
    {
        public void AddCompanyInformation(int uid, string name, string telephone, string provefile)
        {
            OXCompanyDataContext companyDataContext = new OXCompanyDataContext();
            ox_company company = new ox_company();
            company.userid = uid;
            company.companyname = name;
            company.telephone = telephone;
            company.provefile = provefile;
            companyDataContext.ox_companies.InsertOnSubmit(company);
            companyDataContext.SubmitChanges();
        }
    }
}
