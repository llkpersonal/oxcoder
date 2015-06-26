﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OXCoder.BLLImpl;
using OXCoder.IBLL;
namespace OXCoderClient
{
    public partial class user_index : System.Web.UI.Page
    {
        protected List<OXCoder.DBModel.OXChallengeDetail> challengeList = null;
        protected string techName = null;
        protected string salary = null;
        protected string province = null;
        protected string key = null;
        protected string orderByColumn = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                if (null != Session && null != Session["uid"])
                {
                    IChallengeService challengeService = new ChallengeService();
                    
                    techName = Request.Params["retype"];//salary=0&province=0&retype=0
                    salary = Request.Params["salary"];
                    province = Request.Params["province"];
                    key = Request.Params["key"];
                    orderByColumn = Request.Params["orderByColumn"];
                    challengeList = challengeService.GetChallengeList(techName, salary, province, key, orderByColumn);
                }
                else
                {
                    Response.Redirect("signin.aspx");
                }
            }
        }

    }
}