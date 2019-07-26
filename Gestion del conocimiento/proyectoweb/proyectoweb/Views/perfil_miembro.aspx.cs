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
        person_has_compe enlace1= new person_has_compe();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                llenar();
            }
            else {

            }




              
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
            InnerRepeater.DataSource = dt1;
            InnerRepeater.DataBind();

            
        }


        protected void Button_Miembro(object sender, EventArgs e)
        {

            for (int i = 0; i < InnerRepeater.Items.Count; i++)
            {
                // InnerRepeater.Items[i].FindControl("estado") identificador
                // string id = ()InnerRepeater.Items[i].FindControl("estado");
                HiddenField hf1 = (HiddenField)InnerRepeater.Items[i].FindControl("HiddenField1");//identificador 
              //  HiddenField hf2 = (HiddenField)InnerRepeater.Items[i].FindControl("tipo");
                CheckBox chk = (CheckBox)InnerRepeater.Items[i].FindControl("estado");
                enlace1.fk_pers = Convert.ToString(Request.QueryString["Id"]);
                enlace1.fk_comp = hf1.Value.ToString();
                enlace1.verificacion = chk.Checked.ToString();
                TextBox notaText= (TextBox)InnerRepeater.Items[i].FindControl("nota");
                enlace1.nota_compente = notaText.Text.ToString();
                DataTable update = enlace1.update_compet_miembro(enlace1);
                
                //enlace1.tipo = hf2.Value.ToString();
                //enlace1.identificador = hf1.Value.ToString();
                //enlace1.estado = chk.Checked.ToString();
                //enlace1.id_user = ViewState["id_user"].ToString();
                string hola1 = "dd";
                //DataTable hola = controlador.update_enlace(enlace1);
            }
            
        }


    }
}