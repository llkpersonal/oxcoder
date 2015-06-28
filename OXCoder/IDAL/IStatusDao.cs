using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.DBModel;

namespace OXCoder.IDAL
{
    public interface IStatusDao
    {
        bool AddStatus(ox_status status);

        bool ModifyStatus(ox_status status);

        /**
         * 通过userchallengeid得到statusList
         * @param ucid UserChallengeID
         */
        List<ox_status> GetStatus(int ucid);

        bool DelStatus(string statusId);

        List<ox_status> GetStatusByUcid(int ucid);
    }
}
