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

        public void UpdateCompanyBasicInformation(int uid, string cname, string briefname, string logo, string website, string province, string city, string size, string desc)
        {
            OXCompanyDataContext companyDataContext = new OXCompanyDataContext();
            ox_company company = companyDataContext.ox_companies.Single(d => d.userid == uid);
            company.companyname = cname;
            company.briefname = briefname;
            company.logo = logo;
            company.website = website;
            company.province = province;
            company.city = city;
            company.size = size;
            company.description = desc;
            companyDataContext.SubmitChanges();
        }

        public void UpdateCompanyInformation(int uid, string name, string telephone, string provefile)
        {
            OXCompanyDataContext companyDataContext = new OXCompanyDataContext();
            ox_company company = companyDataContext.ox_companies.Single(d => d.userid == uid);
            company.companyname = name;
            company.telephone = telephone;
            company.provefile = provefile;
            companyDataContext.SubmitChanges();
        }

        public ox_company FindCompanyByUid(int uid)
        {
            DBModel.OXCompanyDataContext companyDataContext = new OXCompanyDataContext();
            try 
            {
                ox_company company = companyDataContext.ox_companies.Single(d => d.userid == uid);
                return company;
            }
            catch (InvalidOperationException e)
            {
                return null;
            }
        }
    }
}
