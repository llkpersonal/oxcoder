using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OXCoder.DBModel
{
    public class OXChallengeDetail : ox_challenge
    {
        private List<ox_project> projectList;
        public List<ox_project> ProjectList
        {
            get { return projectList; }
            set { projectList = value; }
        }

        private ox_company company;
        public ox_company Company
        {
            get { return company; }
            set { company = value; }
        }

        private int userStatus;
        public int UserStatus
        {
            get { return userStatus; }
            set { userStatus = value; }
        }

        public OXChallengeDetail(ox_challenge o)
        {
            this.begintime = o.begintime;
            this.challengeid = o.challengeid;
            this.challengelevel = o.challengelevel;
            this.challengename = o.challengename;
            this.codernum = o.codernum;
            this.companyid = o.companyid;
            this.endtime = o.endtime;
            this.photo = o.photo;
            this.publicorprivate = o.publicorprivate;
            this.salary = o.salary;
            this.status = o.status;
            this.type = o.type;

        }
    }
}
