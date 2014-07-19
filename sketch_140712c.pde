float x,y,r;
float px,py;
boolean mouseDragging;

void setup() {
  size (500,500);
   x = width /2;
   y = height /2;
   r = 30;
}

void draw(){
  background(255);
  stroke(255, 0 , 0);
  ellipse(x,y,r*2,r*2);
  if (mouseDragging == true) {
    x = mouseX+px;
    y = mouseY+py;
  }
}

void mousePressed(){
  if(mouseX-x <= r && mouseY-y <= r){
    mouseDragging=true;
    px=x-mouseX;
    py=y-mouseY;
  }
}

void mouseReleased(){
  mouseDragging=false;
}
