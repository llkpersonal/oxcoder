﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.DBModel;
using OXCoder.IDAL;
namespace OXCoder.IDAL
{
    public interface IProjectChallengeDao
    {
        string GetProjectNameByChallengeId(string challengeid);
        List<ResultList> GetProjectChallengeByUidAndStatus(int uid, int status);
        List<ox_project_challenge> GetProjectChallengeByChallengeId(string challengeid);
        //List<ResultList> GetProjectChallengeByUid(int uid);
        void AddProjectChallenge(string projectid, string challengeid);
    }
}
