class Jawaban {
  String abjad;
  String jawabanString;
  bool selected = false;

  Jawaban(this.abjad, this.jawabanString);

  toggleSelected() {
    selected = !selected;
  }
}