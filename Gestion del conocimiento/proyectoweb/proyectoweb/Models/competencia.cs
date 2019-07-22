using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models
{
    public class competencia
    {
        private Conexion conect = new Conexion();
        public string id_compe { get; set; }
        public string nom_compe { get; set; }
        public string descrip_compe { get; set; }



        //public DataTable consultarProyectoDeMiembro(usuario obj)
        //{
        //    List<Parametro> p = new List<Parametro>();
        //    p.Add(new Parametro(
        //        "grupo_perte",
        //        obj.grupo,
        //        "VARCHAR",
        //        ParameterDirection.Input
        //        ));
        //    p.Add(new Parametro(
        //        "id_user",
        //        obj.idUsuario,
        //        "VARCHAR",
        //        ParameterDirection.Input
        //        ));

        //    return conect.ExecuteProcedure("proced_consul_user_proye_grupo", p);


        //}
    }
}