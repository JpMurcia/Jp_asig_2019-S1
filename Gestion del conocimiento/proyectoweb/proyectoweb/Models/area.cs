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
                "email",
                obj.id_area,
                "VARCHAR",
                ParameterDirection.Input
                ));

         


            return conect.ExecuteProcedure("consul_miembro_area", p);
        }


    }
}