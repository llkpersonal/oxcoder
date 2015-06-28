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
    public partial class enterprise_info : System.Web.UI.Page
    {
        protected string cname = string.Empty;
        protected string challengeHtml = string.Empty;
        protected string website = string.Empty;
        protected string size = string.Empty;
        protected string desc = string.Empty;
        protected string position = string.Empty;
        protected string[] tags;
        protected void Page_Load(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["uid"]);
            ICompanyService companyService = new CompanyService();
            cname = companyService.GetCompanyByUid(uid).companyname;

            IProjectChallengeService projectChallengeService = new ProjectChallengeService();
            List<ResultList> list = projectChallengeService.GetProjectChallengeByUidAndStatus(uid, 1);

            //string challengename = "";
            //string salary = "";
            ox_company company = companyService.GetCompanyByUid(uid);
            string[] project;
            //int challengelevel = 0;
            IChallengeService challengeService = new ChallengeService();
            int acceptnum = 0;
            string starHtml = "";
            tags = company.tag.Split(';');
            website = company.website;
            size = company.size;
            desc = company.description;
            position = company.province + "-" + company.city;
            
            foreach (ResultList result in list)
            {
                acceptnum = result.codernum;
                for (int i = 0; i < result.challengelevel; i++)
                {
                    starHtml += "<i class=\"icon-star\"></i>";
                }
                project = result.projectname.Split(' ');
                challengeHtml = challengeHtml + "<div class=\"col-md-4\"><section id=\"middle\"><div class=\"panel panel-default shadow-effect\"><div class=\"col-xs-12 panel-header\"><div class=\"pull-left\"><h4 class=\"line-control\"><a href=\"javascript:;\">" + result.challengename + "</a></h4><h4 class=\"line-control\"><a href=\"javascript:;\">" + cname + "</a></h4></div><div class=\"pull-right client-info\"><span class=\"percent text-danger\"><img class=\"img-circle\" style=\"width: 60px; height: 60px\" src=\"./enterprise-info_files/998.jpeg\"></span></div></div><div class=\"panel-body \"><ul class=\"list-unstyled\"><li>月薪： " + result.salary + "     </li><li>职位诱惑：</li><li><ul class=\"companyTags\"><li>" + tags[0] + "</li><li>" + tags[1] + "</li><li>" + tags[2] + "</li></ul></li><li>挑战项目：</li><li><ul><li><a href=\"#\">" + project[1] + "</a></li><li><a href=\"#\">" + project[2] + "</a></li><li><a href=\"#\">" + project[3] + "</a></li></ul></li><li>难度： "+starHtml+"</li><li><i class=\"icon-calendar\"></i>"+result.start.ToShortDateString()+"~"+result.end.ToShortDateString()+"</li><li><i class=\"icon-user\"></i>"+acceptnum+"人已接受挑战</li></ul></div><!-- /.panel-body --><!-- /.panel-footer --></div></section></div>";
                starHtml = "";
            }
        }
    }
}