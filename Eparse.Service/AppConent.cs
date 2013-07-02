using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Eparse.Service
{
    public class AppConent
    {
        /// <summary>
        /// 唯一实例
        /// </summary>
        class Currentset
        {
            static Currentset()
            {
            }
            internal static readonly AppConent Instance = new AppConent();
        }
        public static AppConent Current
        {
            get { return Currentset.Instance; }
        }
       /// <summary>
       /// 用户的登录处理
       /// </summary>
       /// <param name="user"></param>
       /// <param name="expriseTime"></param>
        public void loginUser(users user, DateTime expriseTime)
        {
            HttpCookie cookie = new HttpCookie("curuser", user.id.ToString());
            cookie.Expires = expriseTime;
       
            HttpContext.Current.Request.Cookies.Add(cookie);
        }
        /// <summary>
        /// 退出登录
        /// </summary>
        /// <param name="user"></param>
        public void logoutUser()
        {
            HttpContext.Current.Request.Cookies.Remove("curuser");
        }
    }
}