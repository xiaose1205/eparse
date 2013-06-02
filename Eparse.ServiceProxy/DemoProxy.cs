using System;
using System.Collections.Generic;
using System.Linq;
using System.Text; 
using Eparse.Service.IServices;

namespace Eparse.ServiceProxy
{
    public class DemoProxy : System.Web.UI.Page
    {
        private readonly Idemo _demo;

        public DemoProxy(Idemo demo)
        {
            _demo = demo;
        }
        public void PageLoad()
        {
            _demo.dosth("test");
        }
    }
}
