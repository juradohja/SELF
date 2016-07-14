class Musicbar {
  int side;
  float period;
  int high;

  Musicbar(int s, float p) {
    side=s;
    period=p;
    high=0;
  }

  void updateHeight() {
    high=high+5;
  }

  void drawBar() {
    if (high<13*height/16) {
      if (side==1) {
        fill(0, 255, 0);
        rect(0, high, width/2, 0.5*height/16);
      } else {
        fill(255, 0, 255);
        rect(width/2, high, width/2, 0.5*height/16);
      }
    } else {
      fill(255);
      if (side==1) {
        rect(0, high, width/2, 0.5*height/16);
      } else {
        rect(width/2, high, width/2, 0.5*height/16);
      }
    }
  }

  boolean hasReachedEnd() {
    if (high>=13*height/16) {
      return true;
    } else {
      return false;
    }
  }
}