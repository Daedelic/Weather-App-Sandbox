
// Global Variables

void setup() {
  size(500, 600);
  buildingURL();
  APICall();
  unwrapToVariables();
   GUI_Setup();
   textSetup();
  println(nameEdmonton);  
  println(nameBerlin);
  println(nameMoscow);
  println(apiCurrentDateCall); 
}

void draw() {
   GUI_Setup();
  textDraw();
}

void mousePressed() {
  APICall();
  unwrapToVariables();
  println(apiCurrentDateCall); //Verify API Call is changing with mousePressed()
}

void keyPressed() {
}
