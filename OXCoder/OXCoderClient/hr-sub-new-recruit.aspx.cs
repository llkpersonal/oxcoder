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
    public partial class hr_sub_new_recruit : System.Web.UI.Page
    {
        protected string projectHtml = string.Empty;
        protected string cname = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            //读取公司名
            int uid = Convert.ToInt32(Session["uid"]);
            ICompanyService companyService = new CompanyService();
            cname = companyService.GetCompanyByUid(uid).companyname;

            //获取基本信息存入数据库
            string challengeid = Guid.NewGuid().ToString();
            string type = Request.Params["retype"];
            string salary = Request.Params["relevel"]; 
            string checkpublic = Request.Params["republic"];
            string camera = Request.Params["recamera"];
            int publicorprivate = 0;
            int photo = 0;
            if (checkpublic == "1,1") publicorprivate = 1;
            if (camera == "1,1") photo = 1;
            int challengelevel = Convert.ToInt32(salary);
            //查询（所在位置，截取掉
            int flag = type.IndexOf("(");
            string shorttype = type;
            if(flag > 0)
                shorttype = type.Substring(0,flag);
            string challengename = shorttype + "工程师";
            if (salary == "1") salary = "2k~5k";
            else if (salary == "2") salary = "5k~8k";
            else if (salary == "3") salary = "8k~10k";
            else if (salary == "4") salary = "10k~12k";
            else if (salary == "5") salary = "12k~15k";
            else if (salary == "6") salary = "15k以上";

            IChallengeService challengeService = new ChallengeService();
            challengeService.AddNewChallenge(challengeid,uid, challengename, challengelevel, photo, publicorprivate, salary, type);
            
            //显示project
            IProjectService projectService = new ProjectService();
            List<ox_project> list = projectService.GetProject(shorttype);

            foreach(ox_project project in list)
            {
                string[] lsTags = project.tags.Split(';');
                string htmlTags = "";
                foreach (string tag in lsTags)
                {
                    htmlTags += "<li>" + tag + "</li>";
                }
                string htmlDifficulty = "";
                for (int i = 0; i < project.difficulty; i++)
                {
                    htmlDifficulty += "<i class=\"icon-star\"></i>";
                }
                projectHtml = projectHtml + "<div class=\"col-md-4\"><div class=\"panel panel-default project\"><div class=\"panel-body\" style=\"padding-bottom: 0;\"><div class=\"row\"><div class=\"col-xs-12\"><div class=\"pull-left\"><h4>" + project.projectname + "</h4><h5 class=\"text-muted\">" + shorttype + "项目 </h5></div><div class=\"pull-right client-info\"><a style=\"color: white\" href=\"http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=1&exercise=&difficulty=\" class=\"btn btn-primary btn-sm\">添加</a></div></div><!-- /.col-xs-12 --><div class=\"col-md-12\" style=\"min-height: 68px;\"><ul class=\"companyTags\">" + htmlTags + "</ul></div></div><!-- /.row --></div><!-- /.panel-body --><div class=\"panel-footer\"><div class=\"row\"><div class=\"col-sm-4\"><span class=\"small muted\">项目难度</span></div><!-- /.col-sm-4 --><div class=\"col-sm-8\"><p>" + htmlDifficulty + "</p></div><!-- /.col-sm-8 --></div><!-- /.row --></div><!-- /.panel-footer --></div><!-- /.panel --></div>";
            }

            //把challengeid加入cookie
            HttpCookie challengeCookie = new HttpCookie("challengeid");
            challengeCookie.Name = "challengeid";
            challengeCookie.Value = challengeid;
            Response.Cookies.Add(challengeCookie);
        }
    }
}