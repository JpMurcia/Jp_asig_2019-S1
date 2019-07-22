using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models
{
    public class indicadores
    {
        private Conexion conect = new Conexion();
        public string id_indica { get; set; }

          
        public string nom_indica { get; set; }
      
        public string meta_indica { get; set; }



    }
}