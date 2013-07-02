#region Version Info
/* ========================================================================
* 【本类功能概述】
* 
* 作者：王军 时间：2013/6/24 23:18:13
* 文件名：UserHandle
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

using HelloData.Web.AppHandlers;
using Eparse.Repository;
using HelloData.FWCommon;

namespace Eparse.Service.AjaxHandler
{
    public class UserHandle : BaseHandler
    {
        public override HelloData.AppHandlers.IAppHandler CreateInstance()
        {
            return new UserHandle();
        }

        public override string HandlerName
        {
            get { return "user"; }
        }

        public HandlerResponse Login(string usr, string pwd)
        {
            if (string.IsNullOrEmpty(usr) || string.IsNullOrEmpty(pwd))
                return CreateHandler(0, "登录失败,用户名或密码不能为空");
            users model = UsersRepository.Instance.getModel(usr, pwd);
            if (model != null)
            {
                AppConent.Current.loginUser(model, DateTime.Now.AddMonths(1));
                return CreateHandler(1, "登录成功");
            }
            return CreateHandler(0, "登录失败");
        }

        public HandlerResponse Logout(string usr, string pwd)
        {
            AppConent.Current.logoutUser();
            return CreateHandler(1, "退出成功");
        }
        public HandlerResponse Regit(string userName, string pwd, string repwd)
        {
            if (repwd != pwd)
                return CreateHandler(0, "两次密码输入不一致");
            users model = new users();
            model.createtime = DateTime.Now;
            model.password = pwd;
            model.username = userName;
            users model1 = UsersRepository.Instance.getModel(userName, "");
            if (UsersRepository.Instance.Add(model) > 0)
            {
                AppConent.Current.loginUser(model, DateTime.Now.AddMonths(1));
                return CreateHandler(1, "注册成功");
            }
            else
                return CreateHandler(0, "注册失败");
        }
    }
}
