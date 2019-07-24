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

        area area = new area();
        persona per = new persona();
        DataTable dt;
        DataTable dt1;
        protected void Page_Load(object sender, EventArgs e)
        {
            llenar();
        }

        void llenar() {

            //  grupo.nombreGrupo = Session["area"].ToString();
            per.id_perso = Convert.ToString(Request.QueryString["Id"]);
            dt = area.ConsultarMiembroArea(area);

            //  DataTable dt3 = controlador.consultarmiembroController(grupo);

            

        }

    }
}