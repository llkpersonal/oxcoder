using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OXCoder.IBLL;
using OXCoder.BLLImpl;

namespace OXCoder.OXCoderClient
{
    public partial class register_handle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String email = Request.Params["email"];
            String pwd = Request.Params["pwd"];
            int flag = Convert.ToInt32(Request.Params["regflag"]);
            //Response.Write(flag+" " + Request.Params["regflag"]);
            IUserService userService = new UserService();
            int res = userService.Register(email,pwd,flag);
            if (res == 0)
            { //当登录成功时
                Response.Write("恭喜，注册成功！");
            }
            else if(res == 1)
            {
                Response.Write("用户已经存在！");
            }
            else if (res == 2)
            {
                Response.Write("发送邮件失败！");
            }
            else if (res == 3)
            {
                Response.Write("注册失败！");
            }
            else
            {
                Response.Write("错误！");
            }

        }
    }
}