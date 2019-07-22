using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models
{
    public class funciones
    {
        private Conexion conect = new Conexion();
        

        public string id_funcion { get; set; }
      
        public string nom_funcion { get; set; }
    }
}