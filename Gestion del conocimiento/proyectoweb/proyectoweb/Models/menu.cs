using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models
{
    public class menu
    {
        private Conexion conect = new Conexion();
        public string id_menu { get; set; }

    
        public string nom_menu { get; set; }

      
        public string url_menu { get; set; }

      
        public string icono_menu { get; set; }

        public string fk_perfil { get; set; }



        public DataTable consultar_menu_nom(menu obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "fk_perfil",
                obj.fk_perfil,
                "VARCHAR",
                ParameterDirection.Input
                ));


            return conect.ExecuteProcedure("consul_menu", p);
        }

    }
}