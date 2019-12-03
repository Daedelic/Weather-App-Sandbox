  
//Global Variable
String URLCurrentAlberta;
String URLForecastAlberta;
String URLCurrentEdmonton;
String URLForecastEdmonton;
String URLCurrentBerlin;
String URLForecastBerlin;
String URLCurrentLichtenrade;
String URLForecastLichtenrade;

JSONObject jsonCurrentAlberta;
JSONObject jsonForecastAlberta;
JSONObject jsonCurrentEdmonton;
JSONObject jsonForecastEdmonton;
JSONObject jsonCurrentBerlin;
JSONObject jsonForecastBerlin;
JSONObject jsonCurrentLichtenrade;
JSONObject jsonForecastLichtenrade;

void buildingURL() {
  String baseURL_Current = "http://api.openweathermap.org/data/2.5/weather?";
  String baseURL_Forecast = "http://api.openweathermap.org/data/2.5/forecast?";
  String albertaId = "id=5883102"; //City ID Numbers
  String edmontonId = "id=5946768";
  String BerlinId = "id=524901";
  String LichtenradeId = "id=2878044";
  String apiKey = "APPID=06ee4dfaf9a7c9bdf9024604eda99160"; //API Key is PRIVATE so not included here
  String mode = "mode=json";
  String unitMetric = "units=metric";
  String and = "&";

  URLCurrentAlberta = baseURL_Current+albertaId+and+apiKey+and+mode+and+unitMetric;
  URLForecastAlberta = baseURL_Forecast+albertaId+and+apiKey+and+mode+and+unitMetric;
  URLCurrentEdmonton = baseURL_Current+edmontonId+and+apiKey+and+mode+and+unitMetric;
  URLForecastEdmonton = baseURL_Forecast+edmontonId+and+apiKey+and+mode+and+unitMetric;
  URLCurrentBerlin = baseURL_Current+BerlinId+and+apiKey+and+mode+and+unitMetric;
  URLForecastBerlin = baseURL_Forecast+BerlinId+and+apiKey+and+mode+and+unitMetric;
  URLCurrentLichtenrade = baseURL_Current+LichtenradeId+and+apiKey+and+mode+and+unitMetric;
  URLForecastLichtenrade = baseURL_Forecast+LichtenradeId+and+apiKey+and+mode+and+unitMetric;

  //Verification in Console, copy-paste variable output to Chrome and verify data can be seen correctly
  //println(URLCurrentAlberta);
  //println(URLForecastAlberta);
  //println(URLCurrentEdmonton);
  //println(URLForecastEdmonton);
  //println(URLCurrentBerlin);
  //println(URLForecastBerlin);
  //println(URLCurrentLichtenrade);
  //println(URLForecastLichtenrade);
} //End buildingURL()

void APICall() {
  jsonCurrentAlberta = loadJSONObject(URLCurrentAlberta);
  jsonForecastAlberta = loadJSONObject(URLForecastAlberta);
  jsonCurrentEdmonton = loadJSONObject(URLCurrentEdmonton);
  jsonForecastEdmonton = loadJSONObject(URLForecastEdmonton);
  jsonCurrentBerlin = loadJSONObject(URLCurrentBerlin);
  jsonForecastBerlin = loadJSONObject(URLForecastBerlin);
  jsonCurrentLichtenrade = loadJSONObject(URLCurrentLichtenrade);
  jsonForecastLichtenrade = loadJSONObject(URLForecastLichtenrade);
} //End APICall

//Loading JSONObjects with Website API Datate API Data
