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
    public partial class hr_info_step3_handle2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie tagCookie = Request.Cookies["tags"];
            string[] nowtags = tagCookie.Value.Split('-');
            string tag = string.Empty;
            for (int i = 0; i < nowtags.Length; i++)
            {
                
                tag = HttpUtility.UrlDecode(nowtags[i]) + ";"+ tag;
            }
                if (tagCookie != null)
                {
                    ICompanyService companyService = new CompanyService();
                    companyService.UpdateCompanyTagsInfo(Convert.ToInt32(Session["uid"]), tag);
                    TimeSpan time = new TimeSpan(-1, 0, 0);
                    tagCookie.Expires = DateTime.Now.Add(time);
                    Response.AppendCookie(tagCookie);
                    Response.Redirect("hr-info-step3-info.aspx");
                }
        }
    }
}