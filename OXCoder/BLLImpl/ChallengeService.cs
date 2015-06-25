using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IBLL;
using OXCoder.IDAL;
using OXCoder.DALImpl;
using OXCoder.DBModel;

namespace OXCoder.BLLImpl
{
    public class ChallengeService : IBLL.IChallengeService
    {

        public List<DBModel.OXChallengeDetail> GetChallengeList(int orderByColumn)
        {
            IChallengeDao challengeDao = new ChallengeDao();
            IProjectDao projectDao = new ProjectDao();
            List<ox_challenge> list = challengeDao.GetChallengeList(orderByColumn);
            List<OXChallengeDetail> resList = new List<OXChallengeDetail>();
            foreach(ox_challenge c in list)
            {
                OXChallengeDetail detail = (OXChallengeDetail)c;
                detail.ProjectList = projectDao.GetProjectList(c.challengeid);
                resList.Add(detail);
            }

            return resList;
        }

        public List<DBModel.OXChallengeDetail> GetChallengeListByUser(int userId, int status)
        {
            IChallengeDao challengeDao = new ChallengeDao();
            IProjectDao projectDao = new ProjectDao();
            List<ox_challenge> list = challengeDao.GetChallengeListByUser(userId,status);
            List<OXChallengeDetail> resList = new List<OXChallengeDetail>();
            foreach (ox_challenge c in list)
            {
                OXChallengeDetail detail = (OXChallengeDetail)c;
                detail.ProjectList = projectDao.GetProjectList(c.challengeid);
                resList.Add(detail);
            }

            return resList;
        }

        public void AddNewChallenge(string challengeid, int companyid, string challengename, int challenglevel, int photo, int publicorprivate, string salary, string type) 
        {
            IChallengeDao challengeDao = new ChallengeDao();
            challengeDao.AddChallengeBasicInfo(challengeid,companyid, challengename, challenglevel, photo, publicorprivate, salary, type);
        }
    }
}
