<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="TP5_GRUPO_21.EliminarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style10 {
        }
        .auto-style11 {
            width: 237px;
        }
        .auto-style12 {
            width: 81px;
        }
        .auto-style13 {
            width: 152px;
        }
        .auto-style14 {
            width: 208px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style8">
                <tr>
                    <td style="text-align: center;">
            <asp:HyperLink ID="hlAgregar" runat="server" NavigateUrl="AgregarSucursal.aspx">Agregar Sucursal</asp:HyperLink>
                    </td>
                    <td style="text-align: center;">
            <asp:HyperLink ID="hlListado" runat="server" NavigateUrl="ListarSucursal.aspx">Listado de Sucursales</asp:HyperLink>
                    </td>
                    <td style="text-align: center;">
            <asp:HyperLink ID="hlEliminar" runat="server" NavigateUrl="EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
                    </td>
                </tr>
            </table>
            <table style="width:100%;">
    <tr>
        <td class="auto-style14">Eliminar Sucursal</td>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14">Ingresar ID sucursal: </td>
        <td class="auto-style11">
            <asp:TextBox ID="txtIdEliminar" runat="server" Width="215px"></asp:TextBox>
        </td>
        <td class="auto-style12">
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
        </td>
        <td class="auto-style13">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtIdEliminar" ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^[0-9,$]*$"></asp:RegularExpressionValidator>
            </td>
        <td>
            <asp:Label ID="lblMensajeEliminar" runat="server" Text=""></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" colspan="5">
            <asp:GridView ID="gvEliminar" runat="server">
            </asp:GridView>
        </td>
    </tr>
</table>
        </div>

        

    </form>
</body>
</html>
