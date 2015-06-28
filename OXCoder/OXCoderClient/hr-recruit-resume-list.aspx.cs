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
    public partial class hr_recruit_resume_list : System.Web.UI.Page
    {
        protected string cname = "";
        protected string challengeid = "";
        protected string starttime = "";
        protected string projectname = "";
        protected int status = 0;
        protected string flag = "";
        protected string challengename = "";
        //未写查询语句
        protected int acceptnum = 0;
        protected int finishnum = 0;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //读取公司名
            int uid = Convert.ToInt32(Session["uid"]);
            ICompanyService companyService = new CompanyService();
            cname = companyService.GetCompanyByUid(uid).companyname;
            challengeid = Request.Params["challengeid"];

            IProjectChallengeService projectChallengeService = new ProjectChallengeService();
            IChallengeService challengeService = new ChallengeService();
            
            ox_challenge challenge =  challengeService.GetChallengeByChallengeId(challengeid);
            DateTime dt = (DateTime)challenge.begintime;
            starttime = dt.ToShortDateString();
            status = Convert.ToInt32(challenge.status);
            challengename = challenge.challengename;

            projectname = projectChallengeService.GetThreeProjectNameByChallengeId(challengeid);
            acceptnum = Convert.ToInt32(challenge.codernum);
            flag = Request.Params["flag"];

        }
    }
}