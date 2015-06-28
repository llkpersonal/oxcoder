using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IDAL;
using OXCoder.DBModel;

namespace OXCoder.DALImpl
{
    public class StatusDao : IStatusDao
    {
        public bool AddStatus(DBModel.ox_status status)
        {
            OXStatusDataContext context = new OXStatusDataContext();
            context.ox_status.InsertOnSubmit(status);
            context.SubmitChanges();
            return true;
        }

        public bool DelStatus(string statusId)
        {
            OXStatusDataContext context = new OXStatusDataContext();
            context.ox_status.DeleteOnSubmit(context.ox_status.Single(s => s.statusid == statusId));
            return true;
        }

        public List<DBModel.ox_status> GetStatus(int ucid)
        {
            OXStatusDataContext context = new OXStatusDataContext();
            //OXProjectDataContext project = new OXProjectDataContext();
            var query = from s in context.ox_status 
                        //join p in project.ox_project
                        //on s.projectid equals p.projectid
                        where s.ucid == ucid 
                        select s;
            return query.ToList();
        }

        public bool ModifyStatus(DBModel.ox_status newStatus)
        {
            OXStatusDataContext context = new OXStatusDataContext();
            ox_status status = context.ox_status.Single(s => s.statusid == newStatus.statusid);
            status.sourcecode = newStatus.sourcecode;
            status.status = newStatus.status;
            status.submittime = DateTime.Now;
            context.SubmitChanges();
            return true;
        }
    }
}
