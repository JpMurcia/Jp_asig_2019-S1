using proyectoweb.Models.conexion;
using System;
using System.Collections.Generic;
using System.Data;
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


        public DataTable update_compet_miembro(person_has_compe obj)
        {
            List<Parametro> p = new List<Parametro>();
            p.Add(new Parametro(
                "id_user",
                obj.fk_pers,
                "VARCHAR",
                ParameterDirection.Input
                ));

            p.Add(new Parametro(
                "id_compe",
                obj.fk_comp,
                "VARCHAR",
                ParameterDirection.Input
                ));

            p.Add(new Parametro(
                "nota_actua",
                obj.nota_compente,
                "VARCHAR",
                ParameterDirection.Input
                ));

            p.Add(new Parametro(
                "estado",
                obj.verificacion,
                "VARCHAR",
                ParameterDirection.Input
                ));



            return conect.ExecuteProcedure("update_compet_miembro", p);
        }



    }
}