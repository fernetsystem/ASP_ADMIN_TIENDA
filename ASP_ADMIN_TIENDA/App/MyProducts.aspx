<%@ Page Title="" Language="C#" MasterPageFile="~/App/Site1.Master" AutoEventWireup="true" CodeBehind="MyProducts.aspx.cs" Inherits="ASP_ADMIN_TIENDA.App.MyProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" class=" table table-bordered table-hover " ></asp:GridView>
        </div>
    </form>
</asp:Content>
