class Button {
  // member variables
  int x, y, w, h, v;
  String op, a;
  color c;
  boolean hov, num;
  //multiple constructor
  Button(int x, int y, int w, int h, color c, String a, boolean num) {
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    this.c=c;
    this.a=a;
    this.num=num;
    
    hov= false;
  }
  Button asNumber(int v){
    this.v=v;
    num=true;
    return this;
  }
  Button asOperation(String op){
    this.op=op;
    num=false;
    return this;
  }
  


  //display method
  void display() {
     if (hov){
      fill(170);
    }else{
      fill(c);
    }
    rectMode(CENTER);
    
    rect(x, y, w, h);
    fill(0);
    textAlign(CENTER, CENTER);
    text(a, x, y);
   
  }
  


  //hover method
  void hover(){
  hov= mouseX>x-w/2 && mouseX<x+w/2 && mouseY>y-h/2 && mouseY<y+h/2;
  }
}
