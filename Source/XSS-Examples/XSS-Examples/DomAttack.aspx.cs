﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XSS_Examples
{
  public partial class DomAttack : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      // Added to get around Chromes XSS Auditor, NOT RECOMMENDED
      Response.Headers.Set("X-XSS-Protection", "0");
    }
  }
}