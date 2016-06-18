Frequency left; // frecuencia para el canal izquierdo
Frequency right; // frecuencia para el canal derecho

void setup(){
  size(640,1136);
  left = new Frequency(10,-6);
  right = new Frequency(7, -5);
}

void draw(){
  System.out.println(left.getPeriod()+" "+right.getPeriod());
}