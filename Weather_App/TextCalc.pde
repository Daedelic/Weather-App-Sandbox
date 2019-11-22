  
//Global Variable
PFont titleFont;
//String[] fontList = PFont.list(); //To list all fonts available on system

String title, quit, timeStampAPICall, currentTempEdmonton, currentTempBerlin, currentTempMoscow;
String nameEdm, nameCalg, nameRD;

void textSetup() {
  titleFont = createFont ("Broadway", height);
  //title = ;
  //quit = "X";
  //timeStampAPICall = ;
  //currentTempEdm = ;
  //currentTempBerlin = ;
  //currentTempRD = ;
  //nameEdm = ;
  //nameCalg = ;
  //nameRD = ;

  //printArray(fontList); //For listing all possible fonts to choose, then createFont
}

void textDraw() {
  textAlign(CENTER, TOP);
}

void textCalc() {
}

/*
float fontSize = height;
  fill(ink); //Blue Ink, copied from Color Selector
  textAlign (alignHorizontal, alignVertical); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  //Reference to Text Calculator
  println( string.length() );
  if (string.length() >= 14) { //Number changes depending on geometry ratio (width/height) and font
    fontSize = textCalculator(height, string, rectWidth);
  } else {
    //Catch for string less than 13 characters
    println ("inside catch");
    fontSize = fontSize * 0.08; //Option: build catches for different fonts and characters
  }
  // Might need another catch to make all fonts the same size? How would this algorithm work?
  textFont(font, fontSize); //Change the number until it fits, largest font sizetextFont(titleFont, titleFontSize); //Change the number until it fits, largest font size //titleFontSize
  text(string, rectX, rectY, rectWidth, rectHeight);
  fill(255); //Reset to white for rest of the program
*/

/*
//Exemplar RETURN with Parameters
float textCalculator(float size, String string, float rectWidth) {
  textSize(size); //For textWidth Sizing
  while (textWidth(string) > rectWidth) {
    size = size * 0.99;
    textSize (size);
  }
  return size; //Purpose of Calculator
}
*/
