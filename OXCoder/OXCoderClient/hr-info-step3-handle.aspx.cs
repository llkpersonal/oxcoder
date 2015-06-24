using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OXCoderClient
{
    public partial class hr_info_step3_handle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie tagCookie = Request.Cookies["tags"];
            if (Request.Params["flag"] == "add")
            {
                if (tagCookie != null)
                {
                    string[] nowtags = tagCookie.Value.Split('-');
                    if (nowtags.Length >= 3)
                    {
                        Response.Redirect("hr-info-step3.aspx");
                        return;
                    }
                    tagCookie.Value = tagCookie.Value + HttpUtility.UrlEncode("-" + Request.Params["chooseTagStr"]);
                    //tagCookie.Values.Set("tags", tagCookie.Value);
                    Response.AppendCookie(tagCookie);
                }
                else
                {
                    tagCookie = new HttpCookie("tags");
                    tagCookie.Name = "tags";
                    tagCookie.Value = HttpUtility.UrlEncode(Request.Params["chooseTagStr"]);
                    Response.Cookies.Add(tagCookie);
                }
            }
            if (Request.Params["flag"] == "del")
            {
                if (tagCookie != null)
                {
                    string tags = HttpUtility.UrlDecode(tagCookie.Value);
                    string[] arrTags = tags.Split('-');
                    tagCookie.Value = "";
                    int n = 0;
                    foreach (string tag in arrTags)
                    {
                        if (tag != Request.Params["chooseTagStr"])
                        {
                            if (n != 0) tagCookie.Value = tagCookie.Value + "-";
                            tagCookie.Value += HttpUtility.UrlEncode(tag);
                            n++;
                        }
                    }
                    if(tagCookie.Value == "")
                    {
                        TimeSpan time = new TimeSpan(-1, 0, 0);
                        tagCookie.Expires = DateTime.Now.Add(time);
                    }
                    Response.AppendCookie(tagCookie);
                }
            }
            Response.Redirect("hr-info-step3.aspx");
        }
    }
}