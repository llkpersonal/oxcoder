using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.DBModel;
using OXCoder.IDAL;

namespace OXCoder.IBLL
{
    public interface IStatusService
    {
        bool AddUserStatus(int uid, string challengeId, int language);

        bool DelStatus(string statusId);

        bool ModifyStatus(ox_status status);

        /*
         * 根据指定的状态得到实体
         * @param stauts：
         *          newone 接受挑战 没有开始答题
         *          queue 已经提交，等待判题
         *          sending 正在判题
         *          finish  完成判题
         */
        ox_status GetStatus(int ucid, string status);

        List<ox_status> GetStatusByUcid(int ucid);
    }
}
