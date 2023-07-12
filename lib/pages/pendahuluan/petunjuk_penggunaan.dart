import 'package:flutter/material.dart';

class PetunjukPenggunaan extends StatelessWidget {
  const PetunjukPenggunaan({super.key});

  static const mainTitleTS = TextStyle(
      fontSize: 30, color: Color(0xFFF2EDDB), fontFamily: 'AlfaSlabOne');

  static const Border borderDecoration = Border(
      top: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid),
      bottom:
          BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid),
      left: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid),
      right:
          BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid));

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
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(5, 8),
                    blurRadius: 0,
                    blurStyle: BlurStyle.normal)
              ],
              color: Color(0xFFFDDD70),
              border: borderDecoration,
              borderRadius: BorderRadius.all(Radius.circular(15))),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 150, 40, 100),
          child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: borderDecoration,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverList(
                    delegate: SliverChildListDelegate([
                      const Text(
                          "1. Peserta didik dapat menggunakan modul ini secara individu atau secara kelompok dimulai dari bagian uraian materi pembelajaran hingga penyelesaian beberapa soal latihan untuk mengukur pemahaman isi materi pada modul tersebut."),
                      const SizedBox(height: 20),
                      const Text(
                          "2. Setelah mempelajari keseluruhan modul ini, silahkan diskusikan dengan teman sekelasmu untuk mendapatkan kesimpulan dan analisis modul ini tentang pentingnya mempelajari dan mengetahui pembacaan tabel dan grafik."),
                      const SizedBox(height: 20),
                      const Text(
                          "3. Selamat belajar dan semoga selalu sukses, amiin..."),
                      const SizedBox(height: 20),
                      Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: Color(0xFFF2EDDB),
                              border: Border(
                                  left: BorderSide(
                                      color: Color(0xFF336699),
                                      style: BorderStyle.solid,
                                      width: 5))),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "\"Agama tanpa ilmu adalah Buta. Ilmu tanpa agama adalah Lumpuh\"",
                                  style: TextStyle(fontSize: 10)),
                              Text(
                                  "--Albert Einstein",
                                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                              SizedBox(height: 20),
                              Text(
                                  "\"Jangan kecewa apabila hasil yang diperoleh tidak seperti yang diharapkan, percaya bahwa semuanya adalah kesuksesan. Sukses terdiri dari 1% bakat dan 99% keringat.\"",
                                  style: TextStyle(fontSize: 10)),
                              Text(
                                  "--Thomas Alfa Edison",
                                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                            ],
                          )),
                      const SizedBox(height: 40),
                    ]),
                  ),
                ],
              )),
        ),
        Container(
          alignment: Alignment.topCenter,
          height: 100,
          margin: const EdgeInsets.only(top: 60),
          child: Stack(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.fromLTRB(2.0, 0.0, 0.0, 0.0),
                  child: const Text("PETUNJUK", style: mainTitleTS)),
              Container(
                  padding: const EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0),
                  child: Text("PETUNJUK",
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
          margin: const EdgeInsets.only(top: 95),
          child: Stack(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.fromLTRB(2.0, 0.0, 0.0, 0.0),
                  child: const Text("PENGGUNAAN", style: mainTitleTS)),
              Container(
                  padding: const EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0),
                  child: Text("PENGGUNAAN",
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

  buildRow(String item, BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                          height: 50.0,
                          padding: const EdgeInsets.all(5.0),
                          child: Text(item,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0)))),
                ])));
  }
}
