//using proyectoweb.Controllers;
using proyectoweb.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;


namespace proyectoweb.Views
{
    public partial class Buscador : System.Web.UI.Page
    {
        //Grupo_inve_semillero grupo = new Grupo_inve_semillero();
        // permisoController controlador = new permisoController();

        // area area = new area();

      
       
        DataTable dt;
        DataTable dt2;
        object json;
        JsonLD Jason = new JsonLD();
        area area = new area();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               

            }
            else
            {

            }
            area.id_area = Session["area"].ToString();
            dt = area.cosul_solicitud_corta(area);
            dt2 = area.consul_solicitu_LD(area);


            Jason = Jason.crearJson(dt2);
     
            json = Jason;
            json = JsonConvert.SerializeObject(json);
           

            RepeaterMiembro.DataSource = dt;
            RepeaterMiembro.DataBind();

        }
       
        
    }
}