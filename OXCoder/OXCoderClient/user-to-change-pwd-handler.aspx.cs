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
    public partial class user_to_change_pwd_handler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (null != Session && null != Session["uid"])
            {
                string oldPwd = Request.Params["old"];
                string newPwd = Request.Params["pwd"];
                string rePwd = Request.Params["rePwd"];
                if (newPwd != rePwd)
                {
                    Response.Write("两次密码不一致！");
                }
                else
                {
                    IUserService userService = new UserService();
                    String email = (String)Session["user"];
                    if (!userService.CheckUserByEmailAndPassword(email, oldPwd))
                    {
                        Response.Write("原密码错误！");
                    }
                    else
                    {
                        if (userService.ModifyPwd(email, newPwd))
                        {
                            Response.Write("<html><head><title>修改成功</title></head><body><script type='text/javascript'>location.href='./user-index.aspx';</script></body></html>");
                        }
                        else
                        {
                            Response.Write("修改失败！");
                        }
                    }
                }
            }
            else
            {
                Response.Redirect("signin.aspx");
            }
        }
    }
}