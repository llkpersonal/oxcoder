using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IDAL;
using OXCoder.DBModel;
using OXCoder.DALImpl;
namespace OXCoder.DALImpl
{
    
    public class ProjectChallengeDao :IDAL.IProjectChallengeDao
    {

        //public IQueryable<ResultList> AdList;
        public List<ResultList> GetProjectChallengeByUidAndStatus(int uid,int status)
        {
            OXProjectChallengeDataContext projectChallengeDC = new OXProjectChallengeDataContext();
            OXChallengeDataContext challengeDC = new OXChallengeDataContext();
            OXProjectDataContext projectDC = new OXProjectDataContext();
            //string aa = GetProjectNameByChallengeId("35ed938b-9d21-4943-92a3-4a5fdd5a2fe0");
            var AdList = from b in challengeDC.ox_challenge where b.companyid == uid && b.status == status
                                              orderby b.begintime descending
                                              select new ResultList
                                              {
                                                  challengeid=b.challengeid,
                                                  companyid=b.companyid,
                                                  challengename=b.challengename,
                                                  start=(DateTime)b.begintime,
                                                  end = (DateTime)b.endtime,
                                                  challengelevel=Convert.ToInt32(b.challengelevel),
                                                  salary=b.salary,
                                                  projectname = GetProjectNameByChallengeId(b.challengeid)
                                              };  
                //projectChallengeDC.ox_project_challenge.Where(d => d.companyid == uid).ToList();
            return AdList.ToList();
        }

        public ox_project_challenge GetProjectChallengeByChallengeId(string challengeid)
        {
            OXProjectChallengeDataContext projectChallengeDC = new OXProjectChallengeDataContext();
            ox_project_challenge projectChallenge = projectChallengeDC.ox_project_challenge.Single(d => d.challengeid == challengeid);
            return projectChallenge;
        }

        public string GetProjectNameByChallengeId(string challengeid)
        {
            OXProjectChallengeDataContext projectChallengeDC = new OXProjectChallengeDataContext();
            OXProjectDataContext projectDC = new OXProjectDataContext();
            List<ox_project_challenge> list = projectChallengeDC.ox_project_challenge.Where(d => d.challengeid == challengeid).ToList();
            string projectName="";
            foreach(ox_project_challenge pc in list)
            {
                string projectId = pc.projectid;
                projectName = projectName+" "+projectDC.ox_project.Single(d => d.projectid == projectId).projectname;

            }
            return projectName;
        }

        public void AddProjectChallenge(string projectid,string challengeid)
        {
            OXProjectChallengeDataContext dc = new OXProjectChallengeDataContext();
            ox_project_challenge pc = new ox_project_challenge();
            pc.challengeid = challengeid;
            pc.projectid = projectid;
            dc.ox_project_challenge.InsertOnSubmit(pc);
            dc.SubmitChanges();
        }
    }
}
