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
    public partial class newproject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IProjectService ps = new ProjectService();
            ps.AddProject(Request.Params["projectname"], Request.Params["template"], Request.Params["description"], Convert.ToInt32(Request.Params["difficulty"]), Request.Params["tags"], Request.Params["type"]);
            Response.Write("添加成功！");
        }
    }
}