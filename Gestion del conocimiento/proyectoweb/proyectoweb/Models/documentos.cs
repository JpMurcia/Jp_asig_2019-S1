using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models
{
    public class documentos
    {
        private Conexion conect = new Conexion();
        public string id_dcum { get; set; }

        public string codigo_docum { get; set; }
      
        public string nom_docum { get; set; }
        public string fk_actividad { get; set; }

        public string fk_tipo_docu { get; set; }

    }
}