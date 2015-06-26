using OXCoder.BLLImpl;
using OXCoder.DBModel;
using OXCoder.IBLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OXCoderClient
{
    public partial class user_recruit_list : System.Web.UI.Page
    {
        protected List<OXCoder.DBModel.OXChallengeDetail> challengeList = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (null != Session && null != Session["uid"])
            {
                IChallengeService challengeService = new ChallengeService();
                int uid = Convert.ToInt32(Session["uid"]);
                String flag = Request.Params["flag"];
                if (null == flag)
                {
                    flag = "underway";
                }

                int status = Convert.ToInt32(Request.Params["reustate"]);
                if (status < 0 || status > 3)
                {
                    status = 0;
                }
                challengeList = challengeService.GetChallengeListByUser(uid, status, flag);
                
            }
            else
            {
                Response.Redirect("signin.aspx");
            }
        }
    }
}