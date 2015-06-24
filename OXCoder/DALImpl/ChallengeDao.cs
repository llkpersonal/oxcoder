using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OXCoder.DALImpl
{
    public class ChallengeDao : IDAL.IChallengeDao
    {
        public List<DBModel.ox_challenge> GetChallengeList(int orderByColumn)
        {
            throw new NotImplementedException();
        }

        public List<DBModel.ox_challenge> GetChallengeListByUser(int userId, int status)
        {
            throw new NotImplementedException();
        }
    }
}
