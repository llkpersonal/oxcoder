﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IDAL;
using OXCoder.DBModel;
namespace OXCoder.DALImpl
{
    public class ProjectDao : IDAL.IProjectDao
    {
        /*
         * 通过Challenge的id查询Project的list
         */
        public List<ox_project> GetProjectList(string challengeId)
        {
            OXProjectDataContext project_context = new OXProjectDataContext();
            OXProjectChallengeDataContext projectChallenge_context = new OXProjectChallengeDataContext();

            try{
                var query = from p in project_context.ox_project.ToList() join pc in projectChallenge_context.ox_project_challenge.ToList() on p.projectid equals pc.projectid where pc.challengeid == challengeId select p;
                return query.ToList();
            }
            catch (InvalidOperationException e)
            {
                return null;
            }
        }

        public ox_project GetProject(string projectId)
        {
            OXProjectDataContext context = new OXProjectDataContext();
            try
            {
                ox_project project = context.ox_project.Single(p => p.projectid == projectId);
                return project;
            }
            catch (InvalidOperationException e)
            {
                return null;
            }
        }

        public List<ox_project> GetProjectByType(string type)
        {
            OXProjectDataContext projectDC = new OXProjectDataContext();
            List<ox_project> list = projectDC.ox_project.Where(d => d.type == type).ToList();
            return list;
        }

        public string AddProject(string projectname,string description,int difficulty,string tags,string type)
        {
            OXProjectDataContext pdc = new OXProjectDataContext();
            ox_project project = new ox_project();
            project.projectname = projectname;
            project.description = description;
            project.difficulty = difficulty;
            project.projectid = Guid.NewGuid().ToString();
            project.tags = tags;
            project.type = type;
            pdc.ox_project.InsertOnSubmit(project);
            pdc.SubmitChanges();
            return project.projectid;
        }
    }
}
