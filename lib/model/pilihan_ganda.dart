import 'jawaban.dart';

class PilihanGanda {
  int no;
  String soal;
  String gambarSoal;
  List<Jawaban> jawaban;
  String jawabanBenar;

  PilihanGanda(this.no, this.soal, this.gambarSoal, this.jawaban, this.jawabanBenar);

  shuffledJawaban() {
    jawaban.shuffle();
    return jawaban;
  }
}