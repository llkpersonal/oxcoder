using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OXCoder.IDAL
{
    public interface ICompanyDao
    {
        void AddCompanyInformation(int uid, string name, string telephone, string provefile);
    }
}
