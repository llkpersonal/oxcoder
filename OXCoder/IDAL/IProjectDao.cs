using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.DBModel;

namespace OXCoder.IDAL
{
    public interface IProjectDao
    {
        /*
         * 根据挑战查出对应的Project的List，这里应该要用到多表联接查询
         * 
         */
        List<ox_project> GetProjectList(string challengeId);

        /*
         * 查询Project详细信息
         */
        ox_project GetProject(string projectId);

        /*
         * 根据挑战类型查出对应的Project的List
         */
        List<ox_project> GetProjectByType(string type);

        string AddProject(string projectname, string description, int difficulty, string tags, string type);
    }
}
