using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OXCoder.BLLImpl;
using OXCoder.IBLL;
namespace OXCoderClient
{
    public partial class user_index : System.Web.UI.Page
    {
        protected List<OXCoder.DBModel.OXChallengeDetail> challengeList = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                if (null != Session && null != Session["uid"])
                {
                    IChallengeService challengeService = new ChallengeService();
                    
                    string techName = Request.Params["retype"];//salary=0&province=0&retype=0
                    string salary = Request.Params["salary"];
                    string city = Request.Params["province"];
                    string key = Request.Params["key"];
                    string orderByColumn = Request.Params["orderByColumn"];
                    challengeList = challengeService.GetChallengeList(techName, salary, city, key, orderByColumn);
                }
                else
                {
                    Response.Redirect("signin.aspx");
                }
            }
        }

    }
}