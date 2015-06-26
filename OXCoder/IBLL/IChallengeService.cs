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
         * @param userchallengeStatus 我的挑战的状态
         *                  0：不限制状态（即不需要状态的查询条件）
         *                  1：未完成的挑战
         *                  2：通过的挑战
         *                  3：未通过的挑战
         * @param challengeStatus 挑战本身的状态 
         *                  "underway" 正在进行
         *                  "history"  已经结束的
         * @return 
         */
        List<OXChallengeDetail> GetChallengeListByUser(int userId, int userchallengeStatus, string challengeStatus);


        /*
         * 按照降序的顺序得到挑战的list
         * @param companyid 公司Id
         * @param challengename 发布挑战的名称
         * @param challenglevel 挑战等级
         * @param photo 是否打开相机 0 不开 1 开
         * @param publicorprivate 是否公开 0 不公开 1 公开
         * @param salary 提供薪资
         * @param type 挑战类型
         */
        void AddNewChallenge(string challengeid, int companyid, string challengename, int challenglevel, int photo, int publicorprivate, string salary, string type);

        /*
         * 查询挑战列表 当某个字段为null时，表示不筛选该字段
         * @param techName 技术方向 Java，Android，php，C语言，C++等 
         * @param salary 起始薪酬 "2k~5k","5k~8k"等
         * @param city 公司所在城市
         * @param key 关键字，匹配挑战名称
         * @param orderByColumn 排序字段
         * @return 
         */
        List<OXChallengeDetail> GetChallengeList(string techName, string salary, string city, string key, string orderByColumn);


        //List<ox_challenge> GetChallenge(int uid);


        bool AcceptChallenge(int userId, string challengeId);

    }
}
