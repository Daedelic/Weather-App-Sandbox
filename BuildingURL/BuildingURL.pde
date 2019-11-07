//Edmonton 5946768
//Moscow 524901
//Berlin 2590159

String baseURL_Current = "https://api.openweathermap.org?data/2.5/weather?";
String baseURL_forecast = "https://api.openweathermap.org?data/2.5/forecast?";
String albertaId = "58831102";
String edmontonId = "5946768";
String berlinId = "2590159";
String moscowId = "524901";
String apiKey = "APPID=e3a46830f7ca648a3730bce5f5904831";
String mode = "mode=json";
String unitMetric = "units=metric";
String and = "&";

String URLCurrentAlberta =baseURL_Current + albertaId + and + apiKey + and + mode + unitMetric ;
String URLForecastAlberta = baseURL_forecast +albertaId + and + apiKey + and + mode + unitMetric;

String URLCurrentEdmonton = baseURL_Current + edmontonId + and + apiKey + and + mode + unitMetric;
String URLForecastEdmonton = baseURL_forecast + edmontonId + and + apiKey + and + mode + unitMetric;

String URLCurrentBerlin = baseURL_Current + berlinId + and + apiKey + and + mode + unitMetric;
String URLForecastBerlin = baseURL_forecast + berlinId+ and + apiKey + and + mode + unitMetric;

String URLCurrentMoscow = baseURL_Current + moscowId + and + apiKey + and + mode + unitMetric ;
String URLForecastMoscow = baseURL_forecast + moscowId + and + apiKey + and + mode + unitMetric;

//
println (URLCurrentEdmonton );
