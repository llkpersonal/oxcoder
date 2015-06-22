using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OXCoderClient
{
    public partial class hr_to_new_info_handle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cname = Request.Params["cname"];
            string provefile = Request.Params["provefile"];
            string telephone = Request.Params["phone"];

        }
    }
}