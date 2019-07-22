//using proyectoweb.Controllers;

using proyectoweb.Models;

using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace proyectoweb.Views
{
    public partial class login : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataTable Consul_dato = new DataTable();
        user_udla a = new user_udla();
        protected void Unnamed_Click(object sender, EventArgs e)
        {
            
            a.email_user = usuarioNombre.Text;
            a.contra_user = usuarioContrasena.Text;
            Consul_dato = a.ConsultarUser(a);

            if (Consul_dato.Rows[0]["mensaje"].ToString() == "siii wey si existe :D") {


                Session["tipo"] = Consul_dato.Rows[0]["idtipo"].ToString();

                Session["area"] = Consul_dato.Rows[0]["area_1"].ToString();

                Response.Redirect("principal.aspx");




            }
            else
            {
                

                ScriptManager.RegisterStartupScript(this, this.GetType(), "hwa", "modalError();", true);
              
            }


        }
    }
}