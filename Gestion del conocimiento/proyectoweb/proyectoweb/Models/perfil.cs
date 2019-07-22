using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace proyectoweb.Models
{
    public class perfil
    {



        private Conexion conect = new Conexion();
        public string id_perfil { get; set; }
       
        public string nom_perfil { get; set; }
    }
}