using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.DBModel;
namespace OXCoder.IBLL
{
    public interface IProjectChallengeService
    {
        List<ResultList> GetProjectChallengeByUid(int uid);
        void AddProjectChallenges(string projectid, string challengeid);
    }
}
