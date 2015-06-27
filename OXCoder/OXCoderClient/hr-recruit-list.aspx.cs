using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OXCoder.BLLImpl;
using OXCoder.IBLL;
using OXCoder.DBModel;

namespace OXCoderClient
{
    public partial class hr_recruit_list : System.Web.UI.Page
    {
        protected string cname = string.Empty;
        protected string challengeHtml = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetData();
            }
        }

        private void SetData()
        {
            //读取公司名
            int uid = Convert.ToInt32(Session["uid"]);
            ICompanyService companyService = new CompanyService();
            cname = companyService.GetCompanyByUid(uid).companyname;

            IProjectChallengeService projectChallengeService = new ProjectChallengeService();
            List<ResultList> lists = projectChallengeService.GetProjectChallengeByUid(uid);
            //List<ResultList> list = query.Cast<ResultList>().ToList();
            string start = "";
            string projectname = "";
            string challengename = "";
            string challengeid = "";
            int newaccept;
            int newfinish;
            foreach (ResultList list in lists)
            {
                start = list.start;
                projectname = list.projectname;
                challengename = list.challengename;
                challengeid = list.challengeid;
            }

        }
    }
}