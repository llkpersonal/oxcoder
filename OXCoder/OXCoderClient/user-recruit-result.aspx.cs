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
    public partial class user_recruit_result : System.Web.UI.Page
    {
        protected string[] projectNames = null;
        protected string[] scores = null;
        protected int avg = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            projectNames = new string[3];
            scores = new string[3];
            if (!IsPostBack)
            {
                if (null != Session && null != Session["uid"])
                {
                    IStatusService statusService = new StatusService();
                    String ucidStr = Request.Params["uucid"];

                    List<ox_status> list = statusService.GetStatusByUcid(Convert.ToInt32(ucidStr));
                    IProjectService projectService = new ProjectService();
                    int n = 0;
                    
                    foreach(ox_status s in list)
                    {

                        if (s.status == "finish")
                        {
                            scores[n] = s.score.ToString();
                            avg += Convert.ToInt32(s.score);
                        }
                        else
                            scores[n] = "判题中...";
                        projectNames[n++] = projectService.GetProjectDetail(s.projectid).projectname;
                    }
                    avg /= 3;

                }
                else
                {
                    Response.Redirect("signin.aspx");
                }
            }
        }
    }
}