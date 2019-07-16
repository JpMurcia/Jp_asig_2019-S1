using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto.Models;

namespace Proyecto.View
{
    public partial class Login : System.Web.UI.Page
    {
        PrincipalModel PM = new PrincipalModel();
        public string contra;
        public static string usuario;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void IniciarSession(object sender, EventArgs e)
        {
            string Usuario = txt_Usuario.Text;
            string Contrasena = txt_Contrasena.Text;
            Response.Redirect("~/View/WebForm1.aspx");

        }
    }
}
