﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace OXCoder.IDAL
{
    public interface IProjectDao
    {
        /*
         * 根据挑战查出对应的Project的List，这里应该要用到多表联接查询
         * 
         */
        ArrayList GetProjectList(string challengeId);

        /*
         * 查询Project详细信息
         */
        DBModel.ox_project GetProject(string projectId);
    }
}
