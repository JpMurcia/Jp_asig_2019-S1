using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace proyectoweb.Models
{
    public class JsonLD
    {
   
        public string @contexto { get; set; }
        public string @type { get; set; }
        public mainEntity mainEntity { get; set; }
        public acceptedAnswer acceptedAnswe { get; set; }



        public JsonLD crearJson(DataTable obj) {
            JsonLD data = new JsonLD();
            for (int i = 0; i < obj.Rows.Count; i++) {
                data.@contexto = "https://schema.org";
                data.@type = "QAPage";
                data.mainEntity.type = "Question";
                data.mainEntity.name = obj.Rows[i]["nom_categoria"].ToString();
                data.mainEntity.text = obj.Rows[i]["descrip_solicit"].ToString();
                data.mainEntity.dateCreated = obj.Rows[i]["fecha_inicion"].ToString();
                data.mainEntity.author.@type = "Person";
                data.mainEntity.author.name = obj.Rows[i]["nom_perso"].ToString();
                data.acceptedAnswe.type = "Answer";
                data.acceptedAnswe.dateCreated= obj.Rows[i]["fecha_final"].ToString();
                data.acceptedAnswe.upvoteCount = obj.Rows[i]["calificacion"].ToString();
                data.acceptedAnswe.author.@type = "Person";
                data.acceptedAnswe.author.name = obj.Rows[i]["responsable"].ToString();

            }
            return data;}
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