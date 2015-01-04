<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DomAttack.aspx.cs" Inherits="XSS_Examples.DomAttack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <script>
    //Taken from http://stackoverflow.com/a/901144/31474
    function getParameterByName(name) {
      name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
      var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
      return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }
  </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      Hello <script>document.write(getParameterByName("Name"))</script>!!!
    </div>
    </form>
</body>
</html>
