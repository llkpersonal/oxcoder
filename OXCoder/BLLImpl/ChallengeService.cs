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

        public void AddNewChallenge(string challengeid, int companyid, string challengename, int challenglevel, int photo, int publicorprivate, string salary, string type) 
        {
            IChallengeDao challengeDao = new ChallengeDao();
            challengeDao.AddChallengeBasicInfo(challengeid,companyid, challengename, challenglevel, photo, publicorprivate, salary, type);
        }

        public List<OXChallengeDetail> GetChallengeList(string techName, string salary, string city, string key, string orderByColumn)
        {
            return null;
        }

        void IChallengeService.AddNewChallenge(string challengeid, int companyid, string challengename, int challenglevel, int photo, int publicorprivate, string salary, string type)
        {
            throw new NotImplementedException();
        }

        List<OXChallengeDetail> IChallengeService.GetChallengeList(string techName, string salary, string city, string key, string orderByColumn)
        {
            IChallengeDao challengeDao = new ChallengeDao();
            IProjectDao projectDao = new ProjectDao();
            List<ox_challenge> list = challengeDao.GetChallengeList(techName,salary,city,key,orderByColumn);
            List<OXChallengeDetail> resList = new List<OXChallengeDetail>();
            foreach (ox_challenge c in list)
            {
                OXChallengeDetail detail = (OXChallengeDetail)c;
                detail.ProjectList = projectDao.GetProjectList(c.challengeid);
                resList.Add(detail);
            }

            return resList;
        }

        List<OXChallengeDetail> IChallengeService.GetChallengeList(int orderByColumn)
        {
            throw new NotImplementedException();
        }

        List<OXChallengeDetail> IChallengeService.GetChallengeListByUser(int userId, int userchallengeStatus, string challengeStatus)
        {
            throw new NotImplementedException();
        }

        public bool AcceptChallenge(string challengeId)
        {
            throw new NotImplementedException();
        }
    }
}
