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
        List<ox_challenge> GetChallengeList(int orderByColumn);

        List<ox_challenge> GetChallengeListByUser(int userId, int userchallengeStatus, string challengeStatus);

        void AddChallengeBasicInfo(string challengeid, int companyid, string challengename, int challenglevel, int photo, int publicorprivate, string salary, string type);
        
        /*
         * 查询挑战列表 当某个字段为null时，表示不筛选该字段
         * @param techName 技术方向 Java，Android，php，C语言，C++等 
         * @param salary 起始薪酬 "2k~5k","5k~8k"等
         * @param city 公司所在城市
         * @param key 关键字，匹配挑战名称
         * @param orderByColumn 排序字段 time,hotpoint,salary
         * @return 
         */
        List<ox_challenge> GetChallengeList(string techName, string salary, string city, string key, string orderByColumn);
    }
}
