<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DomAttack.aspx.cs" Inherits="XSS_Examples.DomAttack" ValidateRequest="false" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <script>
    //Taken from http://stackoverflow.com/a/901144/31474
    function getHashOrParameterByName(name) {
      var hash = window.location.hash;
      if (hash.length > 1) {
        return hash.substr(1);
      }

      name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
      var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
      return results === null ? "UNKOWN USER" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }
  </script>
</head>
<body>
  <form id="form1" runat="server">
    <asp:HyperLink runat="server" NavigateUrl="~/default.aspx" Text="Home"/><br/><br/>
    <div>
      <p>
        This example will grab the Url Fragement (after the #) and display that as the name.  If there is no hash but there is a Query String with the name of 'Name', that value is returned.
      </p>
      Hello <script>document.write(getHashOrParameterByName("Name"))</script>!!!
      <br/><br/>
      <asp:HyperLink runat="server" NavigateUrl="~/DomAttack.aspx#Stephen" Text="Fragment: #Stephen"/><br/>
      <a href="/DomAttack.aspx#<script>alert('xss')</script>">Fragment: #&lt;script&gt;alert(&#39;xss&#39;)&lt;/script&gt;</a><br/>
      <asp:HyperLink runat="server" NavigateUrl="~/DomAttack.aspx?Name=Stephen" Text="Query String: Name=Stephen"/><br/>
      <%--<asp:HyperLink runat="server" NavigateUrl="~/DomAttack.aspx?Name=%3Cscript%3Ealert(%27xss%27)%3C%2Fscript%3E" Text="Query String: &lt;script&gt;alert(&#39;xss&#39;)&lt;/script&gt;" /><br/>--%>
      <a href="/DomAttack.aspx?Name=%3Cscript%3Ealert(%27xss%27)%3C%2Fscript%3E">Query String: Name=%3Cscript%3Ealert(%27xss%27)%3C%2Fscript%3E</a><br/>
    </div>
  </form>
</body>
</html>
