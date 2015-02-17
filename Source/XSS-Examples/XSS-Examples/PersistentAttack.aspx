<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersistentAttack.aspx.cs" Inherits="XSS_Examples.PersistentAttack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
    <asp:HyperLink runat="server" NavigateUrl="~/default.aspx" Text="Home" /><br /><br />
    <div>
      <asp:Literal ID="litMessage" runat="server" />
    </div>
  </form>
</body>
</html>
