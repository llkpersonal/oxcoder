using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IDAL;
using OXCoder.DBModel;
using System.Globalization;

namespace OXCoder.DALImpl
{
    public class ChallengeDao : IDAL.IChallengeDao
    {
        public ox_challenge GetChallengeById(string challengeId)
        {
            OXChallengeDataContext context = new OXChallengeDataContext();
            try
            {
                return context.ox_challenge.Single(c => c.challengeid == challengeId);
            }
            catch (InvalidOperationException e)
            {
                return null;
            }
        }

        public List<ox_challenge> GetChallengeList(int orderByColumn)
        {
            OXChallengeDataContext context = new OXChallengeDataContext();
            try
            {
                if (orderByColumn == 1)
                    return context.ox_challenge.OrderByDescending(c => c.begintime).ToList();
                else if (orderByColumn == 2)
                    return context.ox_challenge.OrderByDescending(c => c.codernum).ToList();
                else if (orderByColumn == 3)
                    return context.ox_challenge.OrderByDescending(c => c.salary).ToList();
                else
                    return null;
            }
            catch (InvalidOperationException e)
            {
                return null;
            }
        }

        public List<ox_challenge> GetChallengeListByUser(int userId, int userchallengeStatus, string challengeStatus)
        {
            OXChallengeDataContext challenge_context = new OXChallengeDataContext();
            OXUserChallengeDataContext userChallenge_context = new OXUserChallengeDataContext();
            int cstatus = 1;

            if ("underway".Equals(challengeStatus))
                cstatus = 1;
            else if ("history".Equals(challengeStatus))
                cstatus = 0;

            try
            {
                var query = from c in challenge_context.ox_challenge.ToList() 
                            join uc in userChallenge_context.ox_user_challenge.ToList() 
                            on c.challengeid equals uc.challengeid
                            where c.status == cstatus && uc.userid == userId && (userchallengeStatus == 0 ? true : uc.status == userchallengeStatus) 
                            select c;

                return query.ToList();
            }
            catch (InvalidOperationException e)
            {
                return null;
            }
        }

        public void AddChallengeBasicInfo(string challengeid,int companyid, string challengename, int challenglevel, int photo, int publicorprivate, string salary, string type)
        {
            OXChallengeDataContext challengeDataContext = new OXChallengeDataContext();
            ox_challenge challenge = new ox_challenge();
            challenge.challengeid = challengeid;
            challenge.companyid = companyid;
            challenge.challengename = challengename;
            challenge.begintime = DateTime.Now;
            challenge.endtime = DateTime.Now.AddMonths(1);
            challenge.challengelevel = challenglevel;
            challenge.photo = photo;
            challenge.publicorprivate = publicorprivate;
            challenge.salary = salary;
            challenge.type = type;
            challenge.codernum = 0;
            challenge.status = 1;
            challengeDataContext.ox_challenge.InsertOnSubmit(challenge);
            challengeDataContext.SubmitChanges();
        }


        /**
         * 通过给定的参数 查询challenge的list
         * 参数有可能为空，当参数为空时，该参数不作为查询限制条件
         * 
         */
        public List<ox_challenge> GetChallengeList(string techName, string salary, string city, string key, string orderByColumn)
        {
            OXCompanyDataContext company_context = new OXCompanyDataContext();
            OXChallengeDataContext challenge_context = new OXChallengeDataContext();

            try
            {
                if(orderByColumn == null)
                {
                    var query = from ch in challenge_context.ox_challenge.ToList() join co in company_context.ox_company.ToList() on ch.companyid equals co.userid where (techName == null ? true : ch.type == techName) && (salary == null ? true : ch.salary == salary) && (city == null ? true : co.city == city && ch.challengename.Contains(key)) select ch;
                    return query.ToList();
                }
                else if(orderByColumn.Equals("time"))
                {
                    var query = from ch in challenge_context.ox_challenge.ToList() join co in company_context.ox_company.ToList() on ch.companyid equals co.userid where (techName == null ? true : ch.type == techName) && (salary == null ? true : ch.salary == salary) && (city == null ? true : co.city == city && ch.challengename.Contains(key)) orderby ch.begintime descending select ch;
                    return query.ToList();
                }
                else if(orderByColumn.Equals("hotpoint"))
                {
                    var query = from ch in challenge_context.ox_challenge.ToList() join co in company_context.ox_company.ToList() on ch.companyid equals co.userid where (techName == null ? true : ch.type == techName) && (salary == null ? true : ch.salary == salary) && (city == null ? true : co.city == city && ch.challengename.Contains(key)) orderby ch.codernum descending select ch;
                    return query.ToList();
                }
                else if (orderByColumn.Equals("salary")) 
                {
                    var query = from ch in challenge_context.ox_challenge.ToList() join co in company_context.ox_company.ToList() on ch.companyid equals co.userid where (techName == null ? true : ch.type == techName) && (salary == null ? true : ch.salary == salary) && (city == null ? true : co.city == city && ch.challengename.Contains(key)) orderby ch.salary descending select ch;
                    return query.ToList();
                }
                else
                    return null;
            }
            catch (InvalidOperationException e)
            {
                return null;
            }
        }

        public ox_challenge GetChallengeByChallengeId(string challengeid)
        {
            OXChallengeDataContext challengeDC = new OXChallengeDataContext();
            ox_challenge challenge = challengeDC.ox_challenge.Single(d => d.challengeid == challengeid);
            return challenge;
        }

        public void ChangeStatusByChallengeId(string challengeid)
        {
            OXChallengeDataContext challengeDC = new OXChallengeDataContext();
            ox_challenge challenge = challengeDC.ox_challenge.Single(d => d.challengeid == challengeid);
            if (challenge.status == 0) challenge.status = 1;
            else if (challenge.status == 1) challenge.status = 0;
            challengeDC.SubmitChanges();
        }
    }
}
