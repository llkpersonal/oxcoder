using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OXCoder.OXCoderClient
{
    public partial class register_handle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String email = Request.Params["email"];
            String pwd = Request.Params["pwd"];
            
            if(true) { //当登录成功时

            }

        }
    }
}