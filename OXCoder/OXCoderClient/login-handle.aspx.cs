using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OXCoder.DBModel;
using OXCoder.IBLL;
using OXCoder.BLLImpl;
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
                
                ox_user user = userService.GetUser(email);
                short role = user.role;
                Session["user"] = email;
                if (role == 1)
                {
                    Response.Redirect("user-index.aspx");
                }
                else if (role == 0)
                {
                    Response.Redirect("hr-to-new-info.aspx");
                }
                //Response.Write("登录成功"+role);
                
            }
            else
                Response.Write("登录失败");
        }
    }
}