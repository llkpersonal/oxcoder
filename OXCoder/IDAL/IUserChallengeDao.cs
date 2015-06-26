using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OXCoder.IDAL
{
    public interface IUserChallengeDao
    {
        bool AddUserChallenge(int userId, string challengeId);

        bool DelUserChallenge(int userId, string challengeId);

        /*
         * 修改状态
         */
        bool UpdateStatus(int userId, int newStatus);

        bool HasUserChallenge(int userId, string challengeId);

    }
}
