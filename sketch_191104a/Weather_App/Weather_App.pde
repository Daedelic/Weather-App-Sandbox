
// Global Variables

void setup() {
  size(500, 600);
  buildingURL();
  APICall();
  unwrapToVariables();
  println(nameEdmonton); //Verify Call is working 
  println(nameBerlin);
  println(nameMoscow);
  println(apiCurrentDateCall); //Verify API Call is changing with mousePressed()
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
