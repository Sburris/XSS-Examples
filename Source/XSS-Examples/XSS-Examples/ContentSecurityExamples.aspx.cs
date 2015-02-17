using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XSS_Examples
{
  public partial class ContentSecurityExamples : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSendName_OnClick(object sender, EventArgs e)
    {
      var button = (Button)sender;
      var option = button.CommandArgument;

      var policy = string.Empty;
      switch (option)
      {
        case "1": policy = "default-src 'self'"; break;
        case "2": policy = "default-src 'unsafe-inline'"; break;
        case "3": policy = "default-src 'unsafe-inline' 'self'"; break;
        case "4": policy = "default-src 'unsafe-inline' 'self' http://localhost:12345/"; break;
        case "5": policy = "default-src 'self' http://localhost:12345/"; break;
        case "6": policy = "script-src 'none'"; break;
        
        case "0": 
        default:
          //No policy
          return;
      }

      Response.Headers.Set("Content-Security-Policy", policy);
      Response.Headers.Set("X-Content-Security-Policy", policy);
      Response.Headers.Set("X-WebKit-CSP", policy);
    }
  }
}