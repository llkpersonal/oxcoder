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
    public class UserChallengeService : IUserChallengeService
    {
        public ox_user_challenge GetUserChallenge(int uid, string challengeId)
        {
            IUserChallengeDao ucDao = new UserChallengeDao();
            return ucDao.GetUserChallenge(uid, challengeId);
        }


        public bool UpdateUserChallengeStatus(int ucid, int newStatus)
        {
            IUserChallengeDao ucDao = new UserChallengeDao();
            return ucDao.UpdateStatus(ucid, newStatus);
        }
    }
}
