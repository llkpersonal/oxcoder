using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IDAL;
using OXCoder.DBModel;

namespace OXCoder.DALImpl
{
    public class UserChallengeDao : IUserChallengeDao
    {
        public bool AddUserChallenge(int userId, string challengeId)
        {
            OXUserChallengeDataContext context = new OXUserChallengeDataContext();
            try
            {
                context.ox_user_challenge.InsertOnSubmit(new ox_user_challenge { userid = userId, challengeid = challengeId, status=1 });
                context.SubmitChanges();
                return true;
            }
            catch (InvalidOperationException e)
            {
                return false;
            }
        }

        public bool DelUserChallenge(int userId, string challengeId)
        {
            OXUserChallengeDataContext context = new OXUserChallengeDataContext();
            try
            {
                context.ox_user_challenge.DeleteOnSubmit(context.ox_user_challenge.Single(c => c.userid == userId && c.challengeid == challengeId));
                context.SubmitChanges();
                return true;
            }
            catch (InvalidOperationException e)
            {
                return false;
            }
        }

        public bool UpdateStatus(int userId, int newStatus)
        {
            try
            {
                OXUserChallengeDataContext context = new OXUserChallengeDataContext();
                ox_user_challenge userChallenge = context.ox_user_challenge.Single(d => d.userid == userId);
                userChallenge.status = newStatus;
                context.SubmitChanges();
                return true;
            }
            catch (InvalidOperationException e)
            {
                return false;
            }      
        }

        public bool HasUserChallenge(int userId, string challengeId)
        {
            try
            {
                OXUserChallengeDataContext context = new OXUserChallengeDataContext();
                var query = from uc in context.ox_user_challenge where uc.userid == userId && uc.challengeid == challengeId select uc;
                return query.ToList().Count > 0;
            }
            catch (InvalidOperationException e)
            {
                return false;
            }    
        }
    }
}
