Button[] numbtn = new Button[10];
Button[] optbtn = new Button[13];
String value, lVal, rVal;
char opVal;
float result;
Boolean firstNum, dec;





void setup() {
  size(400, 500);
  background(#6A00FF); 
  numbtn[0]= new Button(130, 470, 50, 50, color(#D5E8D4), "0", true).asNumber(0);
  numbtn[1]= new Button(30, 260, 50, 50, color(#D5E8D4), "1", true).asNumber(1);
  numbtn[2]= new Button(130, 260, 50, 50, color(#D5E8D4), "2", true).asNumber(2);
  numbtn[3]= new Button(230, 260, 50, 50, color(#D5E8D4), "3", true).asNumber(3);
  numbtn[4]= new Button(30, 330, 50, 50, color(#D5E8D4), "4", true).asNumber(4);
  numbtn[5]= new Button(130, 330, 50, 50, color(#D5E8D4), "5", true).asNumber(5);
  numbtn[6]= new Button(230, 330, 50, 50, color(#D5E8D4), "6", true).asNumber(6);
  numbtn[7]= new Button(30, 400, 50, 50, color(#D5E8D4), "7", true).asNumber(7);
  numbtn[8]= new Button(130, 400, 50, 50, color(#D5E8D4), "8", true).asNumber(8);
  numbtn[9]= new Button(230, 400, 50, 50, color(#D5E8D4), "9", true).asNumber(9);
  optbtn[1]= new Button(230, 470, 50, 50, color(#D5E8D4), ".", true).asOperation(".");
  optbtn[2]= new Button(30, 470, 50, 50, color(#D5E8D4), "", false).asOperation("");
  optbtn[12]= new Button(350, 450, 40, 40, color(#FFF2CC), "CLR", false).asOperation("CLR");
  optbtn[3]= new Button(350, 400, 40, 40, color(#FFF2CC), "=", false).asOperation("=");
  optbtn[4]= new Button(350, 350, 40, 40, color(#FFF2CC), "+", false).asOperation("+");
  optbtn[5]= new Button(350, 300, 40, 40, color(#FFF2CC), "-", false).asOperation("-");
  optbtn[6]= new Button(350, 250, 40, 40, color(#FFF2CC), "X", false).asOperation("X");
  optbtn[7]= new Button(350, 200, 40, 40, color(#FFF2CC), "/", false).asOperation("/");
  optbtn[8]= new Button(350, 150, 40, 40, color(#FFF2CC), "+-", false).asOperation("+-");
  optbtn[9]= new Button(230, 150, 40, 40, color(#FFF2CC), "%", false).asOperation("%");
  optbtn[10]= new Button(130, 150, 40, 40, color(#FFF2CC), "Sq", false).asOperation("Sq");
  optbtn[11]= new Button(30, 150, 40, 40, color(#FFF2CC), "", false).asOperation("");
  value="";
  lVal="";
  rVal="";
  opVal= ' ';
  result = 0.0;
  firstNum=true;
  dec=false;
}
void draw() {
  background(#6A00FF);


  for (int i=0; i<numbtn.length; i++) {
    numbtn[i].hover();
    numbtn[i].display();
  }
  for (int i=1; i<optbtn.length; i++) {
    optbtn[i].hover();
    optbtn[i].display();
  }
  updateDisplay();
}

void updateDisplay() {
  fill(#D5E8D4);
  stroke(3);
  rect(180, 70, 340, 60);
  fill(0);
  textAlign(LEFT);
  text(value, 60, 70);
}
//text(value,60,70);

void mouseReleased() {
  for (int i=0; i<numbtn.length; i++) {
    if (numbtn[i].hov) {
      if (firstNum) {
        lVal+=numbtn[i].v;
        value=lVal;
      } else {
        rVal+=numbtn[i].v;
        value=rVal;
      }
    }
  }
  for (int i=1; i<optbtn.length; i++) {
    if (optbtn[i].hov) {
      if (optbtn[i].op=="+") {
        opVal='+';
        firstNum=false;
        dec=false;
      } else if (optbtn[i].op=="-") {
        opVal='-';
        firstNum=false;
        dec=false;
      } else if (optbtn[i].op=="X") {
        opVal='*';
        firstNum=false;
        dec=false;
      } else if(optbtn[i].op=="Sq"){
        opVal='s';
        firstNum=false;
        dec=false;
      } else if (optbtn[i].op=="+-") {
        if (firstNum) {
          lVal=str(float(lVal)*-1);
          value=lVal;
        } else { 
          rVal=str(float(rVal)*-1);
          value=rVal;
        }
      } else if ( optbtn[i].op=="%") {
        if (firstNum) {
          lVal=str(float(lVal)/100);
          value=lVal;
          dec=false;
        } else {
          rVal=str(float(rVal)/100);
          value=rVal;
          dec=false;
        }
      } else if (optbtn[i].op=="/") {
        opVal='/';
        firstNum=false;
        dec=false;
      } else if (optbtn[i].op=="CLR") {
        value="";
        lVal="";
        rVal="";
        opVal= ' ';
        result = 0.0;
        firstNum=true;
        dec=false;
      } else if (optbtn[1].op==".") {
        if (!dec) {
          if (firstNum) {
            lVal+= optbtn[1].op;
            value=lVal;
            dec=true;
          } else {
            rVal+=optbtn[1].op;
            value=rVal;
            dec=true;
          }
        } else {
          if (optbtn[i].op=="=") {
            performCalc();
          }
        }
      }
    }
  }
}

void performCalc() {
  if (opVal=='+') {
    result=float(lVal)+float(rVal);
    value=str(result);
    
  } else if (opVal=='-') {
    result= float(lVal)-float(rVal);
    value=str(result);
    
  } else if (opVal=='*') {
    result= float(lVal)*float(rVal);
    value=str(result);
    
  } else if (opVal=='/') {
    result= float(lVal)*float(rVal);
    value=str(result);
   
  } else if (opVal=='s'){
    result= float(lVal)*float(lVal);
    value=str(result);
    
  }else{ 
    result= float(rVal)*float(rVal);
    value=str(result);
   
  }
  firstNum=true;
  rVal="";
  lVal=str(result);
}
void keyPressed() {
  if (firstNum) {
    if (key== '1') {
      handleKeyPress(true, "1");
    } else if (key=='2') {
      handleKeyPress(true, "2");
    } else if (key=='3') {
      handleKeyPress(true, "3");
    } else if (key=='4') {
      handleKeyPress(true, "4");
    } else if (key=='5') {
      handleKeyPress(true, "5");
    } else if (key=='6') {
      handleKeyPress(true, "6");
    } else if (key=='7') {
      handleKeyPress(true, "7");
    } else if (key=='8') {
      handleKeyPress(true, "8");
    } else if (key=='9') {
      handleKeyPress(true, "9");
    }
  } else {
    if (key== '1') {
      handleKeyPress(false, "1");
    } else if (key=='2') {
      handleKeyPress(false, "2");
    } else if (key=='3') {
      handleKeyPress(false, "3");
    } else if (key=='4') {
      handleKeyPress(false, "4");
    } else if (key=='5') {
      handleKeyPress(false, "5");
    } else if (key=='6') {
      handleKeyPress(false, "6");
    } else if (key=='7') {
      handleKeyPress(false, "7");
    } else if (key=='8') {
      handleKeyPress(false, "8");
    } else if (key=='9') {
      handleKeyPress(false, "9");
    }
  }
  if (key=='+') {
    opVal='+';
    firstNum=false;
    dec=false;
  } else if (key=='-') {
    opVal='-';
    firstNum=false;
    dec=false;
  } else if (key=='X') {
    opVal='*';
    firstNum=false;
    dec=false;
  } else if (keyCode==ENTER) {
    performCalc();
  }
}
void handleKeyPress(boolean num, String val) {
  if (num) {
    lVal+=val;
    value=lVal;
  } else {
    rVal+= val;
    value=rVal;
  }
}
