using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IBLL;
using OXCoder.IDAL;
using OXCoder.DALImpl;
using OXCoder.DBModel;

namespace OXCoder.BLLImpl
{
    public class StatusService : IStatusService
    {
        public bool AddUserStatus(int uid, string challengeId)
        {
            IUserChallengeDao ucDao = new UserChallengeDao();
            
            IStatusDao statusDao = new StatusDao();

            //statusDao.AddStatus();

            return false;
        }

        public bool DelStatus(string statusId)
        {
            throw new NotImplementedException();
        }

        public ox_status GetStatus(string status)
        {
            throw new NotImplementedException();
        }

        public bool ModifyStatus(ox_status status)
        {
            throw new NotImplementedException();
        }
    }
}
