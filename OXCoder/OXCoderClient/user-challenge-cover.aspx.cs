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
        private Dictionary<String, int> languageMap = new Dictionary<string, int>();

        protected void Page_Load(object sender, EventArgs e)
        {
            languageMap.Add("Java",10);
            languageMap.Add("C++",1);

            if (!IsPostBack)
            {
                if (null != Session && null != Session["uid"])
                {
                    string reid = Request.Params["reid"];
                    if (null != reid)
                    {
                        IStatusService statusService = new StatusService();
                        IChallengeService challengeService = new ChallengeService();
                        IUserChallengeService ucService = new UserChallengeService();
                        HttpCookie ucidCookie = new HttpCookie("ucid");
                        int ucid = ucService.GetUserChallenge(Convert.ToInt32(Session["uid"]), reid).ucid;
                        ucidCookie.Value = ucid.ToString();
                        Response.Cookies.Add(ucidCookie);
                        challengeDetail = challengeService.GetChallengeById(reid);
                        if (null == statusService.GetStatus(ucid,"newone"))
                        {
                            bool addRes = statusService.AddUserStatus(Convert.ToInt32(Session["uid"]), reid, languageMap[challengeDetail.type]);
                            if (!addRes)
                            {
                                Response.Write("增加Status失败！");
                            }
                        }
                        
                    }
                    else
                    {
                        Response.Write("参数错误！");
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