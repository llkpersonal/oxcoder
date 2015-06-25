using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IDAL;
using OXCoder.DBModel;
namespace OXCoder.DALImpl
{
    public class ChallengeDao : IDAL.IChallengeDao
    {
        public List<ox_challenge> GetChallengeList(int orderByColumn)
        {
            OXChallengeDataContext context = new OXChallengeDataContext();
            try
            {
                IEnumerable<ox_challenge> challenges = null ;
                if(orderByColumn == 1)
                    challenges = context.ox_challenge.OrderByDescending(c => c.begintime);
                else if(orderByColumn == 2)
                    challenges = context.ox_challenge.OrderByDescending(c => c.codernum);
                else if(orderByColumn == 3)
                    challenges = context.ox_challenge.OrderByDescending(c => c.salary);

                List<ox_challenge> challengesList = new List<ox_challenge>();
                foreach (ox_challenge c in challenges)
                {
                    challengesList.Add(c);
                }
                return challengesList;
            }
            catch (InvalidOperationException e)
            {
                return null;
            }
        }

        public List<ox_challenge> GetChallengeListByUser(int userId, int userchallengeStatus, string challengeStatus)
        {
            OXChallengeDataContext challenge_context = new OXChallengeDataContext();
            OXUserChallengeDataContext userchallenge_context = new OXUserChallengeDataContext();
            List<ox_challenge> challengeList = new List<ox_challenge>();
            int cstatus = 0;

            if (challengeStatus.Equals("underway"))
                cstatus = 1;
            else if (challengeStatus.Equals("history"))
                cstatus = 2;

            try
            {
                var query = from c in challenge_context.ox_challenge join uc in userchallenge_context.ox_user_challenge on c.challengeid equals uc.challengeid where c.status == cstatus && uc.userid == userId && uc.status == userchallengeStatus select c;

                foreach (var q in query)
                {
                    challengeList.Add(q);
                }
                return challengeList;
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
            challengeDataContext.ox_challenge.InsertOnSubmit(challenge);
            challengeDataContext.SubmitChanges();
        }



        public List<ox_challenge> GetChallengeList(string techName, string salary, string city, string key, string orderByColumn)
        {
            OXCompanyDataContext company_context = new OXCompanyDataContext();
            OXChallengeDataContext challenge_context = new OXChallengeDataContext();

            List<ox_challenge> challengeList = new List<ox_challenge>();

            try
            {
                if (orderByColumn.Equals("time"))
                {
                    var query = from ch in challenge_context.ox_challenge join co in company_context.ox_company on ch.companyid equals co.userid where ch.type == techName && ch.salary == salary && co.city == city && ch.challengename.Contains(key) orderby ch.begintime descending select ch;
                    foreach (var q in query)
                    {
                        challengeList.Add(q);
                    }
                }
                else if (orderByColumn.Equals("hotpoint"))
                {
                    var query = from ch in challenge_context.ox_challenge join co in company_context.ox_company on ch.companyid equals co.userid where ch.type == techName && ch.salary == salary && co.city == city && ch.challengename.Contains(key) orderby ch.codernum descending select ch;
                    foreach (var q in query)
                    {
                        challengeList.Add(q);
                    }
                }
                else if (orderByColumn.Equals("salary"))
                {
                    var query = from ch in challenge_context.ox_challenge join co in company_context.ox_company on ch.companyid equals co.userid where ch.type == techName && ch.salary == salary && co.city == city && ch.challengename.Contains(key) orderby ch.salary descending select ch;
                    foreach (var q in query)
                    {
                        challengeList.Add(q);
                    }
                }

                return challengeList;
            }
            catch (InvalidOperationException e)
            {
                return null;
            }
        }
    }
}
