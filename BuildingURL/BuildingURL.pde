
// Global Variables

void setup() {
  size(500, 600);
  buildingURL();
  APICall();
  unwrapToVariables();
  println(nameEdmonton);  
  println(nameBerlin);
  println(nameMoscow);
  println(apiCurrentDateCall); 
}

void draw() {
}

void mousePressed() {
  APICall();
  unwrapToVariables();
  println(apiCurrentDateCall); //Verify API Call is changing with mousePressed()
}

void keyPressed() {
}
