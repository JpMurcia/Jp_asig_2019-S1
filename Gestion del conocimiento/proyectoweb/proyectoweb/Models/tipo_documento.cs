using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models
{
    public class tipo_documento
    {
        private Conexion conect = new Conexion();
        public string id_tipo_docu { get; set; }

        public string nom_tipo_docu { get; set; }

        public DataTable consul_tipo_docu(tipo_documento obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "nada",
                obj.id_tipo_docu,
                "VARCHAR",
                ParameterDirection.Input
                ));



            return conect.ExecuteProcedure("consul_tipo_docu", p);
        }













    }
}