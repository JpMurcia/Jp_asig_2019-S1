using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models
{
    public class departamento
    {
        private Conexion conect = new Conexion();
        public string id_departa { get; set; }
   
        public string nom_departa { get; set; }
    }
}