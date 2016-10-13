<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="aplicacion_web._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 288px;
        }
        .auto-style2 {
            width: 122px;
        }
    </style>
</head>
<body bgcolor="#E6E6FA">
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%">
          <tr>
            <th class="auto-style2"></th>
            <th class="auto-style1">Iniciar Sesion</th> 
            <th></th>
          </tr>
          <tr>
            <td class="auto-style2"></td>
            <td class="auto-style1"></td> 
            <td></td>
          </tr>
          <tr>
            <td class="auto-style2">Usuario</td>
            <td class="auto-style1">
                <asp:TextBox ID="s_usuario" runat="server" Width="262px"></asp:TextBox>
              </td> 
            <td></td>
          </tr>
          <tr>
            <td class="auto-style2">Password</td>
            <td class="auto-style1">
                <asp:TextBox ID="s_password" runat="server" TextMode="Password" Width="262px"></asp:TextBox>
              </td> 
            <td></td>
          </tr>
          <tr>
            <td class="auto-style2"></td>
            <td class="auto-style1">
                <asp:Button ID="i_sesion" runat="server" OnClick="i_sesion_Click" Text="Iniciar Sesion" />
              </td> 
            <td></td>
          </tr>
            <tr>
            <td>
                <asp:Label ID="mensaje" runat="server"></asp:Label>
                </td>
          </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
