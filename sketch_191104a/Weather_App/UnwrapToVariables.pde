//UnwrapToVariables
/* Code to Copy, use println() to verify
 
 Note: use APICall() Variables here, for example jsonCurrentEdmonton
 Caution: variables should be a mix of global and local variables
 
 JSONArray weather = jsonObject-Variable.getJSONArray("weather"); //Unwrapping
 
 JSONObject all = weather.getJSONObject(0); //Unwrap {}
 String mainWeather = all.getString("main");
 String description = all.getString("description");
 String icon = all.getString("icon");
 
 JSONObject main = jsonObject-Variable.getJSONObject("main"); //Unwrap {}
 float temp = main.getFloat("temp");
 float tempMin = main.getFloat("temp_min");
 float tempMax = main.getFloat("temp_max");
 
 int apiCallTime = jsonObject-Variable.getInt("dt");
 
 JSONObject sys = jsonObject-Variable.getJSONObject("sys"); //Unwrap {}
 String country = sys.getString("country");
 int sunrise = sys.getInt("sunrise");
 int sunset = sys.getInt("sunset");
 
 String name = jsonObject-Variable.getString("name");
 
 */

import java.util.Date; //Date Conversation, UNIX Time Stamp from Jan 1, 1970

//Global Variables
String mainWeatherEdmonton, descriptionEdmonton, iconEdmonton, countryEdmonton, nameEdmonton;
float tempEdmonton, tempMinEdmonton, tempMaxEdmonton;
int sunriseEdmonton, sunsetEdmonton;
Date apiCurrentDateCall;

String mainWeatherBerlin, descriptionBerlin, iconBerlin, countryBerlin, nameBerlin;
float tempBerlin, tempMinBerlin, tempMaxBerlin;
int apiCallTimeBerlin, sunriseBerlin, sunsetBerlin;

String mainWeatherMoscow, descriptionMoscow, iconMoscow, countryMoscow, nameMoscow;
float tempMoscow, tempMinMoscow, tempMaxMoscow;
int apiCallTimeMoscow, sunriseMoscow, sunsetMoscow;

void unwrapToVariables() {
  currentEdmonton();
  currentBerlin();
  currentMoscow();
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

void currentMoscow() {
  JSONArray weatherMoscow = jsonCurrentMoscow.getJSONArray("weather"); //Unwrapping

  JSONObject allMoscow = weatherMoscow.getJSONObject(0); //Unwrap {}
  mainWeatherMoscow = allMoscow.getString("main");
  descriptionMoscow = allMoscow.getString("description");
  iconMoscow = allMoscow.getString("icon");

  JSONObject mainMoscow = jsonCurrentMoscow.getJSONObject("main"); //Unwrap {}
  tempMoscow = mainMoscow.getFloat("temp");
  tempMinMoscow = mainMoscow.getFloat("temp_min");
  tempMaxMoscow = mainMoscow.getFloat("temp_max");

  apiCallTimeMoscow = jsonCurrentMoscow.getInt("dt");

  JSONObject sysMoscow = jsonCurrentMoscow.getJSONObject("sys"); //Unwrap {}
  countryMoscow = sysMoscow.getString("country");
  sunriseMoscow = sysMoscow.getInt("sunrise");
  sunsetMoscow = sysMoscow.getInt("sunset");

  nameMoscow = jsonCurrentMoscow.getString("name");
}
