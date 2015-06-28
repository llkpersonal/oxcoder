using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IBLL;
using OXCoder.IDAL;
using OXCoder.DALImpl;
using OXCoder.DBModel;
using System.IO;

namespace OXCoder.BLLImpl
{
    public class StatusService : IStatusService
    {
        public string ReadFile(string filename)
        {
            string res = "";
            StreamReader reader = new StreamReader(filename);
            string sLine = "";
            while (sLine != null)
            {
                sLine = reader.ReadLine();
                if (sLine != null && !sLine.Equals(""))
                    res += sLine + "\n";
            }
            reader.Close();
            return res;
        }

        public bool AddUserStatus(int uid, string challengeId, int language)
        {
            IUserChallengeDao ucDao = new UserChallengeDao();
            IProjectChallengeDao pcDao = new ProjectChallengeDao();
            IStatusDao statusDao = new StatusDao();
            List<ox_project_challenge> pcList = pcDao.GetProjectChallengeByChallengeId(challengeId);
            ox_user_challenge uc = ucDao.GetUserChallenge(uid, challengeId);
            foreach(ox_project_challenge pc in pcList)
            {
                ox_status status = new ox_status();
                status.ucid = uc.ucid;
                status.sourcecode = ReadFile(System.AppDomain.CurrentDomain.BaseDirectory.ToString() + "\\template\\" + pc.projectid + ".template");
                status.statusid = Guid.NewGuid().ToString();
                status.projectid = pc.projectid;
                status.status = "newone";
                status.language = language;
                statusDao.AddStatus(status);
            }
            
            return true;
        }

        public bool DelStatus(string statusId)
        {
            IStatusDao statusDao = new StatusDao();
            return statusDao.DelStatus(statusId);
        }

        public ox_status GetStatus(int ucid, string status)
        {
            IStatusDao statusDao = new StatusDao();
            List<ox_status> list = statusDao.GetStatus(ucid);
            foreach(ox_status s in list)
            {
                if(s.status.Equals(status))
                {
                    return s;
                }
            }
            return null;
        }

        public bool ModifyStatus(ox_status status)
        {
            IStatusDao statusDao = new StatusDao();
            return statusDao.ModifyStatus(status);
        }

        public List<ox_status> GetStatusByUcid(int ucid)
        {
            IStatusDao statusDao = new StatusDao();
            return statusDao.GetStatus(ucid);
        }
    }
}
