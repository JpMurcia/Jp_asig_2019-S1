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

namespace proyectoweb.Views
{
    public partial class Documento : System.Web.UI.Page
    {
        //Grupo_inve_semillero grupo = new Grupo_inve_semillero();
        // permisoController controlador = new permisoController();

        // area area = new area();
        actividad activi = new actividad();
        DataTable dt;
        DataTable dt1;
        tipo_documento tipo_doc = new tipo_documento();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Files["FileUpload"] != null)
                {
                    HttpPostedFile MyFile = Request.Files["FileUpload"];

                    try
                    {

                    }
                    catch (Exception BlueScreen)
                    {

                    }

                }
                llenar();
            }
            else {

            }




              
        }
        string filename;
        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (FileUpload.HasFile)
            {
                try
                {
                    filename = Path.GetFileName(FileUpload.FileName);

                    FileUpload.SaveAs(Server.MapPath("~/Soporte/") + filename);

                }
                catch (Exception ex)
                {
                }
            }
        }

        public void llenar() {
            tipo_doc.id_tipo_docu = "1";
            activi.id_activi = "1";

            dt = tipo_doc.consul_tipo_docu(tipo_doc);
            dt1 = activi.consul_actividad(activi);

            DDL_tipos_d.DataValueField = "id_tipo_docu";
            DDL_tipos_d.DataTextField = "nom_tipo_docu";
            DDL_tipos_d.DataSource = dt;
            DDL_tipos_d.DataBind();
            DDL_tipos_d.SelectedIndex = 0;


            DDL_activi.DataValueField = "id_activi";
            DDL_activi.DataTextField = "nom_activi";
            DDL_activi.DataSource = dt1;
            DDL_activi.DataBind();
            DDL_activi.SelectedIndex = 0;


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (FileUpload.HasFile)
            {
                ViewState["Ruta"] = "~/Content/Soporte/" + System.IO.Path.GetFileName(FileUpload.FileName);
                FileUpload.SaveAs(Server.MapPath(ViewState["Ruta"].ToString()));
               // notici.urlImage = ViewState["Ruta"].ToString();

            }
         
        }

    




    }
}