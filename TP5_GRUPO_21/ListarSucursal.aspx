<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarSucursal.aspx.cs" Inherits="TP5_GRUPO_21.ListarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
            width: 301px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            width: 301px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
            width: 211px;
        }
        .auto-style6 {
            width: 211px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="myDiv">
            <table style="width:100%;">
                <tr>
                    <td style="text-align: center;">
            <asp:HyperLink ID="hlAgregar0" runat="server" NavigateUrl="AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
                    </td>
                    <td style="text-align: center;">
            <asp:HyperLink ID="hlListado0" runat="server" NavigateUrl="ListarSucursal.aspx">Listado de Sucursales</asp:HyperLink>
                    </td>
                    <td style="text-align: center;">
            <asp:HyperLink ID="hlEliminar0" runat="server" NavigateUrl="EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
                    </td>
                </tr>
            </table>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style5">Listado de Sucursales</td>
                    <td class="auto-style4"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style6">Busquedo ingrese Id sucursal</td>
                    <td class="auto-style2"> 
            <asp:TextBox ID="txtIdSucursal" runat="server"></asp:TextBox>
            <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" />
            <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar todos" Width="86px" />

                    </td>
                    <td>

            <asp:RegularExpressionValidator ID="revSoloNumeros" runat="server" 
                ControlToValidate="txtIdSucursal" 
                ValidationExpression="^\d+$" 
                Text="Error, solo ingrese números" 
                ForeColor="Red">
            </asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="3">
            <asp:GridView ID="listaSucursales" runat="server" OnSelectedIndexChanged="listaSucursales_SelectedIndexChanged">
            </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
    </body>
</html>
