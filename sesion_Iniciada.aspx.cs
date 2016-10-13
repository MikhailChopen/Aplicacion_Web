using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace aplicacion_web
{
    public partial class sesion_Iniciada : System.Web.UI.Page
    {

        ServicioCS.Service1SoapClient ServerCS = new ServicioCS.Service1SoapClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            llenar_usuarios();
        }

        protected void crear_Click(object sender, EventArgs e)
        {
            ServerCS.Crear_Usuario(Int32.Parse(u_carnet.Text), u_nombre.Text, u_apellido.Text);
            llenar_usuarios();
            u_carnet.Text = "";
            u_nombre.Text = "";
            u_apellido.Text = "";
        }


        protected void cerrar_sesion_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Server.Transfer("Default.aspx", true);
        }

        protected void pedidos_Click(object sender, EventArgs e)
        {
            Server.Transfer("pedidos.aspx", true);
        }

        protected void refrescar_Click(object sender, EventArgs e)
        {
            llenar_usuarios();
        }

        public void llenar_usuarios()
        {

            List<string> Lista = ServerCS.Leer_Usuarios();
            DataTable tabla = new DataTable();
            
           
            tabla.Columns.Add("Carnet");
            tabla.Columns.Add("Nombre");
            tabla.Columns.Add("Apellido");


            

            int cantidad = Lista.Count();
            int i = 0;
            while (i < cantidad)
            {
                DataRow registro = tabla.NewRow();

                registro[0] = Lista[i];
                registro[1] = Lista[i+1];
                registro[2] = Lista[i+2];

                tabla.Rows.Add(registro);
                tabla.AcceptChanges();
                tabla_usuario.DataSource = tabla;
                tabla_usuario.DataBind();
                
                i = i + 3;

            }

            

        }

        protected void actualizar_Click(object sender, EventArgs e)
        {
            ServerCS.Actualizar_Usuario(Int32.Parse(u_carnet.Text), u_nombre.Text, u_apellido.Text);
            llenar_usuarios();
            u_carnet.Text = "";
            u_nombre.Text = "";
            u_apellido.Text = "";
        }

        protected void eliminar_Click(object sender, EventArgs e)
        {
            ServerCS.Eliminar_Usuario(Int32.Parse(u_carnet.Text));
            llenar_usuarios();
            u_carnet.Text = "";
            u_nombre.Text = "";
            u_apellido.Text = "";
        }

    }
}