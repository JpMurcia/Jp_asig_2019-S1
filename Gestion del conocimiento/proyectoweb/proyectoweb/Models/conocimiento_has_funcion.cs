using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models
{
    public class conocimiento_has_funcion
    {
        private Conexion conect = new Conexion();
        public string id_activi { get; set; }
       
        public string fk_funcion { get; set; }
       
        public string fk_comp { get; set; }
       
        public string nivel_acept { get; set; }
    }
}