class Frequency {
  
  double period; // indica el intervalo de tiempo entre beat y beat
  int note; // valor que representa uno de los doce semitonos existentes
  int octave; // valor que indica la octava de la nota en cuestión
  
  Frequency(int n, int o){
    setNote(n);
    setOctave(o);
    updatePeriod();
  }

  void setNote(int n){
    note=n;
  }

  void setOctave(int o){
    octave=o;
  }

  void updatePeriod(){
    period=1/(440*exp(((octave-4)+((note-10)/12))*log(2))); // fórmula que permite sacar el periodo dada cualquier nota (como valor) y octava
  }

  int getNote(){
    return note;
  }

  int getOctave(){
    return octave;
  }

  double getPeriod(){
    return period;
  }

}