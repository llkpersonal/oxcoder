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
    public partial class hr_to_new_info : System.Web.UI.Page
    {
        protected string name = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                SetData();
            }
        }

        private void SetData()
        {
            IUserService userService = new UserService();
            string email = Session["user"].ToString();
            name = userService.GetUser(email).name;

        }
    }
}