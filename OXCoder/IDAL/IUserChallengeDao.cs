using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.DBModel;


namespace OXCoder.IDAL
{
    public interface IUserChallengeDao
    {
        bool AddUserChallenge(int userId, string challengeId);

        bool DelUserChallenge(int userId, string challengeId);

        /*
         * 修改状态
         */
        bool UpdateStatus(int ucId, int newStatus);

        bool HasUserChallenge(int ucId, string challengeId);

        ox_user_challenge GetUserChallenge(int userId, string challengeId);

    }
}
