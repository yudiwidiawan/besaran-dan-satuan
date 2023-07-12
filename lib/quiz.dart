import 'dart:async';

import 'package:flutter/material.dart';

import '../../model/jawaban.dart';
import '../../model/pilihan_ganda.dart';
import '../../widgets/dialog.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Border borderDecoration = const Border(
      top: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid),
      bottom:
          BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid),
      left: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid),
      right:
          BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid));

  TextStyle mainTitleTS = const TextStyle(
      fontSize: 30, color: Color(0xFFF2EDDB), fontFamily: 'AlfaSlabOne');

  List<PilihanGanda> pilihanGandaList = [
    PilihanGanda(
        1,
        "Besaran yang dimensinya ML-¹T−² adalah...",
        "",
        [
          Jawaban("A", "Percepatan"),
          Jawaban("B", "Gaya"),
          Jawaban("C", "Tekanan"),
          Jawaban("D", "Momentum")
        ],
        "C"),
    PilihanGanda(
        2,
        "Kelompok besaran di bawah ini yang merupakan kelompok besaran turunan adalah...",
        "",
        [
          Jawaban("A", "Panjang, Lebar dan Luas"),
          Jawaban("B", "Kecepatan, Berat dan Suhu"),
          Jawaban("C", "Intensitas Cahaya, Banyaknya Mol dan Volume"),
          Jawaban("D", "Kecepatan, Percepatan, dan Gaya")
        ],
        "D"),
    PilihanGanda(
        3,
        "Satuan dari beberapa besaran-besaran di bawah ini yang benar adalah...",
        "",
        [
          Jawaban("A", "Usaha Satuannya joule/sekon"),
          Jawaban("B", "Tekanan satuannya Paskal"),
          Jawaban("C", "Massa jenis satuannya Newton/m²"),
          Jawaban("D", "Massa satuannya Newton")
        ],
        "B"),
    PilihanGanda(
        4,
        "Besaran pokok panjang dapat diturunkan menjadi...",
        "",
        [
          Jawaban("A", "Volume dan Kuat Arus Listrik"),
          Jawaban("B", "Luas dan Volume"),
          Jawaban("C", "Luas dan Tegangan"),
          Jawaban("D", "Tinggi dan Kecepatan")
        ],
        "B"),
    PilihanGanda(
        5,
        "Di bawah ini yang merupakan satuan besaran pokok adalah...",
        "",
        [
          Jawaban("A", "Meter, Sekon, Watt"),
          Jawaban("B", "Kilogram, Kelvin, Meter"),
          Jawaban("C", "Newton, Meter, Sekon"),
          Jawaban("D", "Newton, Kilogram, Kelvin")
        ],
        "B"),
  ];

  double progressVal = 1.0;

  List<int> soalDone = [];
  int quizStep = 0;
  String currAns = "";
  double lastNilai = 0.0;
  bool quizStarted = false;
  bool answered = false;

  late PilihanGanda currentPG;
  late List<Jawaban> currentLisJwb;

  @override
  void initState() {
    pilihanGandaList.shuffle();
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  void _updateProgress() {
    setState(() {
      quizStarted = true;
      currentPG = pilihanGandaList[quizStep];
      currentLisJwb = currentPG.shuffledJawaban();
      quizStep++;
      const oneSec = Duration(milliseconds: 500);
      Timer.periodic(oneSec, (Timer t) {
        setState(() {
          progressVal -= 0.03333;
          if (progressVal <= 0.0) {
            progressVal = 1.0;
            if (quizStep < pilihanGandaList.length) {
              currentPG = pilihanGandaList[quizStep];
              currentLisJwb = currentPG.shuffledJawaban();
              quizStep++;
              if (currAns == "") {
                soalDone.add(0);
              }
              answered = false;
            } else {
              t.cancel();
              Navigator.pushReplacementNamed(context, '/quiz');
            }
            return;
          }
        });
      });
    });
  }

  prosesNilai() {
    int benar = 0, salah = 0;
    for (var element in pilihanGandaList) {
      var isSalah = false;
      for (var e2 in element.jawaban) {
        if (e2.selected && e2.abjad == element.jawabanBenar) {
          benar++;
          isSalah = false;
          break;
        } else {
          isSalah = true;
        }
      }
      if (isSalah) {
        salah++;
      }
    }
    Dialogs.popUp(
        context,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Jawaban benar : $benar"),
            Text("Jawaban salah : $salah"),
            Text("Nilai : ${(benar / pilihanGandaList.length) * 100}"),
          ],
        ));
  }

  buildJawabanPG(List<Jawaban> jawabans) {
    List<Widget> jawabanWidgets = [];
    for (var element in jawabans) {
      if (answered == false) {
        jawabanWidgets.add(InkWell(
            onTap: () {
              // if (element.abjad == currentPG.jawabanBenar) {
              int idx = currentLisJwb.indexOf(element);
              setState(() {
                answered = true;
                currentLisJwb[idx].selected = true;
                if (element.abjad == currentPG.jawabanBenar) {
                  lastNilai += 2000 * progressVal;
                }
              });
              // }
            },
            child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: element.selected ? Colors.green : Colors.grey,
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Text(element.jawabanString,
                    style: TextStyle(
                        color:
                            element.selected ? Colors.white : Colors.black)))));
      } else {
        if (element.abjad == currentPG.jawabanBenar || element.selected) {
          jawabanWidgets.add(InkWell(
              onTap: () {},
              child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: element.abjad == currentPG.jawabanBenar
                          ? Colors.green
                          : Colors.red,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Text(element.jawabanString,
                      style: TextStyle(
                          color: element.abjad == currentPG.jawabanBenar
                              ? Colors.white
                              : Colors.black)))));
        }
      }
    }
    return Column(children: jawabanWidgets);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/background.png"),
                  fit: BoxFit.fill)),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(30, 140, 30, 90),
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(5, 8),
                    blurRadius: 0,
                    blurStyle: BlurStyle.normal)
              ],
              color: const Color(0xFFFDDD70),
              border: borderDecoration,
              borderRadius: const BorderRadius.all(Radius.circular(15))),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 150, 40, 100),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            decoration: BoxDecoration(
                color: Colors.white,
                border: borderDecoration,
                borderRadius: const BorderRadius.all(Radius.circular(15))),
            child: CustomScrollView(slivers: <Widget>[
              (!quizStarted)
                  ? SliverList(
                      delegate: SliverChildListDelegate([
                      const SizedBox(height: 200),
                      InkWell(
                        onTap: () {
                          _updateProgress();
                        },
                        child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            decoration: const BoxDecoration(
                                color: Colors.green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Text(
                              "Mulai Kuis",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            )),
                      ),
                      const SizedBox(height: 40)
                    ]))
                  : SliverList(
                      delegate: SliverChildListDelegate([
                      ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: LinearProgressIndicator(
                            minHeight: 15,
                            backgroundColor: Colors.grey,
                            value: progressVal,
                            valueColor:
                                const AlwaysStoppedAnimation(Colors.blue),
                          )),
                      const SizedBox(height: 50),
                      Text(currentPG.soal),
                      buildJawabanPG(currentLisJwb),
                      const SizedBox(height: 50),
                      Text("Score : ${lastNilai.round()}")
                    ]))
            ]),
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          height: 100,
          margin: const EdgeInsets.only(top: 80),
          child: Stack(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.fromLTRB(2.0, 0.0, 0.0, 0.0),
                  child: Text("QUIZ", style: mainTitleTS)),
              Container(
                  padding: const EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0),
                  child: Text("QUIZ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'AlfaSlabOne',
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1
                          ..color = const Color(0xFF336699),
                      )))
            ],
          ),
        ),
        Container(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.popAndPushNamed(context, "/");
                  },
                  splashColor: Colors.orange,
                  child: const Image(
                      width: 50,
                      image: AssetImage("images/menu_icons/home_medium.png")),
                ),
              ],
            )),
      ],
    ));
  }
}
