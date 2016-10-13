<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pedidos.aspx.cs" Inherits="aplicacion_web.pedidos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body bgcolor="#E6E6FA">
    <form id="form1" runat="server">

        <div>
     
        <table style="width:100%">
          <tr>
            <th>
                
                <asp:Button ID="usuario" runat="server" Text="Usuarios" Width="259px" OnClick="usuario_Click" />
                
              </th>
            <th>
                
                <asp:Button ID="cerrar_sesion" runat="server" Text="Cerrar Sesion" Width="226px" OnClick="cerrar_sesion_Click" />
                
              </th>            
          </tr>
        </table>    
     
    </div>
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PEDIDOS</div>

        <div>
            <table style="width:100%">
                <tr>
                    <th>

                        <asp:Label ID="Label1" runat="server" Text="Id Pedido"></asp:Label>

                    </th>
                    <th>

                        <asp:Label ID="Label2" runat="server" Text="Pedido"></asp:Label>

                    </th>
                    <th>

                        <asp:Label ID="Label3" runat="server" Text="Cantidad"></asp:Label>

                    </th>
                    <th>

                        <asp:Label ID="Label4" runat="server" Text="Carnet"></asp:Label>

                    </th>
                </tr>
                <tr>
                    <th>

                        <asp:TextBox ID="p_id" runat="server"></asp:TextBox>

                    </th>
                    <th>

                        <asp:TextBox ID="p_pedido" runat="server"></asp:TextBox>

                    </th>
                    <th>

                        <asp:TextBox ID="p_cantidad" runat="server"></asp:TextBox>

                    </th>
                    <th>

                        <asp:TextBox ID="p_carnet" runat="server"></asp:TextBox>

                    </th>
                </tr>
                <tr>
                    <th>

                        <asp:Button ID="p_crear" runat="server" Text="Crear" OnClick="p_crear_Click" />

                    </th>
                    <th>

                        <asp:Button ID="p_eliminar" runat="server" Text="Eliminar" OnClick="p_eliminar_Click" />

                    </th>
                    <th>

                        <asp:Button ID="p_actualizar" runat="server" Text="Actualizar" OnClick="p_actualizar_Click" />

                    </th>
                    <th>

                        <asp:Button ID="p_refrescar" runat="server" Text="Actualizar Tabla " OnClick="p_refrescar_Click" />

                    </th>
                </tr>
            </table>
        </div>
        <div>

            <asp:GridView ID="tabla_pedidos" runat="server" Width="785px">
            </asp:GridView>

        </div>
    </form>
</body>
</html>
