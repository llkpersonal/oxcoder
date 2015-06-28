using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.DBModel;

namespace OXCoder.IBLL
{
    public interface IUserChallengeService
    {
        ox_user_challenge GetUserChallenge(int uid, string challengeId);
        bool UpdateUserChallengeStatus(int ucid, int newStatus);
    }
}
