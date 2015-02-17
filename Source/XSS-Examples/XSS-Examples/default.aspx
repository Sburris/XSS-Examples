<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="XSS_Examples._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <h3>Cross-Site Scripting Types</h3>
      <asp:HyperLink runat="server" NavigateUrl="~\DomAttack.aspx" Text="DOM Attack"/><br />
      <asp:HyperLink runat="server" NavigateUrl="~\PersistentAttack.aspx" Text="Persistent Attack"/><br />
      <asp:HyperLink runat="server" NavigateUrl="~\ReflectedAttack.aspx" Text="Reflected Attack"/><br />
      
      <h3>Mitigation Technqiues</h3>
      <asp:HyperLink runat="server" NavigateUrl="~\XssProtectionExample.aspx" Text="Xss Protection Examples"/><br />
      <asp:HyperLink runat="server" NavigateUrl="~\ContentSecurityExamples.aspx" Text="Content Security Policy Examples"/><br />
      <asp:HyperLink runat="server" NavigateUrl="~\HttpOnlyExamples.aspx" Text="HttpOnly Examples"/><br />
    </div>
    </form>
</body>
</html>
