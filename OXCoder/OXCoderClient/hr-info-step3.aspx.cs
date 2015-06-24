using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OXCoder.IBLL;
using OXCoder.BLLImpl;
using OXCoder.DBModel;

namespace OXCoderClient
{
    public partial class hr_info_step3 : System.Web.UI.Page
    {
        protected string cname = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            ICompanyService companyService = new CompanyService();
            int uid = Convert.ToInt32(Session["uid"]);
            ox_company company = companyService.GetCompanyByUid(uid);
            cname = company.companyname;
        }
    }
}