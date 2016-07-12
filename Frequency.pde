class Frequency {

  float period; // indica el intervalo de tiempo entre beat y beat
  float note; // valor que representa uno de los doce semitonos existentes
  float octave; // valor que indica la octava de la nota en cuestión

  Frequency(float n, float o) {
    setNote(n);
    setOctave(o);
    updatePeriod();
  }

  void setNote(float n) {
    note=n;
  }

  void setOctave(float o) {
    octave=o;
  }

  void updatePeriod() {
    period=1/(440*exp(((octave-4)+((note-10)/12))*log(2))); // fórmula que permite sacar el periodo dada cualquier nota (como valor) y octava
  }

  float getNote() {
    return note;
  }

  float getOctave() {
    return octave;
  }

  float getPeriod() {
    return period;
  }
}