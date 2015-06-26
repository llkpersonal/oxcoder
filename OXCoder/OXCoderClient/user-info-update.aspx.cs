using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OXCoder.IBLL;
using OXCoder.BLLImpl;

namespace OXCoderClient
{
    public partial class user_info_update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Int32 uid = Convert.ToInt32(Session["uid"]);
            if (null != Session)
            {
                String name = Request.Params["name"];
                Int32 age = Convert.ToInt32(Request.Params["age"]);
                String gender = Request.Params["sex"];
                String tel = Request.Params["phone"];
                IUserService userService = new UserService();
                if (userService.ModifyInfo(uid, name, gender, age, tel))
                {
                    Session["name"] = name;
                    Response.Redirect("user-resume.aspx");
                }
                else
                {
                    Response.Write("更新信息出错！");
                }

            }
            else
            {
                Response.Redirect("signin.aspx");
            }
        }
    }
}