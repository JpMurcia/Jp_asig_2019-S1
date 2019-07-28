using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models
{
    public class area
    {
        private Conexion conect = new Conexion();
        public string id_area { get; set; }
      
        public string nom_area { get; set; }
     
        public string fk_depart { get; set; }


        public DataTable ConsultarMiembroArea(area obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "id_area",
                obj.id_area,
                "VARCHAR",
                ParameterDirection.Input
                ));

         


            return conect.ExecuteProcedure("consul_miembro_area", p);
        }

        public DataTable cosul_solicitud_corta(area obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "nada",
                obj.id_area,
                "VARCHAR",
                ParameterDirection.Input
                ));




            return conect.ExecuteProcedure("cosul_solicitud_corta", p);
        }

        public DataTable consul_solicitu_LD(area obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "nada",
                obj.id_area,
                "VARCHAR",
                ParameterDirection.Input
                ));




            return conect.ExecuteProcedure("consul_solicitu_LD", p);
        }


    }
}