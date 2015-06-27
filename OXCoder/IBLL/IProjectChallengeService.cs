using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.DBModel;
namespace OXCoder.IBLL
{
    public interface IProjectChallengeService
    {
        List<ResultList> GetProjectChallengeByUidAndStatus(int uid, int status);
        ox_project_challenge GetProjectChallengeByChallengeId(string challengeid);
        string GetThreeProjectNameByChallengeId(string challengeid);
    }
}
