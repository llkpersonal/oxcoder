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
    public partial class coding_page : System.Web.UI.Page
    {
        protected ox_status status = null;
        protected ox_project project = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (null != Session["uid"])
            {
                HttpCookie ucidCookie = Request.Cookies["ucid"];
                if (null != ucidCookie)
                {
                    IStatusService statusService = new StatusService();
                    IUserChallengeService ucService = new UserChallengeService();
                    int ucid = Convert.ToInt32(ucidCookie.Value);
                    status = statusService.GetStatus(ucid, "newone");
                    if (null != status)
                    {
                        IProjectService projectService = new ProjectService();
                        project = projectService.GetProjectDetail(status.projectid);
                    }
                    else //完成所有挑战
                    {
                        ucService.UpdateUserChallengeStatus(ucid, 2);
                        Response.Redirect("user-recruit-result.aspx?uucid=" + ucid);
                    }

                }
                else
                {
                    Response.Write("挑战超时!");
                }
            }
            else
            {
                Response.Redirect("signin.aspx");
            }
        }
    }
}