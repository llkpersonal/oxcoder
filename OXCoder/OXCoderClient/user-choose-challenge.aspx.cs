﻿using System;
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
    public partial class user_choose_challenge : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (null != Session && null != Session["uid"])
            {
                Int32 uid = Convert.ToInt32(Session["uid"]);
                String challengeId = Request.Params["reid"];
                if (challengeId != null)
                {
                    IChallengeService challengeService = new ChallengeService();
                    if (!challengeService.HasAcceptUserChallenge(uid, challengeId))
                    {
                        if (challengeService.AcceptChallenge(uid, challengeId))
                        {
                            Response.Redirect("user-recruit-list.aspx");
                        }
                        else
                        {
                            Response.Write("错误！");
                        }
                    }
                    else
                    {
                        Response.Redirect("user-recruit-list.aspx");
                    }
                    
                    
                }
            }
            else
            {
                Response.Redirect("signin.aspx");
            }
        }
    }
}