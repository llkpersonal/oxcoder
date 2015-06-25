using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
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
    }
}
