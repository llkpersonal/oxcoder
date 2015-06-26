using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.DBModel;

namespace OXCoder.IBLL
{
    public interface IProjectService
    {
        List<ox_project> GetProject(string type);

        ox_project GetProjectDetail(string projectId);
    }
}
