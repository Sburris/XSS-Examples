<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReflectedAttack.aspx.cs" Inherits="XSS_Examples.ReflectedAttack" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      Enter your name <asp:TextBox ID="txtName" runat="server"/>
      <asp:Button ID="btnSendName" runat="server" Text="Send" OnClick="btnSendName_OnClick"/>
      <br/>
      <br/>
      <asp:Literal ID="litMessage" runat="server"/>
    </div>
    </form>
</body>
</html>
