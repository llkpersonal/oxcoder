using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.DBModel;

namespace OXCoder.IBLL
{
    public interface IChallengeService
    {
        /*
         * 按照降序的顺序得到挑战的list
         * @param orderByColumn 按照什么字段排序  1：时间  2：热度  3：薪酬
         * @return 
         */
        List<OXChallengeDetail> GetChallengeList(int orderByColumn);

        /*
         * 查询个人挑战
         * @param userId 用户的Id
         * @param status 我的挑战的状态
         *                  0：不限制状态（即不需要状态的查询条件）
         *                  1：未完成的挑战
         *                  2：通过的挑战
         *                  3：未通过的挑战
         * @return 
         */
        List<OXChallengeDetail> GetChallengeListByUser(int userId, int status);


    }
}
