<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmClientes.aspx.cs" Inherits="WebServiceTokens.WEB.Interfaces.Clientes.frmClientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h5>Hola esto es una prueba</h5>
        <table style="width: 100%;">
            <tr>
                <td style="width: 50%;">Identificacion:</td>
                 <td style="width: 50%;" >
                     <asp:TextBox ID="txtIdentificacion" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                 <td colspan ="2">
                     <asp:Button ID="btnConsultar" runat="server" Text="Consultar" OnClick="btnConsultar_Click" />
                 </td>
            </tr>
            <tr>
                 <td colspan ="2">
                     <asp:GridView ID="DGVdatos" runat="server" BackColor="White" 
                         BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
                         AutoGenerateColumns="false" EmptyDataText="No se encontraron registros" Width="100%">

                         <Columns>
                             <asp:BoundField DataField="IdCliente" HeaderText="Identificacion" />
                              <asp:BoundField DataField="clieNombre" HeaderText="Nombres" />
                              <asp:BoundField DataField="clieApellido" HeaderText="Apellidos" />
                              <asp:BoundField DataField="clieDireccion" HeaderText="Direccion" />
                              <asp:BoundField DataField="clieTelefono" HeaderText="Fono" />
                              <asp:BoundField DataField="clieCorreo" HeaderText="Email" />                     

                         </Columns>

                         <AlternatingRowStyle BackColor="#DCDCDC" />
                         <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                         <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                         <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                         <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                         <SortedAscendingCellStyle BackColor="#F1F1F1" />
                         <SortedAscendingHeaderStyle BackColor="#0000A9" />
                         <SortedDescendingCellStyle BackColor="#CAC9C9" />
                         <SortedDescendingHeaderStyle BackColor="#000065" />
                     </asp:GridView>
                 </td>
            </tr>

        </table>
    </form>
</body>
</html>
