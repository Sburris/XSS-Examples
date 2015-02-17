<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContentSecurityExamples.aspx.cs" Inherits="XSS_Examples.ContentSecurityExamples" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
    <asp:HyperLink runat="server" NavigateUrl="~/default.aspx" Text="Home"/><br/><br/>
    <div>
      <asp:Button ID="btnSendName0" runat="server" CommandArgument="0" Text="No Policy" OnClick="btnSendName_OnClick"/><br/>
      <asp:Button ID="btnSendName1" runat="server" CommandArgument="1" Text="Policy ('self')" OnClick="btnSendName_OnClick" /><br/>
      <asp:Button ID="btnSendName2" runat="server" CommandArgument="2" Text="Policy ('unsafe-inline')" OnClick="btnSendName_OnClick" /><br/>
      <asp:Button ID="btnSendName3" runat="server" CommandArgument="3" Text="Policy ('unsafe-inline' 'self')" OnClick="btnSendName_OnClick" /><br/>
      <asp:Button ID="btnSendName4" runat="server" CommandArgument="4" Text="Policy ('unsafe-inline' 'self' 'externaldomain.localhost.com')" OnClick="btnSendName_OnClick" /><br/>
      <asp:Button ID="btnSendName5" runat="server" CommandArgument="5" Text="Policy ('self' 'externaldomain.localhost.com')" OnClick="btnSendName_OnClick" /><br/>
      <asp:Button ID="btnSendName6" runat="server" CommandArgument="6" Text="Policy ('none')" OnClick="btnSendName_OnClick" /><br/>
    </div>
  </form>
  <script>
    document.write('<br />PAGE: This is written from page/inline level script.');
  </script>
  <script src="/Scripts/InternalFile.js" type="text/javascript"></script>
  <script src="http://localhost:12345/Scripts/ExternalFile.js"></script>
</body>
</html>
