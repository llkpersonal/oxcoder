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
    public partial class user_challenge_cover : System.Web.UI.Page
    {
        protected OXChallengeDetail challengeDetail = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (null != Session && null != Session["uid"])
                {
                    string reid = Request.Params["reid"];
                    if (null == reid)
                    {
                        IChallengeService challengeService = new ChallengeService();
                        challengeDetail = challengeService.GetChallengeById(reid);
                    }
                    else
                    {
                        Response.Write("参数错误！");
                    }
                    
                }
            }
            
        }
    }
}