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
    public partial class permisos1 : System.Web.UI.Page
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
            area.id_area = Session["area"].ToString();
            dt = area.ConsultarMiembroArea(area);

            //  DataTable dt3 = controlador.consultarmiembroController(grupo);


              RepeaterMiembro.DataSource = dt;
            RepeaterMiembro.DataBind();

        }


        protected void Modal_Command1(object sender, CommandEventArgs e)
        {
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "$('#modal-datos').modal('show');", true);



            Response.Redirect("principal.aspx");


            //ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "$('#myModal').modal('show');", true);


            //user1.fk_grupo = Session["id_grupo"].ToString(); ;
            //ViewState["id_user"] = e.CommandArgument.ToString();
            //nom_usaurioMostrar.Text = user.nombre;
            //// user.id = "24";
            //user1.idUsuario = e.CommandArgument.ToString();
            //DataTable dato_user_miemrbo = controlador.consul_data_user(user1);
            //enlace1.id_user = user1.idUsuario.ToString();
            //// object algo = Request.QueryString["iden"].ToString();
            //nombre_miembro.Text = dato_user_miemrbo.Rows[0]["nom_usuario"].ToString();
            //imagen_perfil.Src = dato_user_miemrbo.Rows[0]["url_foto_usuario"].ToString();
            //DataTable dt6 = controlador.consultarProyectoDeMiembroController(user1);
            //InnerRepeater.DataSource = dt6;
            //InnerRepeater.DataBind();

            per.id_perso = e.CommandArgument.ToString();
            dt1 = per.consul_dato_miembro(per);
            //Img1.Src = dt1.Rows[0]["url_foto"].ToString();
            imagen_perfil.Src = dt1.Rows[0]["url_foto"].ToString();

        }

        protected void Unnamed_Command(object sender, CommandEventArgs e)
        {
            
        }

        protected void guardar_Click(object sender, EventArgs e)
        {

        }
    }
}