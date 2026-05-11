<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarSucursal.aspx.cs" Inherits="TP5_GRUPO_21.ListarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="hlAgregar" runat="server" NavigateUrl="AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
            &nbsp;&nbsp;
            <asp:HyperLink ID="hlListado" runat="server" NavigateUrl="ListarSucursal.aspx">Listado de Sucursales</asp:HyperLink>
            &nbsp;&nbsp;
            <asp:HyperLink ID="hlEliminar" runat="server" NavigateUrl="EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
            <br />
            <h4>Listado de Sucursales</h4>
            <br />
            <b>Búsqueda ingrese Id sucursal:</b> 
            <asp:TextBox ID="txtIdSucursal" runat="server"></asp:TextBox>
            <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" />
            <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar todos" />

            <asp:RegularExpressionValidator ID="revSoloNumeros" runat="server" 
                ControlToValidate="txtIdSucursal" 
                ValidationExpression="^\d+$" 
                Text="Error, solo ingrese números" 
                ForeColor="Red">
            </asp:RegularExpressionValidator>

            <br /><br />
            <asp:GridView ID="listaSucursales" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
