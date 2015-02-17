using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Util;
using Microsoft.Security.Application;

namespace XSS_Defenses
{
  public class AntiXssEncoder : HttpEncoder
  {
    protected override void HeaderNameValueEncode(string headerName, string headerValue, out string encodedHeaderName,
      out string encodedHeaderValue)
    {
      base.HeaderNameValueEncode(headerName, headerValue, out encodedHeaderName, out encodedHeaderValue);
    }

    protected override void HtmlAttributeEncode(string value, TextWriter output)
    {
      output.Write(Encoder.HtmlAttributeEncode(value));
    }

    protected override void HtmlDecode(string value, TextWriter output)
    {
      //output.Write(Microsoft.Security.Application.Encoder.);
      base.HtmlDecode(value, output);
    }

    protected override void HtmlEncode(string value, TextWriter output)
    {
      base.HtmlEncode(value, output);
    }

    protected override string JavaScriptStringEncode(string value)
    {
      return base.JavaScriptStringEncode(value);
    }

    protected override byte[] UrlEncode(byte[] bytes, int offset, int count)
    {
      return base.UrlEncode(bytes, offset, count);
    }

    protected override string UrlPathEncode(string value)
    {
      return base.UrlPathEncode(value);
    }
  }
}