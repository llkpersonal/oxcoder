using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OXCoderClient
{
    public partial class user_recruit_list : System.Web.UI.Page
    {

        protected string uname = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (null != Session && null != Session["uid"])
            {
                uname = (String)Session["name"];

            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}