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
    public partial class coding_page_handle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (null != Session && null != Session["uid"])
            {
                string code = Request.Params["code"];
                string statusId = Request.Params["statusId"];
                IStatusService statusService = new StatusService();
                ox_status status = new ox_status();
                status.statusid = statusId;
                status.submittime = DateTime.Now;
                status.sourcecode = code;
                status.status = "queue";
                statusService.ModifyStatus(status);
                Response.Redirect("coding-page.aspx");
            }
        }
    }
}