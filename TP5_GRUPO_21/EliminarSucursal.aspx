<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="TP5_GRUPO_21.EliminarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 144px;
        }
        .auto-style2 {
            width: 224px;
        }
        .auto-style3 {
            width: 144px;
            height: 23px;
        }
        .auto-style4 {
            width: 224px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            width: 89px;
        }
        .auto-style7 {
            height: 23px;
            width: 89px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Eliminar Sucursal</h3>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Ingresar ID sucursal: </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtIdsucursal" runat="server" Width="215px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtIdsucursal" ErrorMessage="Ingrese solo numeros" ForeColor="Red" ValidationExpression="^[0-9,$]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
                <td class="auto-style7"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
                <td class="auto-style7"></td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
