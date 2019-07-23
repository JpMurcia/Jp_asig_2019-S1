//using proyectoweb.Controllers;
using paginaPropia;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using proyectoweb.Models.Modelo_viewGroup;

namespace proyectoweb.Views.ViewsUser
{
    public partial class Index : System.Web.UI.Page
    {
       // indexController controlador = new indexController();
        //Acciones consulta = new Acciones();

        pagina_propia pag = new pagina_propia();

        protected void Page_Load(object sender, EventArgs e)
        {
            llenar();
        }

        //public DataTable cosultarA()
        //{

        //    return activy.consul_acti(act);
        //}
        

        DataTable dt = new DataTable();
        DataTable dt2 = new DataTable();
        DataTable dt3 = new DataTable();

        public void llenar() {

         //   consulta.obtnerSoportePorID("5c85c662e9d96ca0eea68f7f");


          //  dt = controlador.dato_pag();
         //   dt2 = controlador.dato_view_pag_web();
            dt3 = pag.consul_dato();

            //RepeaterPaginas.DataSource = dt3;
            //RepeaterPaginas.DataBind();


            string hola = "fdsf";
            //
            
        }
    }
}