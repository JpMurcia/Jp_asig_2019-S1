using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models
{
    public class user_udla
    {
        private Conexion conect = new Conexion();
        public string id_user { get; set; }

        public string email_user { get; set; }

        public string contra_user { get; set; }

    
        public string fk_person { get; set; }

        public string fk_pefil { get; set; }

        public DataTable ConsultarUser(user_udla obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "email",
                obj.email_user,
                "VARCHAR",
                ParameterDirection.Input
                ));

            p.Add(new Parametro(
              "contra",
              obj.contra_user,
              "VARCHAR",
              ParameterDirection.Input
              )); 


            return conect.ExecuteProcedure("consul_user", p);
        }
    }
}