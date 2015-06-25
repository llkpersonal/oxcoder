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
            ICompanyDao companyDao = new CompanyDao();
            List<ox_challenge> list = challengeDao.GetChallengeList(orderByColumn);
            List<OXChallengeDetail> resList = new List<OXChallengeDetail>();
            foreach(ox_challenge c in list)
            {
                OXChallengeDetail detail = (OXChallengeDetail)c;
                detail.ProjectList = projectDao.GetProjectList(c.challengeid);
                detail.Company = companyDao.FindCompanyByUid(c.companyid);
                resList.Add(detail);
            }

            return resList;
        }

        public List<DBModel.OXChallengeDetail> GetChallengeListByUser(int userId, int userchallengeStatus, string challengeStatus)
        {
            IChallengeDao challengeDao = new ChallengeDao();
            IProjectDao projectDao = new ProjectDao();
            List<ox_challenge> list = challengeDao.GetChallengeListByUser(userId, userchallengeStatus, challengeStatus);
            List<OXChallengeDetail> resList = new List<OXChallengeDetail>();
            foreach (ox_challenge c in list)
            {
                OXChallengeDetail detail = (OXChallengeDetail)c;
                detail.ProjectList = projectDao.GetProjectList(c.challengeid);
                resList.Add(detail);
            }

            return resList;
        }
    }
}
