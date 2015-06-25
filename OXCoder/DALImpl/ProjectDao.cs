using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IDAL;
using OXCoder.DBModel;
namespace OXCoder.DALImpl
{
    public class ProjectDao : IDAL.IProjectDao
    {

        public System.Collections.ArrayList GetProjectList(string challengeId)
        {
            throw new NotImplementedException();
        }

        public DBModel.ox_project GetProject(string projectId)
        {
            throw new NotImplementedException();
        }

        public List<ox_project> GetProjectByType(string type)
        {
            OXProjectDataContext projectDC = new OXProjectDataContext();
            List<ox_project> list = projectDC.ox_project.Where(d => d.type == type).ToList();
            return list;
        }
    }
}
