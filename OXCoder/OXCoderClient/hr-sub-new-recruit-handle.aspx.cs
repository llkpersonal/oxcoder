using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OXCoderClient
{
    public partial class hr_sub_new_recruit_handle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie tagCookie = Request.Cookies["project"];
            if (Request.Params["flag"] == "new")
            {
                if (tagCookie != null)
                {
                    string[] nowtags = tagCookie.Value.Split(';');
                    if (nowtags.Length >= 3)
                    {
                        Response.Redirect("hr-sub-new-recruit.aspx");
                        return;
                    }
                    bool flag = true;
                    string newTag = Request.Params["projectid"];
                    for (int i = 0; i < nowtags.Length; i++)
                    {
                        if (HttpUtility.UrlDecode(nowtags[i]) == newTag)
                            flag = false;
                    }
                    if (flag)
                    {
                        tagCookie.Value = tagCookie.Value + HttpUtility.UrlEncode(";" + Request.Params["projectid"]);
                        //tagCookie.Values.Set("tags", tagCookie.Value);
                        Response.AppendCookie(tagCookie);
                    }

                }
                else
                {
                    tagCookie = new HttpCookie("project");
                    tagCookie.Name = "project";
                    tagCookie.Value = HttpUtility.UrlEncode(Request.Params["projectid"]);
                    Response.Cookies.Add(tagCookie);
                }
            }

            if (Request.Params["flag"] == "del")
            {
                if (tagCookie != null)
                {
                    string tags = HttpUtility.UrlDecode(tagCookie.Value);
                    string[] arrTags = tags.Split(';');
                    tagCookie.Value = "";
                    int n = 0;
                    foreach (string tag in arrTags)
                    {
                        if (tag != Request.Params["projectid"])
                        {
                            if (n != 0) tagCookie.Value = tagCookie.Value + ";";
                            tagCookie.Value += HttpUtility.UrlEncode(tag);
                            n++;
                        }
                    }
                    if (tagCookie.Value == "")
                    {
                        TimeSpan time = new TimeSpan(-1, 0, 0);
                        tagCookie.Expires = DateTime.Now.Add(time);
                    }
                    Response.AppendCookie(tagCookie);
                }
            }
            Response.Redirect("hr-sub-new-recruit.aspx");
        }
    }
}