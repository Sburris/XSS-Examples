<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HttpOnlyExamples.aspx.cs" Inherits="XSS_Examples.HttpOnlyExamples" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
    <asp:HyperLink runat="server" NavigateUrl="~/default.aspx" Text="Home"/><br/><br/>
    <div>
      <asp:Button ID="btnSendName0" runat="server" CommandArgument="0" Text="Turned Off" OnClick="btnSendName_OnClick" /><br />
      <asp:Button ID="btnSendName1" runat="server" CommandArgument="1" Text="Turned On" OnClick="btnSendName_OnClick" /><br />
    </div>
  </form>
  <script>
    document.write('<br />Cookies: ' + document.cookie);
    document.write('<br />Modifiying Cookie...');
    document.cookie = "MyCookie=NEW VALUE";
    document.write('<br />Cookies: ' + document.cookie);
  </script>
</body>
</html>
