using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XSS_Examples
{
  public partial class HttpOnlyExamples : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void btnSendName_OnClick(object sender, EventArgs e)
    {
      var button = (Button)sender;
      var option = button.CommandArgument;

      switch (option)
      {
        case "1": Response.Cookies.Add(new HttpCookie("MyCookie", "My cookie's value.") {HttpOnly = true}); break;


        case "0":
        default:
          Response.Cookies.Add(new HttpCookie("MyCookie", "My cookie's value.") { HttpOnly = false });
          return;
      }
    }
  }
}