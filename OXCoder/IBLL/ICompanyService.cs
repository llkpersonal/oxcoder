using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.DBModel;

namespace OXCoder.IBLL
{
    public interface ICompanyService
    {
        void AddNewCompany(int uid, string name, string tel, string provefile);
        ox_company GetCompanyByUid(int uid);
        void UpdateNewCompany(int uid, string name, string tel, string provefile);
        void UpdateCompanyBasicInfo(int uid, string cname, string briefname, string logo, string website, string province, string city, string size, string desc);
    }
}
