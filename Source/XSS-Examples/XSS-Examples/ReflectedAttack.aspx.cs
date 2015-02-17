using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XSS_Examples
{
  public partial class ReflectedAttack : Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      // Added to get around Chromes XSS Auditor, NOT RECOMMENDED
      Response.Headers.Set("X-XSS-Protection", "0");
    }

    protected void btnSendName_OnClick(object sender, EventArgs e)
    {
      litMessage.Text = "Hello " + txtName.Text + "!!!";
    }
  }
}