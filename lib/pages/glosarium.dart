import 'package:flutter/material.dart';
import 'package:untitled4/model/glosarium_item.dart';

class Glosarium extends StatelessWidget {
  const Glosarium({super.key});

  static const mainTitleTS = TextStyle(
      fontSize: 40, color: Color(0xFFF2EDDB), fontFamily: 'AlfaSlabOne');

  static const Border borderDecoration = Border(
      top: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid),
      bottom:
          BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid),
      left: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid),
      right:
          BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid));

  @override
  Widget build(BuildContext context) {
    List<GlosariumItem> glosariums = [
      GlosariumItem("Besaran",
          "segala sesuatu yang dapat diukur dan dinyatakan dalam angka."),
      GlosariumItem("Dimensi",
          "cara menyatakan suatu besaran fisis yang tersusun dari besaran dasar (besaran pokok)."),
      GlosariumItem(
          "Angka penting", "semua angka yang diperoleh dari pengukuran."),
      GlosariumItem("Pengukuran",
          "membandingkan nilai suatu besaran yang diukur menggunakan besaran yang sejenis yang tepat sebagai satuan."),
      GlosariumItem("Ketelitian (akurasi)",
          "persesuaian antara hasil pengukuran dan hargasebenarnya."),
      GlosariumItem("Ketepatan (presisi)",
          "kemampuan proses pengukuran untuk menunjukan hasil yang sama dari pengukuran berulang dan identik (sama)."),
      GlosariumItem("Notasi ilmiah",
          "cara menuliskan angka yang sangat kecil atau yang sangat besar agar lebih mudah dalam penulisannya."),
    ];
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
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: borderDecoration,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                        return buildRow(glosariums[index], context);
                      },
                      childCount: glosariums.length,
                    ),
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
                  child: const Text("GLOSARIUM", style: mainTitleTS)),
              Container(
                  padding: const EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0),
                  child: Text("GLOSARIUM",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
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
  buildRow(GlosariumItem item, BuildContext context) {
    return InkWell(
        onTap: () {

        },
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
                          child: Text(item.name,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0)))),
                  Flexible(
                      flex: 3,
                      child: Container(
                          height: 50.0,
                          padding: const EdgeInsets.all(5.0),
                          child: Text("adalah ${item.details}",
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                  fontSize: 10.0))))
                ])));
  }
}
