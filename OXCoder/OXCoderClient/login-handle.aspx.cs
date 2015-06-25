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
                Session["uid"] = user.id;
                Session["name"] = user.name;
                //开发者首页
                if (role == 0)
                {
                    Response.Redirect("user-index.aspx");
                }
                //首次登录的企业用户
                else if (role == 1)
                {
                    Response.Redirect("hr-to-new-info.aspx");
                }
                //第一步填写基本信息
                else if (role == 2)
                {
                    Response.Redirect("signup2-sub.aspx");
                }
                //第二步公司特色标签
                else if (role == 3)
                {
                    Response.Redirect("hr-info-step3.aspx");
                }
                else if (role == 4)
                {
                    Response.Redirect("hr-recruit-list.aspx");
                }
                //Response.Write("登录成功"+role);
                
            }
            else
                Response.Write("登录失败");
        }
    }
}