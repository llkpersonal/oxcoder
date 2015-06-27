using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OXCoder.IBLL;
using OXCoder.BLLImpl;

namespace OXCoderClient
{
    public partial class hr_submit_new_recruit : System.Web.UI.Page
    {

        private void ClearCookies(string name)
        {
            HttpCookie cookie = Request.Cookies[name];
            TimeSpan time = new TimeSpan(-1, 0, 0);
            cookie.Expires = DateTime.Now.Add(time);
            Response.AppendCookie(cookie);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            IChallengeService challengeService = new ChallengeService();
            string challengeid = Guid.NewGuid().ToString();
            int companyId = Convert.ToInt32(Session["uid"]);
            string challengename = HttpUtility.UrlDecode(Request.Cookies["challengename"].Value);
            ClearCookies("challengename");
            int photo = Convert.ToInt32(HttpUtility.UrlDecode(Request.Cookies["photo"].Value));
            ClearCookies("photo");
            int publicorprivate = Convert.ToInt32(HttpUtility.UrlDecode(Request.Cookies["publicorprivate"].Value));
            ClearCookies("publicorprivate");
            string salary = HttpUtility.UrlDecode(Request.Cookies["salary"].Value);
            ClearCookies("salary");
            string type = HttpUtility.UrlDecode(Request.Cookies["type"].Value);
            ClearCookies("type");
            int challenglevel = Convert.ToInt32(HttpUtility.UrlDecode(Request.Cookies["challengelevel"].Value));
            ClearCookies("challengelevel");
            challengeService.AddNewChallenge(challengeid, companyId, challengename, challenglevel, photo, publicorprivate, salary, type);
            IProjectChallengeService pcs = new ProjectChallengeService();
            pcs.AddProjectChallenges(HttpUtility.UrlDecode(Request.Cookies["project"].Value), challengeid);
            ClearCookies("project");
            Response.Redirect("hr-recruit-list.aspx");
        }
    }
}