<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XssProtectionExample.aspx.cs" Inherits="XSS_Examples.XssProtectionExample" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
    <asp:HyperLink runat="server" NavigateUrl="~/default.aspx" Text="Home"/><br/><br/>
    <div>
      <asp:ScriptManager ID="sm" runat="server" EnablePageMethods="true" />
      Enter your name
      <asp:TextBox ID="txtName" runat="server" /><br />
      <asp:Button ID="btnSendName1" runat="server" CommandArgument="0" Text="Send (0)" OnClick="btnSendName_OnClick" />
      <asp:Button ID="btnSendName2" runat="server" CommandArgument="1" Text="Send (1)" OnClick="btnSendName_OnClick" />
      <asp:Button ID="btnSendName3" runat="server" CommandArgument="2" Text="Send (1; mode-block)" OnClick="btnSendName_OnClick" />
      <asp:Button ID="btnSendName4" runat="server" CommandArgument="3" Text="Send (1; report)" OnClick="btnSendName_OnClick" />
      <br />
      <br />
      <asp:Literal ID="litMessage" runat="server" />
    </div>
  </form>
</body>
</html>
