using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models
{
    public class tipo_documento
    {
        private Conexion conect = new Conexion();
        public string id_tipo_docu { get; set; }

        public string nom_tipo_docu { get; set; }
    }
}