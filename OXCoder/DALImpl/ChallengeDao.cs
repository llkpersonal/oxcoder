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
        public List<DBModel.ox_challenge> GetChallengeList(int orderByColumn)
        {
            throw new NotImplementedException();
        }

        public List<DBModel.ox_challenge> GetChallengeListByUser(int userId, int userchallengeStatus, string challengeStatus)
        {
            DBModel.OXChallengeDataContext context = new DBModel.OXChallengeDataContext();
            try
            {
                //ox_user user = context.ox_user.Single(d => d.email == email);
                //return user;
                return null;
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
    
    }
}
