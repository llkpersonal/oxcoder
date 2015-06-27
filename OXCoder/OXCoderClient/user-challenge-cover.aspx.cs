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
            IChallengeService challengeService = new ChallengeService();
            challengeDetail = challengeService.GetChallengeById(Request.Params["reid"]);
        }
    }
}