using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OXCoder.DBModel
{
    public class OXChallengeDetail : ox_challenge
    {
        private ArrayList projectList;
        public ArrayList ProjectList
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
    }
}
