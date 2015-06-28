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
    public partial class signup2_sub : System.Web.UI.Page
    {
        protected string cname = string.Empty;
        protected string shortname = "";
        protected string website = "";
        protected string province = "";
        protected string city = "";
        protected string size = "";
        protected string desc = "";
        protected int status = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            ICompanyService companyService = new CompanyService();
            IUserService userService = new UserService();
            int uid = Convert.ToInt32(Session["uid"]);
            ox_company company = companyService.GetCompanyByUid(uid);
            cname = company.companyname;
            shortname = company.briefname;
            website = company.website;
            province = company.province;
            city = company.city;
            size = company.size;
            desc = company.description;
            status = userService.GetUser(Session["User"].ToString()).role;
        }
    }
}