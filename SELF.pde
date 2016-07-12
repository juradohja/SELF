Frequency left; // frecuencia para el canal izquierdo
Frequency right; // frecuencia para el canal derecho
int xl=0;
int xr=0;
int tl=1;
int tr=1;

void setup(){
  size(640,1136);
  left = new Frequency(12,-6);
  right = new Frequency(10, -6);
  background(0);
  frameRate(60);
}

void draw(){
  System.out.println(left.getPeriod()+" "+right.getPeriod());
  if(millis()/left.getPeriod()>tl){
   tl++;
   fill(0,255,0);
   ellipse(100,100+xl,20,20);
   xl=xl+50;
  }
   if(millis()/right.getPeriod()>tr){
   tr++;
   fill(255,0,255);
   ellipse(300,100+xr,20,20);
   xr=xr+50;
  }
} // helpppp
