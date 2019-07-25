using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Data;
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

        public DataTable consul_dato_miembro(persona obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "id_user",
                obj.id_perso,
                "VARCHAR",
                ParameterDirection.Input
                ));

        

            return conect.ExecuteProcedure("consul_dato_miembro", p);
        }

        public DataTable consul_compet_miembro(persona obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "id_user",
                obj.id_perso,
                "VARCHAR",
                ParameterDirection.Input
                ));



            return conect.ExecuteProcedure("consul_compet_miembro", p);
        }
    }
}