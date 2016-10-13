using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aplicacion_web
{
    public partial class _Default : System.Web.UI.Page
    {
        
        ServicioCS.Service1SoapClient ServerCS = new ServicioCS.Service1SoapClient();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void i_sesion_Click(object sender, EventArgs e)
        {
            if (s_usuario.Text != "" && s_password.Text != "")
            {


                List<string> Lista = new List<string>();

                Lista = ServerCS.Iniciar_Sesion(s_usuario.Text, Int32.Parse(s_password.Text));

                if (Lista[0] == "1")
                {

                    Session["carnet"]   = Lista[1];
                    Session["nombre"]   = Lista[2];
                    Session["apellido"] = Lista[3];

                    Server.Transfer("sesion_Iniciada.aspx",true);

                }
                else
                {
                    mensaje.Text = "Los datos son incorrectos";
                }

            }
            else
            {
                mensaje.Text = "Campos Vacios";
            }
        }
    }
}