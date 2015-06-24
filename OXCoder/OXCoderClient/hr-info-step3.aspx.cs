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
        protected string tagsHtml = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            ICompanyService companyService = new CompanyService();
            int uid = Convert.ToInt32(Session["uid"]);
            ox_company company = companyService.GetCompanyByUid(uid);
            cname = company.companyname;
            HttpCookie tagCookie = Request.Cookies["tags"];
            if (tagCookie == null) return;
            string tags = HttpUtility.UrlDecode(tagCookie.Value);
            string[] arrTags = tags.Split('-');
            foreach (string tag in arrTags)
            {
                tagsHtml = tagsHtml + "<a href=\"hr-info-step3-handle.aspx?flag=del&chooseTagStr=" + HttpUtility.UrlEncode(tag) + "\"><button  class=\"btn btn-new1\">" + tag + "</button></a>" + "&nbsp;";
            }
        }
    }
}