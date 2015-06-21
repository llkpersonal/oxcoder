using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OXCoder.DBModel;
using OXCoder.IBLL;
using OXCoder.BLLFactory;
namespace OXCoderClient
{
    public partial class login_handle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IUserService userService = new UserService();
            string email = Request.Params["email"];
            string password = Request.Params["pwd"];
            if (userService.CheckUserByEmailAndPassword(email, password))
            {
                //Response.Redirect("index.aspx");
                Response.Write("登录成功");
            }
            else
                Response.Write("登录失败");
        }
    }
}