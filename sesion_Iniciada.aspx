<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sesion_Iniciada.aspx.cs" Inherits="aplicacion_web.sesion_Iniciada" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body bgcolor="#E6E6FA" >
    <form id="form1" runat="server">
    <div>
     
    <table style="width:100%">
          <tr>
            <th>
                <asp:Button ID="pedidos" runat="server" Text="Pedidos" Width="190px" OnClick="pedidos_Click" />
              </th>
            <th>
                <asp:Button ID="cerrar_sesion" runat="server" Text="Cerrar Sesion" style="margin-left: 0px" Width="163px" OnClick="cerrar_sesion_Click" />
              </th>            
          </tr>
        </table>    
     
    </div>

    <div>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USUARIOS</div>

    <div>
        <table style="width:100%">
          <tr>
            <th>
               
                <asp:Label ID="Label1" runat="server" Text="Carnet"></asp:Label>
               
            </th>
            <th>
                
                <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
                
            </th>
            <th>
                
                <asp:Label ID="Label3" runat="server" Text="Apellido"></asp:Label>
                
            </th>
          </tr>
            <tr>
            <th>
               
                <asp:TextBox ID="u_carnet" runat="server" Width="196px"></asp:TextBox>
               
            </th>
            <th>
                
                <asp:TextBox ID="u_nombre" runat="server" Width="196px"></asp:TextBox>
                
            </th>
            <th>
                
                <asp:TextBox ID="u_apellido" runat="server" Width="195px"></asp:TextBox>
                
            </th>
          </tr>
        </table> 
    </div>

    <div>

    </div>
        
        <table style="width:100%">
          <tr>
            <th>
               
                <asp:Button ID="crear" runat="server" OnClick="crear_Click" Text="Crear" Width="167px" />
               
            </th>
            <th>
                
                <asp:Button ID="eliminar" runat="server" Text="Eliminar" Width="167px" OnClick="eliminar_Click" />
                
            </th>
            <th>
                
                <asp:Button ID="actualizar" runat="server" Text="Actualizar" Width="167px" OnClick="actualizar_Click" />
                
            </th>
            <th>

                <asp:Button ID="refrescar" runat="server" Text="Actualizar Tabla De Usuarios" OnClick="refrescar_Click" />

            </th>
          </tr>
        </table>

        <div>

            <asp:GridView ID="tabla_usuario" runat="server" Height="47px" Width="788px">
            </asp:GridView>

        </div>
    </form>
</body>
</html>
