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
    public partial class perfil_miembro : System.Web.UI.Page
    {
        //Grupo_inve_semillero grupo = new Grupo_inve_semillero();
        // permisoController controlador = new permisoController();

       // area area = new area();
        persona per = new persona();
        DataTable dt;
        DataTable dt1;
        protected void Page_Load(object sender, EventArgs e)
        {
            llenar();
        }

         public void llenar() {

            //  grupo.nombreGrupo = Session["area"].ToString();
            per.id_perso = Convert.ToString(Request.QueryString["Id"]);
            dt = per.consul_dato_miembro(per);
            dt1 = per.consul_compet_miembro(per);
            nombre.Text = "Nombre: "+dt.Rows[0]["nom_perso"].ToString();
            imagen_perfil.Src = dt.Rows[0]["url_foto"].ToString();
           cc.Text = "Identificacion: "+dt.Rows[0]["cc_perso"].ToString();
            fecha_naci.Text ="Fecha de Nacimiento: "+ dt.Rows[0]["fecha_naci"].ToString();
            email.Text = "Email: "+dt.Rows[0]["email_user"].ToString();
            perfil.Text ="Perfil: "+ dt.Rows[0]["nom_perfil"].ToString();
            area1.Text = dt.Rows[0]["nom_area"].ToString();

            //  DataTable dt3 = controlador.consultarmiembroController(grupo);



        }

    }
}