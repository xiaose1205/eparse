using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace Eparse.UI.handler
{
    /// <summary>
    /// Uploader 的摘要说明
    /// </summary>
    public class Uploader : IHttpHandler
    {
        private const int ChunkSize = 1024*1024;
        private string qqfile = "";
        public void ProcessRequest(HttpContext context)
        {
            HttpRequest Request = context.Request;
            using (var stream = Request.InputStream)
            {
                using (var br = new BinaryReader(stream))
                {
                    WriteStream(br, qqfile);
                }
            }

        }
        private void WriteStream(BinaryReader br, string fileName)
        {
            byte[] fileContents = new byte[] { };
            var buffer = new byte[ChunkSize];

            while (br.BaseStream.Position < br.BaseStream.Length - 1)
            {
                if (br.Read(buffer, 0, ChunkSize) > 0)
                {
                    fileContents = fileContents.Concat(buffer).ToArray();
                }
            }

            using (var fs = new FileStream(@"C:\\temp\\" + DateTime.Now.ToString("yyyyMMddHHmmSS") +
                Path.GetExtension(fileName).ToLower(), FileMode.Create))
            {
                using (var bw = new BinaryWriter(fs))
                {
                    bw.Write(fileContents);
                }
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}