using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OXCoderClient
{
    public partial class login_handle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(Request.Params["email"]);
            Response.Write(Request.Params["password"]);
            Response.Redirect("index.aspx");
        }
    }
}