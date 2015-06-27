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

        public OXChallengeDetail GetChallengeById(string challengeId)
        {
            IChallengeDao challengeDao = new ChallengeDao();
            IProjectDao projectDao = new ProjectDao();
            ICompanyDao companyDao = new CompanyDao();

            ox_challenge challenge =  challengeDao.GetChallengeById(challengeId);
            ox_company company = companyDao.FindCompanyByUid(challenge.companyid);
            List<ox_project> projectList = projectDao.GetProjectList(challengeId);

            OXChallengeDetail challengeDetail = new OXChallengeDetail(challenge);
            challengeDetail.Company = company;
            challengeDetail.ProjectList = projectList;

            return challengeDetail;
        }

        public List<DBModel.OXChallengeDetail> GetChallengeList(int orderByColumn)
        {
            IChallengeDao challengeDao = new ChallengeDao();
            IProjectDao projectDao = new ProjectDao();
            ICompanyDao companyDao = new CompanyDao();
            List<ox_challenge> list = challengeDao.GetChallengeList(orderByColumn);
            List<OXChallengeDetail> resList = new List<OXChallengeDetail>();
            foreach(ox_challenge c in list)
            {
                OXChallengeDetail detail = new OXChallengeDetail(c);
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
            ICompanyDao companyDao = new CompanyDao();
            List<ox_challenge> list = challengeDao.GetChallengeListByUser(userId, userchallengeStatus, challengeStatus);
            List<OXChallengeDetail> resList = new List<OXChallengeDetail>();
            foreach (ox_challenge c in list)
            {
                OXChallengeDetail detail = new OXChallengeDetail(c);
                detail.ProjectList = projectDao.GetProjectList(c.challengeid);
                detail.Company = companyDao.FindCompanyByUid(c.companyid);
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
            IChallengeDao challengeDao = new ChallengeDao();
            IProjectDao projectDao = new ProjectDao();
            ICompanyDao companyDao = new CompanyDao();
            List<ox_challenge> list = challengeDao.GetChallengeList(techName,salary,city,key,orderByColumn);
            List<OXChallengeDetail> resList = new List<OXChallengeDetail>();
            foreach (ox_challenge c in list)
            {
                OXChallengeDetail detail = new OXChallengeDetail(c);
                detail.ProjectList = projectDao.GetProjectList(c.challengeid);
                detail.Company = companyDao.FindCompanyByUid(c.companyid);
                resList.Add(detail);
            }

            return resList;
        }

        public bool AcceptChallenge(int userId, string challengeId)
        {
            IUserChallengeDao ucDao = new UserChallengeDao();
            return ucDao.AddUserChallenge(userId, challengeId);
        }

        public bool HasAcceptUserChallenge(int userId, string challengeId)
        {
            IUserChallengeDao ucDao = new UserChallengeDao();
            return ucDao.HasUserChallenge(userId,challengeId);
        }

        //public List<ox_challenge> GetChallenge(int uid)
        //{
        //    IChallengeDao challengeDao = new ChallengeDao();
        //    List<ox_challenge> list = challengeDao.GetChallengeByUid(uid);
        //    return list;
        //}


        public bool CancelChallenge(int userId, string challengeId)
        {
            IUserChallengeDao ucDao = new UserChallengeDao();
            return ucDao.DelUserChallenge(userId, challengeId);
        }

        public ox_challenge GetChallengeByChallengeId(string challengeid)
        {
            IChallengeDao challengeDao = new ChallengeDao();
            return challengeDao.GetChallengeByChallengeId(challengeid);
        }

        public void ChangeStatusByChallengeId(string challengeid)
        {
            IChallengeDao challengeDao = new ChallengeDao();
            challengeDao.ChangeStatusByChallengeId(challengeid);
        }
    }
}
