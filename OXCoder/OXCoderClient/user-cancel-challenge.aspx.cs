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
    public partial class user_cancel_challenge : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Int32 uid = Convert.ToInt32(Session["uid"]);
                if (null != Session)
                {
                    string challengeId = Request.Params["reid"];
                    IChallengeService challengeService = new ChallengeService();
                    if (challengeService.CancelChallenge(uid, challengeId))
                    {
                        Response.Redirect("user-recruit-list.aspx");
                    }
                    else
                    {
                        Response.Write("取消失败！");
                    }
                }
                else
                {
                    Response.Redirect("signin.aspx");
                }
            }
        }
    }
}