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
        public List<ResultList> GetProjectChallengeByUid(int uid) 
        {
            IProjectChallengeDao projectChallengeDao = new ProjectChallengeDao();
            List<ResultList> list = projectChallengeDao.GetProjectChallengeByUid(uid);
            return list;
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
