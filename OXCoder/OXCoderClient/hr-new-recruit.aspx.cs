using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OXCoder.BLLImpl;
using OXCoder.IBLL;
using OXCoder.DBModel;
namespace OXCoderClient
{
    public partial class hr_new_recruit : System.Web.UI.Page
    {
        protected string cname = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);
            ICompanyService companyService = new CompanyService();
            cname = companyService.GetCompanyByUid(uid).companyname;
        }
    }
}