
// Open Weather Map App
// Global Variables
String edmTemp, berTemp, lichTemp;

void setup() {
  buildingURL();
  APICall();
  unwrapToVariables();
  size(500, 600); //Add Screen Size Checker
  // Add fullScreen() option, with Display Size Checker
  GUI_Setup();

  println("Start of Console");
  textSetup();

  textDraw(title, titleFont, height, #2C08FF, CENTER, CENTER, titleX, titleY, titleRectWidth, titleRectHeight); //Title
  textDraw(quit, titleFont, height, #2C08FF, CENTER, CENTER, quitX, quitY, quitRectWidth, quitRectHeight); //Quit Button
  //String strDate = Date.format(apiCurrentDateCall);
  SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy"); 
  formatter = new SimpleDateFormat("E, dd MMM yyyy HH:mm:ss z");  
  String strDate = formatter.format(apiCurrentDateCall);
  textDraw(strDate, titleFont, height, #2C08FF, LEFT, CENTER, currentAPIX, currentAPIY, currentAPIRectWidth, currentAPIRectHeight); //Time Stamp
  println("in");
  textDraw(nameEdm, titleFont, height, #2C08FF, LEFT, CENTER, apiCallX1, apiCallY1, apiCallRectWidth1, apiCallRectHeight1); //Edmonton
  println(nameEdm);
  textDraw(nameBer, titleFont, height, #2C08FF, LEFT, CENTER, apiCallX2, apiCallY2, apiCallRectWidth2, apiCallRectHeight2); //Berlin
  textDraw(nameLich, titleFont, height, #2C08FF, LEFT, CENTER, apiCallX3, apiCallY3, apiCallRectWidth3, apiCallRectHeight3); //Lichtenrade
}

void draw() {
  // City Call, see procedure using Boolean & Button
  // Choice of Three Cities: Edmonton, Berlin, Lichtenrade
}

void mousePressed() {
  APICall();
  unwrapToVariables();
  println(apiCurrentDateCall);
  // City Call, see procedure using Boolean & Button
  //
  
  if ( mouseX>apiCallX1 && mouseX<apiCallX1+apiCallRectWidth1 && mouseY>apiCallY1 && mouseY<apiCallY1+apiCallRectHeight1 ) {
    edmTemp = String.valueOf(tempEdmonton);
    rect(currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight);
    textDraw(edmTemp, titleFont, height, #2C08FF, CENTER, CENTER, currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight); //Edmonton
    println(tempEdmonton, edmTemp);
  }
  //
  if (mouseX>apiCallX2 && mouseX<apiCallX2+apiCallRectWidth2 && mouseY>apiCallY2 && mouseY<apiCallY2+apiCallRectHeight2) {
    berTemp = String.valueOf(tempBerlin);
    rect(currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight);
    textDraw(berTemp, titleFont, height, #2C08FF, CENTER, CENTER, currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight); //Berlin
    println(tempBerlin, berTemp);
  }
  //
  
  if (mouseX>apiCallX3 && mouseX<apiCallX3+apiCallRectWidth3 && mouseY>apiCallY3 && mouseY<apiCallY3+apiCallRectHeight3) {
    lichTemp = String.valueOf(tempLichtenrade);
    rect(currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight);
    textDraw(lichTemp, titleFont, height, #2C08FF, CENTER, CENTER, currentTempX, currentTempY, currentTempRectWidth, currentTempRectHeight); //Berlin
    println(tempLichtenrade, lichTemp);
  }
  
  //
}

void keyPressed() {
}
