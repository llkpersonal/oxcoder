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
    public partial class hr_recruit_switch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string flag = "";
            int status = Convert.ToInt32(Request.Params["status"]);
            string challengeid = Request.Params["challengeid"];
            IChallengeService challengeService = new ChallengeService();
            challengeService.ChangeStatusByChallengeId(challengeid);
            if (status == 0) flag = "history";
            else flag = "underway";
            Response.Redirect("hr-recruit-resume-list.aspx?challengeid="+challengeid+"&flag="+flag);
        }
    }
}