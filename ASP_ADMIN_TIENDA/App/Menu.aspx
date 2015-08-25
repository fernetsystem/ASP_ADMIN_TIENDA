<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="ASP_ADMIN_TIENDA.App.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="page-header">
        <h1>Elity <small>panel de control</small></h1>
    </div>
    <div class="container-fluid">
    <div class="row">
        <div class="col-md-4">
            <ul class="nav nav-pills nav-stacked">
                <li role="presentation" class="active"><a href="#">Pedidos recientes</a></li>
                <li role="presentation"><a href="#">Control de productos</a></li>
                <li role="presentation"><a href="#">Pedidos y Ventas</a></li>
            </ul>
        </div>
        <div class="col-md-8">
            <form id="form1" runat="server">
            <div class="table-responsive">
                <asp:GridView ID="GridView1" runat="server" class=" table table-bordered table-hover " ></asp:GridView>
            </div>
            </form>
        </div>
    </div>
    </div>
</body>
</html>
