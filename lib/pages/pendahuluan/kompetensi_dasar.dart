import 'package:flutter/material.dart';

class KompetensiDasar extends StatelessWidget {
  const KompetensiDasar({super.key});

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
                          "1. Menerapkan prinsip-prinsip pengukuran besaran fisis, ketepatan, ketelitian dan angka penting serta notasi ilmiah."),
                      const Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                              "\t 1.A. Mengamati pembuatan daftar (tabel) nama besaran, alat ukur, cara mengukur.")),
                      const Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                              "\t 1.B. Mendiskusikan prinsip-prinsip pengukuran(ketepatan, ketelitian dan angka penting) cara menggunakan alat ukur, cara membaca skala, cara menuliskan hasil pengukuran.")),
                      const SizedBox(height: 20),
                      const Text(
                        "2. Menyajikan hasil pengukuran besaran fisis berikut ketelitiannya dengan menggunakan peralatan dan teknik yang tepat serta mengikuti kaidah angka penting untuk suatu penyelidikan ilmiah"),
                      const Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                              "\t 2.A. Mengolah data hasil pengukuran dalam bentuk penyajian data, membuat grafik, menginterpretasi data dan grafik dan menentuan ketelitian pengukuran, serta menyimpulkan hasil interpretasi data.")),
                      const Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                              "\t 2.B. Membuat laporan tertulis dan mempresentasikan hasil pengukuran.")),
                      const SizedBox(height: 40)
                    ]),
                  ),
                ],
              )),
        ),
        Container(
          alignment: Alignment.topCenter,
          height: 100,
          margin: const EdgeInsets.only(top: 80),
          child: Stack(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.fromLTRB(2.0, 0.0, 0.0, 0.0),
                  child: const Text("KOMPETENSI DASAR", style: mainTitleTS)),
              Container(
                  padding: const EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0),
                  child: Text("KOMPETENSI DASAR",
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
