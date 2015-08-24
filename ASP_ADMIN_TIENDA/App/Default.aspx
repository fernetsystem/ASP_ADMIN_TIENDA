<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASP_ADMIN_TIENDA.App.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <link href="Scripts/StyleSheet1.css" rel="stylesheet" />
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="page-header">
      <h1>Elity <small>shop online</small></h1>
    </div>
    <form class="form-signin myLogin" runat="server">
        <h1>Login</h1>
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="E-Mail" type="text" required autofocus></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Password" type="password" required></asp:TextBox><br />
        <asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="Sign in" />
    </form>
</body>
</html>
