
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Newtonsoft.Json;
using System.IO;

namespace proyectoweb.Models
{
    public class JsonLD
    {
   
        public string @context { get; set; }
        public string @type { get; set; }
        public mainEntity mainEntity { get; set; }
        public acceptedAnswer acceptedAnswe { get; set; }



        public JsonLD crearJson(DataTable obj) {
            JsonLD data = new JsonLD();
            mainEntity data2 = new mainEntity();
            author data3 = new author();
            acceptedAnswer data4 = new acceptedAnswer();
            author data5 = new author();
 
            for (int i = 0; i < obj.Rows.Count; i++)
            {
                data.@context = "https://schema.org";
                data.@type = "QAPage";
                data2.type = "Question";
                data2.name = obj.Rows[i]["nom_categoria"].ToString();
                data2.text = obj.Rows[i]["descrip_solicit"].ToString();
                data2.dateCreated = obj.Rows[i]["fecha_inicion"].ToString();
                data3.@type = "Person";
                data3.name = obj.Rows[i]["nom_perso"].ToString();
                data4.type = "Answer";
                data4.dateCreated = obj.Rows[i]["fecha_final"].ToString();
                data4.upvoteCount = obj.Rows[i]["calificacion"].ToString();
                data5.@type = "Person";
                data5.name = obj.Rows[i]["responsable"].ToString();

            }
            data4.author = data5;
            data2.author = data3;
            data.mainEntity = data2;
            data.acceptedAnswe = data4;

            return data;}







    }

    public class Basedatos<T>
    {
        public List<T> valores = new List<T>();
        public string ruta;

        public void guardar() {

            string texto = JsonConvert.SerializeObject(valores);
            File.WriteAllText(ruta,texto);

        }

        public void cargar()
        {
            string archivo = File.ReadAllText(ruta);
            valores = JsonConvert.DeserializeObject<List<T>>(archivo);


        }
        public void Insertar(T nuevo)
        {
            valores.Add(nuevo);
            guardar();
        }


    }





    public class mainEntity {
        public string @type { get; set; }
        public string name { get; set; }
        public string text { get; set; }
        public string dateCreated { get; set; }
        public author author { get; set; }
    }

    public class author {
        public string @type { get; set; }
        public string name { get; set; }
    }

    public class acceptedAnswer {
        public string @type { get; set; }
     //   public string text { get; set; }
        public string dateCreated { get; set; }
        public string upvoteCount { get; set; }
        public author author { get; set; }

    }

    //    "@context": "",
    //"@type": "QAPage",
    //"mainEntity": {
    //  "@type": "Question",
    //  "name": "How many ounces are there in a pound?",
    //  "text": "I have taken up a new interest in baking and keep running across directions in ounces and pounds. I have to translate between them and was wondering how many ounces are in a pound?",
    //  "answerCount": 3,
    //  "upvoteCount": 26,
    //  "dateCreated": "2016-07-23T21:11Z",
    //  "author": {
    //    "@type": "Person",
    //    "name": "New Baking User"
    //  },
    //  "acceptedAnswer": {
    //    "@type": "Answer",
    //    "text": "1 pound (lb) is equal to 16 ounces (oz).",
    //    "dateCreated": "2016-11-02T21:11Z",
    //    "upvoteCount": 1337,
    //    "url": "https://example.com/question1#acceptedAnswer",
    //    "author": {
    //      "@type": "Person",
    //      "name": "SomeUser"
}