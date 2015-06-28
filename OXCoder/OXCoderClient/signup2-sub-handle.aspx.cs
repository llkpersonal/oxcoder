using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OXCoder.IBLL;
using OXCoder.BLLImpl;

namespace OXCoderClient
{
    public partial class signup2_sub_handle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);
            string cname = Request.Params["cname"];
            string briefname = Request.Params["cnameshort"];
            HttpFileCollection files = Request.Files;
            HttpPostedFile file = files[0];
            string CurrentDirectory = System.AppDomain.CurrentDomain.BaseDirectory.ToString();
            file.SaveAs(CurrentDirectory+"\\logo\\logo" + uid + ".jpg");
            string website = Request.Params["website"];
            string province = Request.Form["prov"];
            string city = Request.Form["city"];
            string size = Request.Form["scale"];
            string desc = Request.Params["cdes"];
            ICompanyService companyService = new CompanyService();
            companyService.UpdateCompanyBasicInfo(uid, cname, briefname, "logo"+uid+".jpg", website, province, city, size, desc);
            Response.Redirect("./hr-info-step3.aspx");
        }
    }
}