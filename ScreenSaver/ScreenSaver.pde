
Lines[] myLines= new Lines[10];
void setup() {
  size(500, 500);
  background(255); 
  for (int i=0; i<myLines.length; i++) {
    myLines[i]=new Lines(random(width), random(height), random(1, 5), random(1, 20));
  }


}

void draw() {
  for (int i=0; i<myLines.length; i++) {
    Lines iLines=myLines[i];
    iLines.display();
 
  }
}
