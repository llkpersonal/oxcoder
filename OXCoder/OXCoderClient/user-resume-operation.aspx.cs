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
    public partial class user_resume_operation : System.Web.UI.Page
    {
        protected ox_user user = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (null != Session && null != Session["user"])
                {
                    String email = Session["user"].ToString();
                    IUserService userService = new UserService();
                    user = userService.GetUser(email);
                }
                else
                {
                    Response.Redirect("signin.aspx");
                }
            }
        }
    }
}