PVector p, q, r;
float t1;
float t2;
float t3;
float t4;
float v;

void setup() {
  size(400, 400);
  t1 = 0;
  t2 = 0;
  t3 = 0;
  t4 = 0;
  p = new PVector(0,0);
  q = new PVector(100,300);
  r = new PVector(400,400);
  v = 0.01;
}

float f(float t) {
return t;
}

void draw() {
 background(0);
 if (t1 <= 1){
 PVector x = PVector.add(PVector.mult(p, f(1-t1)), PVector.mult(q,f(t1)));
 
 ellipse(x.x, x.y, 10,10);
  t1 += v;
 }
  if (t1 > 1 && t2 < 1) {
    PVector y = PVector.add(PVector.mult(q,f(1-t2)),PVector.mult(r,f(t2)));
    
    ellipse(y.x, y.y, 10, 10);
    t2 += v;
  }
  if (t2 > 1 && t3 < 1){
    PVector z = PVector.add(PVector.mult(r,f(1-t3)),PVector.mult(q,(t3)));
    
    ellipse(z.x, z.y, 10, 10);
    t3 += v;
  }
  if (t3 > 1 && t4 < 1){
    PVector y2 = PVector.add(PVector.mult(q,(1-t4)),PVector.mult(p,(t4)));
    
    ellipse(y2.x, y2.y, 10, 10);
    t4 += v;
  }
  if (t4 > 1){
    t1 = 0;
    t2 = 0;
    t3 = 0;
    t4 = 0;
  }
}
