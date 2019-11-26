//Edmonton 5946768
//Moscow 524901
//Berlin 2590159
  
//Global Variable
String URLCurrentAlberta;
String URLForecastAlberta;
String URLCurrentEdmonton;
String URLForecastEdmonton;
String URLCurrentBerlin;
String URLForecastBerlin;
String URLCurrentMoscow;
String URLForecastMoscow;

JSONObject jsonCurrentAlberta;
JSONObject jsonForecastAlberta;
JSONObject jsonCurrentEdmonton;
JSONObject jsonForecastEdmonton;
JSONObject jsonCurrentBerlin;
JSONObject jsonForecastBerlin;
JSONObject jsonCurrentMoscow;
JSONObject jsonForecastMoscow;

void buildingURL() {
  String baseURL_Current = "http://api.openweathermap.org/data/2.5/weather?";
  String baseURL_Forecast = "http://api.openweathermap.org/data/2.5/forecast?";
  String albertaId = "id=5883102"; //City ID Numbers
  String edmontonId = "id=5946768";
  String berlinId = "id=5913490";
  String moscowId = "id=6118158";
  String apiKey = "APPID=e3a46830f7ca648a3730bce5f5904831"; 
  String mode = "mode=json";
  String unitMetric = "units=metric";
  String and = "&";

  URLCurrentAlberta = baseURL_Current+albertaId+and+apiKey+and+mode+and+unitMetric;
  URLForecastAlberta = baseURL_Forecast+albertaId+and+apiKey+and+mode+and+unitMetric;
  URLCurrentEdmonton = baseURL_Current+edmontonId+and+apiKey+and+mode+and+unitMetric;
  URLForecastEdmonton = baseURL_Forecast+edmontonId+and+apiKey+and+mode+and+unitMetric;
  URLCurrentBerlin = baseURL_Current+berlinId+and+apiKey+and+mode+and+unitMetric;
  URLForecastBerlin = baseURL_Forecast+berlinId+and+apiKey+and+mode+and+unitMetric;
  URLCurrentMoscow = baseURL_Current+moscowId+and+apiKey+and+mode+and+unitMetric;
  URLForecastMoscow = baseURL_Forecast+moscowId+and+apiKey+and+mode+and+unitMetric;


  //println(URLCurrentAlberta);
  //println(URLForecastAlberta);
  //println(URLCurrentEdmonton);
  //println(URLForecastEdmonton);
  //println(URLCurrentBerlin);
  //println(URLForecastBerlin);
  //println(URLCurrentMoscow);
  //println(URLForecastMoscow);
} //End buildingURL()

void APICall() {
  jsonCurrentAlberta = loadJSONObject(URLCurrentAlberta);
  jsonForecastAlberta = loadJSONObject(URLForecastAlberta);
  jsonCurrentEdmonton = loadJSONObject(URLCurrentEdmonton);
  jsonForecastEdmonton = loadJSONObject(URLForecastEdmonton);
  jsonCurrentBerlin = loadJSONObject(URLCurrentBerlin);
  jsonForecastBerlin = loadJSONObject(URLForecastBerlin);
  jsonCurrentMoscow = loadJSONObject(URLCurrentMoscow);
  jsonForecastMoscow = loadJSONObject(URLForecastMoscow);
} //End APICall

//Loading JSONObjects with Website API Data
