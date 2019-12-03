
import java.text.ParseException;  
import java.text.SimpleDateFormat;  
import java.util.Date;  //Date Conversation, UNIX Time Stamp from Jan 1, 1970
import java.util.Locale;  

//Global Variables
String mainWeatherEdmonton, descriptionEdmonton, iconEdmonton, countryEdmonton, nameEdmonton;
float tempEdmonton, tempMinEdmonton, tempMaxEdmonton;
int sunriseEdmonton, sunsetEdmonton;
Date apiCurrentDateCall;

String mainWeatherBerlin, descriptionBerlin, iconBerlin, countryBerlin, nameBerlin;
float tempBerlin, tempMinBerlin, tempMaxBerlin;
int apiCallTimeBerlin, sunriseBerlin, sunsetBerlin;

String mainWeatherLichtenrade, descriptionLichtenrade, iconLichtenrade, countryLichtenrade, nameLichtenrade;
float tempLichtenrade, tempMinLichtenrade, tempMaxLichtenrade;
int apiCallTimeLichtenrade, sunriseLichtenrade, sunsetLichtenrade;

void unwrapToVariables() {
  currentEdmonton();
  currentBerlin();
  currentLichtenrade();
}

Date humanDate(long unixTime) {
  Date dateHuman = new Date(unixTime*1000); //convert from milliseconds
  return dateHuman;
}

void currentEdmonton() {
  JSONArray weatherEdmonton = jsonCurrentEdmonton.getJSONArray("weather"); //Unwrapping

  JSONObject allEdmonton = weatherEdmonton.getJSONObject(0); //Unwrap {}
  mainWeatherEdmonton = allEdmonton.getString("main");
  descriptionEdmonton = allEdmonton.getString("description");
  iconEdmonton = allEdmonton.getString("icon");

  JSONObject mainEdmonton = jsonCurrentEdmonton.getJSONObject("main"); //Unwrap {}
  tempEdmonton = mainEdmonton.getFloat("temp");
  tempMinEdmonton = mainEdmonton.getFloat("temp_min");
  tempMaxEdmonton = mainEdmonton.getFloat("temp_max");

  long apiCallTimeEdmonton = jsonCurrentEdmonton.getInt("dt"); //int not enough memory, needs long (float & double)
  apiCurrentDateCall = humanDate(apiCallTimeEdmonton);

  JSONObject sysEdmonton = jsonCurrentEdmonton.getJSONObject("sys"); //Unwrap {}
  countryEdmonton = sysEdmonton.getString("country");
  sunriseEdmonton = sysEdmonton.getInt("sunrise");
  sunsetEdmonton = sysEdmonton.getInt("sunset");

  nameEdmonton = jsonCurrentEdmonton.getString("name");
}

void currentBerlin() {
  JSONArray weatherBerlin = jsonCurrentBerlin.getJSONArray("weather"); //Unwrapping

  JSONObject allBerlin = weatherBerlin.getJSONObject(0); //Unwrap {}
  mainWeatherBerlin = allBerlin.getString("main");
  descriptionBerlin = allBerlin.getString("description");
  iconBerlin = allBerlin.getString("icon");

  JSONObject mainBerlin = jsonCurrentBerlin.getJSONObject("main"); //Unwrap {}
  tempBerlin = mainBerlin.getFloat("temp");
  tempMinBerlin = mainBerlin.getFloat("temp_min");
  tempMaxBerlin = mainBerlin.getFloat("temp_max");

  apiCallTimeBerlin = jsonCurrentBerlin.getInt("dt");

  JSONObject sysBerlin = jsonCurrentBerlin.getJSONObject("sys"); //Unwrap {}
  countryBerlin = sysBerlin.getString("country");
  sunriseBerlin = sysBerlin.getInt("sunrise");
  sunsetBerlin = sysBerlin.getInt("sunset");

  nameBerlin = jsonCurrentBerlin.getString("name");
}

void currentLichtenrade() {
  JSONArray weatherLichtenrade = jsonCurrentLichtenrade.getJSONArray("weather"); //Unwrapping

  JSONObject allLichtenrade = weatherLichtenrade.getJSONObject(0); //Unwrap {}
  mainWeatherLichtenrade = allLichtenrade.getString("main");
  descriptionLichtenrade = allLichtenrade.getString("description");
  iconLichtenrade = allLichtenrade.getString("icon");

  JSONObject mainLichtenrade = jsonCurrentLichtenrade.getJSONObject("main"); //Unwrap {}
  tempLichtenrade = mainLichtenrade.getFloat("temp");
  tempMinLichtenrade = mainLichtenrade.getFloat("temp_min");
  tempMaxLichtenrade = mainLichtenrade.getFloat("temp_max");

  apiCallTimeLichtenrade = jsonCurrentLichtenrade.getInt("dt");

  JSONObject sysLichtenrade = jsonCurrentLichtenrade.getJSONObject("sys"); //Unwrap {}
  countryLichtenrade = sysLichtenrade.getString("country");
  sunriseLichtenrade = sysLichtenrade.getInt("sunrise");
  sunsetLichtenrade = sysLichtenrade.getInt("sunset");

  nameLichtenrade = jsonCurrentLichtenrade.getString("name");
}
