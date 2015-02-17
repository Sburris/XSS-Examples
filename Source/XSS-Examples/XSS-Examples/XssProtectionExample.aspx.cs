using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XSS_Examples
{
  [ScriptService]
  public partial class XssProtectionExample : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      txtName.Text = "<script>alert('xss');</script>";
    }

    protected void btnSendName_OnClick(object sender, EventArgs e)
    {
      var button = (Button)sender;
      var option = button.CommandArgument;

      switch (option)
      {
        case "1": 
          Response.Headers.Set("X-XSS-Protection", "1"); 
          break;

        case "2": 
          Response.Headers.Set("X-XSS-Protection", "1; mode=block"); 
          break;

        case "3":
          var reportPath = "XssReport.asmx/Report";
          Response.Headers.Set("X-XSS-Protection", String.Format("1;report={0}", reportPath)); 
          break;

        case "0":
        default:
          Response.Headers.Set("X-XSS-Protection", "0");
          break;
      }

      litMessage.Text = "Hello " + txtName.Text + "!!!";
    }

    [WebMethod]
    [ScriptMethod(UseHttpGet = false, ResponseFormat = ResponseFormat.Json)]
    public void XssReport(string data)
    {
      System.Diagnostics.Debugger.Break();
    }
  }
}