using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IBLL;
using OXCoder.DBModel;
using OXCoder.IDAL;
using OXCoder.DALImpl;
using System.IO;
namespace OXCoder.BLLImpl
{
    public class ProjectService:IProjectService
    {
        public List<ox_project> GetProject(string type)
        {
            IProjectDao projectDao = new ProjectDao();
            List<ox_project> list = projectDao.GetProjectByType(type);
            return list;
        }

        public ox_project GetProjectDetail(string projectId)
        {
            IProjectDao projectDao = new ProjectDao();
            return projectDao.GetProject(projectId);
        }

        public void AddProject(string projectname,string template,string description,int difficulty,string tags,string type)
        {
            IProjectDao projectDao = new ProjectDao();
            string projectid = projectDao.AddProject(projectname, description, difficulty, tags, type);
            string path = System.AppDomain.CurrentDomain.BaseDirectory.ToString()+"\\template\\"+projectid+".template";
            StreamWriter writer = new StreamWriter(path);
            writer.WriteLine(template);
            writer.Close();
        }
        
    }
}
