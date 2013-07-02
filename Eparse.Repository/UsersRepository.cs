#region Version Info
/* ========================================================================
* 【本类功能概述】
* 
* 作者：王军 时间：2013/6/2 00:23:35
* 文件名：UsersRepository
* 版本：V1.0.1
* 联系方式：511522329  
*
* 修改者： 时间： 
* 修改说明：
* ========================================================================
*/
#endregion

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Eparse.Model;
using HelloData.FrameWork.Data;

namespace Eparse.Repository
{
    public class UsersRepository : BaseManager<UsersRepository, users>
    {

        public users getModel(string username, string pwd)
        {
            using (SelectAction action = new SelectAction(this.Entity))
            {
                action.SqlWhere(users.Columns.username, username);
                if (!string.IsNullOrEmpty(pwd))
                    action.SqlWhere(users.Columns.password, pwd);
                return action.QueryEntity<users>();
            }
        }
    }
}
