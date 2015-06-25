using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IDAL;

namespace OXCoder.DALImpl
{
    public class ProjectDao : IDAL.IProjectDao
    {
        /*
         * 通过Challenge的id查询Project的list
         */
        public System.Collections.ArrayList GetProjectList(string challengeId)
        {
            throw new NotImplementedException();
        }

        public DBModel.ox_project GetProject(string projectId)
        {
            throw new NotImplementedException();
        }
    }
}
