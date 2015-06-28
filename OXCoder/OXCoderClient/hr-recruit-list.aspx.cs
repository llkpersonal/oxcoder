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
        protected string title = string.Empty;
        protected string cname = string.Empty;
        protected string challengeHtml = string.Empty;
        protected string flag = string.Empty;
        protected string clogo = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetData();
            }
        }

        private void SetData()
        {
            flag = Request.Params["flag"];
            int status;
            if (flag == null || flag == "underway")
            {
                flag = "underway";
                status = 1;
            }
            else
                status = 0;
            
            //读取公司名
            int uid = Convert.ToInt32(Session["uid"]);
            ICompanyService companyService = new CompanyService();
            ox_company company = companyService.GetCompanyByUid(uid);
            cname = company.companyname;
            clogo = "logo/"+company.logo;
            title = "猿圈 挑战管理";

            IProjectChallengeService projectChallengeService = new ProjectChallengeService();
            List<ResultList> lists = projectChallengeService.GetProjectChallengeByUidAndStatus(uid,status);
            //List<ResultList> list = query.Cast<ResultList>().ToList();
            string start = "";
            string projectname = "";
            string challengename = "";
            string challengeid = "";
            int newaccept=0;
            int newfinish=0;
            float percent = 0;

            
            foreach (ResultList list in lists)
            {
                start = list.start.ToShortDateString();
                projectname = list.projectname;
                challengename = list.challengename;
                challengeid = list.challengeid;
                challengeHtml = challengeHtml+"<div class=\"col-md-12\"><div class=\"panel panel-default project \"><div class=\"panel-body\"><div class=\"row\"><div class=\"col-md-5\"><h2 style=\"margin: 12px 0 2px 0;\"><a href=\"./hr-recruit-resume-list.aspx?challengeid="+challengeid+"&flag="+flag+"\">"+challengename+"</a></h2><div style=\"width: 280px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;\"><small>["+start+"]"+projectname+"</small></div></div><div class=\"col-md-2\"><ul class=\"list-unstyled\" style=\"margin: 7px 0;\"><li><span class=\"badge badge-info\">"+newaccept+"</span>个新接受</li><li><span class=\"badge badge-danger\">"+newfinish+"</span>个新完成</li></ul></div><div class=\"col-md-2\"><ul class=\"list-unstyled\" style=\"margin: 20px 0;\"><li><span class=\"red\">"+percent.ToString("0.0")+"</span>%已合格</li></ul></div><div class=\"col-md-3\"><a href=\"./hr-recruit-resume-list.aspx?challengeid="+challengeid+"&flag="+flag+"\"><button type=\"button\" class=\"btn btn-new1\">去筛选</button></a> <a href=\"./hr-recruit-go-invite.action?reid=1021\"><button type=\"button\" class=\"btn btn-new1\" style=\"margin: 16px 5px;\">邀请</button></a></div><!-- new end--></div><!-- /.row --></div><!-- /.panel-footer --></div><!-- /.panel --></div>";
            }

        }
    }
}