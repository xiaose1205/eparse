using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HelloData.FrameWork.Data;

namespace Eparse.Model
{
    public class Demo:BaseEntity
    {
        public Demo()
        {
            base.SetIni(this,"demo");
        }
    }
}
