using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;

namespace XSS_Examples
{
  /// <summary>
  /// Summary description for XssReport
  /// </summary>
  [WebService(Namespace = "http://tempuri.org/")]
  [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
  [System.ComponentModel.ToolboxItem(false)]
  // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
  [ScriptService]
  public class XssReport : System.Web.Services.WebService
  {

    [WebMethod]
    [ScriptMethod(UseHttpGet = false, ResponseFormat = ResponseFormat.Json)]
    public void Report()
    {
      var inputStream = this.Context.Request.InputStream;
      inputStream.Position = 0;
      using (var reader = new StreamReader(inputStream))
      {
        var data = reader.ReadToEnd();
        System.Diagnostics.Debugger.Break();
      }
    }
  }
}
