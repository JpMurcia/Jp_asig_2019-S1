using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models
{
    public class person_has_compe
    {
        private Conexion conect = new Conexion();
        public string fk_pers { get; set; }
     
        public string fk_comp { get; set; }
    
        public string fecha_compe { get; set; }
     
        public string nota_compente { get; set; }
      
        public string verificacion { get; set; }
    }
}