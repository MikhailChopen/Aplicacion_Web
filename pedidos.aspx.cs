using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace aplicacion_web
{
    public partial class pedidos : System.Web.UI.Page
    {

        ServicioCS.Service1SoapClient ServerCS = new ServicioCS.Service1SoapClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            llenar_pedidos();
        }

        public void llenar_pedidos() 
        {
            List<string> Lista = ServerCS.Leer_pedidos();

            DataTable tabla = new DataTable();

            tabla.Columns.Add("Id Pedido");
            tabla.Columns.Add("Pedido");
            tabla.Columns.Add("Cantidad");
            tabla.Columns.Add("Carnet");

            int cantidad = Lista.Count();
            int i = 0;
            while (i < cantidad)
            {
                DataRow registro = tabla.NewRow();
                registro[0] = Lista[i];
                registro[1] = Lista[i + 1];
                registro[2] = Lista[i + 2];
                registro[3] = Lista[i + 3];


                tabla.Rows.Add(registro);
                tabla.AcceptChanges();
                tabla_pedidos.DataSource = tabla;
                tabla_pedidos.DataBind();
                i = i + 4;

            }
        }

        protected void p_crear_Click(object sender, EventArgs e)
        {
            ServerCS.Crear_Pedido(p_pedido.Text, Int32.Parse(p_cantidad.Text), Int32.Parse(p_carnet.Text));
            llenar_pedidos();
            p_id.Text = "";
            p_pedido.Text = "";
            p_cantidad.Text = "";
            p_carnet.Text = "";
        }

        protected void p_eliminar_Click(object sender, EventArgs e)
        {
            ServerCS.Eliminar_pedido(Int32.Parse(p_id.Text));
            llenar_pedidos();
            p_id.Text = "";
            p_pedido.Text = "";
            p_cantidad.Text = "";
            p_carnet.Text = "";
        }

        protected void p_actualizar_Click(object sender, EventArgs e)
        {
            ServerCS.Actualizar_Pedido(Int32.Parse(p_id.Text), p_pedido.Text, Int32.Parse(p_cantidad.Text), Int32.Parse(p_carnet.Text));
            llenar_pedidos();
            p_id.Text = "";
            p_pedido.Text = "";
            p_cantidad.Text = "";
            p_carnet.Text = "";
        }

        protected void p_refrescar_Click(object sender, EventArgs e)
        {
            llenar_pedidos();
        }

        protected void cerrar_sesion_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Server.Transfer("Default.aspx", true);
        }

        protected void usuario_Click(object sender, EventArgs e)
        {
            Server.Transfer("sesion_Iniciada.aspx", true);
        }
    }
}