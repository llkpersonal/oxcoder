using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.DBModel;
namespace OXCoder.IDAL
{
    public interface ICompanyDao
    {
        void AddCompanyInformation(int uid, string name, string telephone, string provefile);
        ox_company FindCompanyByUid(int uid);
        void UpdateCompanyInformation(int uid, string name, string telephone, string provefile);
        void UpdateCompanyBasicInformation(int uid, string cname, string briefname, string logo, string website, string province, string city, string size, string desc);
        void UpdateCompanyTagsInDatabase(int uid, string tags);
        
    }
}
