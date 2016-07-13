Frequency left; // frecuencia para el canal izquierdo
Frequency right; // frecuencia para el canal derecho
int xl=0;
int xr=0;
int tl=1;
int tr=1;

void setup() {
  size(338, 600);
  left = new Frequency(10, -14);
  right = new Frequency(1, -14);
  background(0);
  frameRate(60);
}

void draw() {
  System.out.println(left.getPeriod()+" "+right.getPeriod());
  if (millis()/left.getPeriod()>tl) {
    tl++;
    fill(0, 255, 0);
    ellipse(100, 100+xl, 20, 20);
    xl=xl+50;
  }
  if (millis()/right.getPeriod()>tr) {
    tr++;
    fill(255, 0, 255);
    ellipse(300, 100+xr, 20, 20);
    xr=xr+50;
  }
  fill(128);
  stroke(255);
  line(width/2,0,width/2,height);
  rect(0,0,width,height/8);
  fill(0,200,0);
  rect(0,14*height/16,width/2,2*height/16);
  fill(200,0,200);
  rect(width/2,14*height/16,width/2,2*height/16);
  fill(150);
  rect(0,13*height/16,width/2,0.5*height/16);
  rect(width/2,13*height/16,width/2,0.5*height/16);
  
} // helpppp