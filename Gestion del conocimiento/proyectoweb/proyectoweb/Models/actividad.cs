﻿using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models
{
    public class actividad
    {
        private Conexion conect = new Conexion();
        public string id_activi { get; set; }
        public string nom_activi { get; set; }
        public string descrip_activi { get; set; }

        public string url_inforgrama { get; set; }

        public string url_ova { get; set; }

 

        public DataTable consul_actividad(actividad obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "nada",
                obj.id_activi,
                "VARCHAR",
                ParameterDirection.Input
                ));



            return conect.ExecuteProcedure("consul_actividad", p);
        }

    }
}