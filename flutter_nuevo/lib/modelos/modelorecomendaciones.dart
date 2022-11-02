class ModeloRecomendaciones {
  String name;
  String image;
  String datos;

  ModeloRecomendaciones(this.name, this.datos, this.image);
}

List<ModeloRecomendaciones> recomendaciones= recomendacionesData
    .map((item) => ModeloRecomendaciones(item['name']!, item['datos']!, item['image']!))
    .toList();

var recomendacionesData = [
  {
    "name": "Caño Cristales, Meta",
    "datos": "Informacion general: Río de Colombia\nTemperatura: 21º a 31º",
    "image":"https://www.nationalgeographic.com.es/medio/2014/09/16/ogrunewald_cano_cristales_24_1800x1201.jpg"
  },
    {
    "name": "Parque Tayrona, Magdalena",
    "datos": "Informacion general: Parque Natural\nTemperatura: 22º a 31º",
    "image":"https://www.parquesnacionales.gov.co/portal/wp-content/uploads/2022/01/whatsapp-image-2022-01-31-at-5-39-03-pm-1.jpeg"
  }
];
