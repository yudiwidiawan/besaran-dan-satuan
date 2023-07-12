import 'package:flutter/material.dart';

import '../../model/jawaban.dart';
import '../../model/pilihan_ganda.dart';
import '../../widgets/dialog.dart';

class LatihanPG extends StatefulWidget {
  const LatihanPG({Key? key}) : super(key: key);

  @override
  _LatihanPGState createState() => _LatihanPGState();
}

class _LatihanPGState extends State<LatihanPG> {
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
        "Daya didefinisikan sebagai usaha yang dilakukan per satuan waktu, dengan demikian dimensi dari usaha adalah ...",
        "",
        [
          Jawaban("A", "MLT−³"),
          Jawaban("B", "MLT−²"),
          Jawaban("C", "ML²T−¹"),
          Jawaban("D", "ML²T−²"),
          Jawaban("E", "ML²T−³"),
        ],
        "A"),
    PilihanGanda(
        2,
        "Besaran berikut yang memiliki dimensi yang sama dengan energi kinetik adalah ...",
        "",
        [
          Jawaban("A", "Gaya"),
          Jawaban("B", "Daya"),
          Jawaban("C", "Usaha"),
          Jawaban("D", "Momentum"),
          Jawaban("E", "Tekanan"),
        ],
        "A"),
    PilihanGanda(
        3,
        "Dibawah ini yang merupakan kelompok besaran turunan saja adalah ...",
        "",
        [
          Jawaban("A", "Massa jenis, kuat arus, dan volume"),
          Jawaban("B", "Luas, kelajuan, dan momentum"),
          Jawaban("C", "Energi kinetik, usaha, dan suhu"),
          Jawaban("D", "Kecepatan, percepatan dan waktu"),
          Jawaban("E", "Massa, luas, dan volume"),
        ],
        "A"),
    PilihanGanda(
        4,
        "Satuan tekanan dalam SI adalah ...",
        "",
        [
          Jawaban("A", "Kelvin"),
          Jawaban("B", "Ampere"),
          Jawaban("C", "Pascal"),
          Jawaban("D", "Joule"),
          Jawaban("E", "cmHg"),
        ],
        "A"),
    PilihanGanda(
        5,
        "Sebuah kubus mempunyai sisi 12,5 cm. volume kubus tersebut adalah ...",
        "",
        [
          Jawaban("A", "1953,125 cm³"),
          Jawaban("B", "1953,12 cm³"),
          Jawaban("C", "1953,13 cm³"),
          Jawaban("D", "1,95 x 10³ cm³"),
          Jawaban("E", "0,1953 x104 cm³"),
        ],
        "A"),
  ];

  @override
  void initState() {
    super.initState();
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
    Dialogs.popUp(context, Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Jawaban benar : $benar"),
        Text("Jawaban salah : $salah"),
        Text("Nilai : ${(benar / pilihanGandaList.length) * 100}"),
      ],
    ));
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
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return buildRow(pilihanGandaList[index], context);
                },
                childCount: pilihanGandaList.length,
              )),
              SliverList(
                  delegate: SliverChildListDelegate([
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    prosesNilai();
                  },
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Text(
                        "Kirim Jawaban",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                ),
                const SizedBox(height: 40)
              ]))
            ]),
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          height: 100,
          margin: const EdgeInsets.only(top: 60),
          child: Stack(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.fromLTRB(2.0, 0.0, 0.0, 0.0),
                  child: Text("LATIHAN", style: mainTitleTS)),
              Container(
                  padding: const EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0),
                  child: Text("LATIHAN",
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
          alignment: Alignment.topCenter,
          height: 100,
          margin: const EdgeInsets.only(top: 100),
          child: Stack(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.fromLTRB(2.0, 0.0, 0.0, 0.0),
                  child: Text("PILIHAN GANDA", style: mainTitleTS)),
              Container(
                  padding: const EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0),
                  child: Text("PILIHAN GANDA",
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
                    Navigator.popAndPushNamed(context, "/materi");
                  },
                  splashColor: Colors.orange,
                  child: const Image(
                      width: 50,
                      image: AssetImage("images/menu_icons/prev_medium.png")),
                ),
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

  buildJawabanPG(List<Jawaban> jawabans, int index) {
    List<Widget> jawabanWidgets = [];
    for (var element in jawabans) {
      jawabanWidgets.add(InkWell(
          onTap: () {
            setState(() {
              int idxJwb = pilihanGandaList
                  .elementAt(index - 1)
                  .jawaban
                  .indexOf(element);
              pilihanGandaList.elementAt(index - 1).jawaban.forEach((element) {
                element.selected = false;
              });
              pilihanGandaList
                  .elementAt(index - 1)
                  .jawaban[idxJwb]
                  .toggleSelected();
            });
          },
          child: Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              margin: const EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                    color: element.selected ? Colors.blue : Colors.grey,
                    style: BorderStyle.solid,
                    width: 1),
                color: element.selected ? Colors.lightBlue : Colors.white,
              ),
              child: Row(
                children: [
                  Text(
                    "${element.abjad}. ",
                    style: TextStyle(
                        color: element.selected ? Colors.white : Colors.black),
                  ),
                  Text(element.jawabanString,
                      style: TextStyle(
                          color:
                              element.selected ? Colors.white : Colors.black)),
                ],
              ))));
    }
    return jawabanWidgets;
  }

  buildRow(PilihanGanda item, BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Flexible(
                  flex: 0,
                  child: Container(
                      height: 50.0,
                      padding: const EdgeInsets.all(5.0),
                      child: Text("${item.no.toString()}.",
                          textAlign: TextAlign.justify,
                          style:
                              const TextStyle(fontWeight: FontWeight.bold)))),
              Flexible(
                  flex: 1,
                  child: Container(
                      height: 50.0,
                      padding: const EdgeInsets.all(5.0),
                      child: Text(item.soal, textAlign: TextAlign.justify)))
            ]),
            Column(
              children: buildJawabanPG(item.jawaban, item.no),
            )
          ],
        ));
  }
}
