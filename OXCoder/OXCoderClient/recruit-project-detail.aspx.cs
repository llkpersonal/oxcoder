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
    public partial class rescruit_project_detail : System.Web.UI.Page
    {
        protected ox_project projectDetail = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (null != Session && null != Session["uid"])
                {
                    string projectId = Request.Params["pid"];
                    if (null != projectId)
                    {
                        IProjectService projectService = new ProjectService();
                        projectDetail = projectService.GetProjectDetail(projectId);
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