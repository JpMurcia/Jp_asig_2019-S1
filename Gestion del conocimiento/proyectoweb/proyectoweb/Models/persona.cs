using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models
{
    public class persona
    {
        private Conexion conect = new Conexion();
        public string id_perso { get; set; }
 
        public string nom_perso { get; set; }
     
        public string cc_perso { get; set; }

        public string fecha_naci { get; set; }
    }
}