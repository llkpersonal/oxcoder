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

        public List<ox_project_challenge> GetProjectChallengeByChallengeId(string challengeid)
        {
            IProjectChallengeDao projectChallengeDao = new ProjectChallengeDao();
            return projectChallengeDao.GetProjectChallengeByChallengeId(challengeid);
        }

        public string GetThreeProjectNameByChallengeId(string challengeid)
        {
            IProjectChallengeDao projectChallengeDao = new ProjectChallengeDao();
            return projectChallengeDao.GetProjectNameByChallengeId(challengeid);
        }
        
        public void AddProjectChallenges(string projectid,string challengeid)
        {
            IDAL.IProjectChallengeDao pcd = new DALImpl.ProjectChallengeDao();
            string[] projects = projectid.Split(';');
            foreach (string pid in projects)
            {
                pcd.AddProjectChallenge(pid, challengeid);
            }
        }


    }
}
