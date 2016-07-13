

Frequency left; // frecuencia para el canal izquierdo
Frequency right; // frecuencia para el canal derecho
int xl=0;
int xr=0;
int tl=1;
int tr=1;
ArrayList<Musicbar> mbleft;
ArrayList<Musicbar> mbright;
PFont font;




void setup() {
  size(225, 400);
  left = new Frequency(3, -13);
  right = new Frequency(9, -14);
  background(0);
  mbleft=new ArrayList<Musicbar>();
  mbright=new ArrayList<Musicbar>();
  font=createFont("Trebuchet MS", 25);
}

void draw() {
  background(0);
  System.out.println(left.getPeriod()+" "+right.getPeriod());
  if (millis()/left.getPeriod()>tl) {
    tl++;
    mbleft.add(new Musicbar(1, left.getPeriod()));
  }

  if (millis()/right.getPeriod()>tr) {
    tr++;
    mbright.add(new Musicbar(2, right.getPeriod()));
  }


  fill(0, 150, 0);
  rect(0, 13*height/16, width/2, 0.5*height/16);
  fill(150, 0, 150);
  rect(width/2, 13*height/16, width/2, 0.5*height/16);

  if (mbleft.size()>=1) {
    for (int i=0; i<mbleft.size(); i++) {
      Musicbar mb=mbleft.get(i);
      mb.updateHeight();
      mb.drawBar();
      if (mb.hasReachedEnd()==true) {
        mbleft.remove(i);
        i--;
      }
    }
  }

  if (mbright.size()>=1) {
    for (int i=0; i<mbright.size(); i++) {
      Musicbar mb=mbright.get(i);
      mb.updateHeight();
      mb.drawBar();
      if (mb.hasReachedEnd()==true) {
        mbright.remove(i);
        i--;
      }
    }
  }

  fill(128);
  stroke(255);
  line(width/2, 0, width/2, height);
  rect(0, 0, width, height/8);
  fill(0, 100, 0);
  rect(0, 14*height/16, width/2, 2*height/16);
  fill(100, 0, 100);
  rect(width/2, 14*height/16, width/2, 2*height/16);

  textAlign(CENTER);
  fill(255);
  textFont(font);
  text(notesText(left.getNote())+int(left.getOctave()), width/4, 15.4*height/16);
  text(notesText(right.getNote())+int(right.getOctave()), 3*width/4, 15.4*height/16);
}

String notesText(float n) {
  String nt="";
  switch(int(n)) {
  case 1:
    nt="Do";
    break;
  case 2:
    nt="Do#";
    break;
  case 3:
    nt="Re";
    break;
  case 4:
    nt="Re#";
    break;
  case 5:
    nt="Mi";
    break;
  case 6:
    nt="Fa";
    break;
  case 7:
    nt="Fa#";
    break;
  case 8:
    nt="Sol";
    break;
  case 9:
    nt="Sol#";
    break;
  case 10:
    nt="La";
    break;
  case 11:
    nt="La#";
    break;
  case 12:
    nt="Si";
    break;
  }
  return nt;
}