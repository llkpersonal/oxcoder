using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IDAL;
using OXCoder.DALImpl;
using OXCoder.IBLL;
using OXCoder.DBModel;
namespace OXCoder.BLLImpl
{
    public class ProjectChallengeService : IProjectChallengeService
    {
        public List<ResultList> GetProjectChallengeByUidAndStatus(int uid,int status) 
        {
            IProjectChallengeDao projectChallengeDao = new ProjectChallengeDao();
            List<ResultList> list = projectChallengeDao.GetProjectChallengeByUidAndStatus(uid,status);
            return list;
        }

        public ox_project_challenge GetProjectChallengeByChallengeId(string challengeid)
        {
            IProjectChallengeDao projectChallengeDao = new ProjectChallengeDao();
            return projectChallengeDao.GetProjectChallengeByChallengeId(challengeid);
        }

        public string GetThreeProjectNameByChallengeId(string challengeid)
        {
            IProjectChallengeDao projectChallengeDao = new ProjectChallengeDao();
            return projectChallengeDao.GetProjectNameByChallengeId(challengeid);
        }
    }
}
