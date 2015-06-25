using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.DBModel;

namespace OXCoder.IDAL
{
    public interface IChallengeDao
    {
        /*
         * @param orderByColumn 按照什么字段排序  1：时间  2：热度  3：薪酬
         */
        List<DBModel.ox_challenge> GetChallengeList(int orderByColumn);

        List<DBModel.ox_challenge> GetChallengeListByUser(int userId, int userchallengeStatus, string challengeStatus);

    }
}
