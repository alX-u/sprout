class PerenualApi {
  PerenualApi({required String baseUrl}) : _baseUrl = baseUrl;

  final String _baseUrl;

  //Species
  String get speciesList => '$_baseUrl/species-list';
  //Species Details
  String get speciesDetails => '$_baseUrl/species/details';
  //Plant Disease List
  String get pestDiseaseList => '$_baseUrl/pest-disease-list';
  //Plant Guides
  String get speciesCareGuide => '$_baseUrl/species-care-guide';
  //Plant Hardiness Map
  String get hardinessMap => '$_baseUrl/hardiness-map';
  //Plant FAQ
  String get articleFaqList => '$_baseUrl/article-faq-list';
}
