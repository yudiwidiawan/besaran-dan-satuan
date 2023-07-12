import 'package:flutter/material.dart';

class AngkaPenting extends StatelessWidget {
  const AngkaPenting({super.key});

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
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: borderDecoration,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: DefaultTabController(length: 1,
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            child: const TabBar(
                              indicatorPadding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                              indicatorSize: TabBarIndicatorSize.tab,
                              indicatorColor: Color(0xFFFDDD70),
                              labelColor: Color(0xFF336699),
                              indicator: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                                color: Color(0xFFFDDD70),
                              ),
                              unselectedLabelColor: Color(0xFF336699),
                              tabs: [
                                Tab(text: 'Angka Penting'),
                              ],
                            ),
                          ),
                          Container(
                              height: 352.0,
                              padding: const EdgeInsets.all(10),//height of TabBarView
                              decoration: const BoxDecoration(
                                  border: Border(top: BorderSide(color: Colors.grey, width: 0.5)),
                                  color: Colors.white70
                              ),
                              child: TabBarView(children: <Widget>[
                                CustomScrollView(
                                    slivers: <Widget>[
                                      SliverList(delegate: SliverChildListDelegate([
                                        const Text("1. Ketentuan dalam Angka Penting, sebagai berikut :", style: TextStyle(fontWeight: FontWeight.bold)),
                                        const SizedBox(height: 10),
                                        const Text("• Semua angka hasil pengukuran merupakan angka penting"),
                                        const SizedBox(height: 10),
                                        const Text("• Semua angka bukan nol merupakan angka penting"),
                                        const SizedBox(height: 10),
                                        const Text("• Angka nol termasuk angka penting jika terletak di antara bukan nol dibelakang koma"),
                                        const SizedBox(height: 10),
                                        const Text("• Angka penting menunjukkan ketelitian suatu pengukuran"),
                                        const SizedBox(height: 10),
                                        const Text("2. Operasi angka penting memiliki aturan seperti berikut :", style: TextStyle(fontWeight: FontWeight.bold)),
                                        const SizedBox(height: 10),
                                        const Text("• Penjumlahan dan pengurangan angka penting memenuhi:"),
                                        const SizedBox(height: 10),
                                        const Text("\tAngka pasti ditambah/dikurangi angka pasti hasilnya adalah angka pasti.\n\tAngka pasti ditambah/dikurangi angka taksiran hasilnya adalah angka taksiran. \n\tAngka taksiran ditambah/dikurangi angka taksiran hasilnya adalah angka taksiran."),
                                        const SizedBox(height: 10),
                                        const Text("• Perkalian dan pembagian angka penting dapat menggunakan aturan:"),
                                        const SizedBox(height: 10),
                                        const Text("\t\"Hasil perkalian atau pembagian angka penting akan memiliki jumlah angka penting yang sama dengan bilangan yang angka pentingya lebih sedikit. Misalnya bilangan A (memiliki 2 angka penting) dikalikan bilangan B (memiliki 4 angka penting) maka hasilnya akan memiliki 2 (dua) angka penting\""),
                                        const SizedBox(height: 40)
                                      ]))
                                    ]
                                ),
                              ])
                          )
                        ],
                      ))),
            ),
            Container(
              alignment: Alignment.topCenter,
              height: 100,
              margin: const EdgeInsets.only(top: 80),
              child: Stack(
                children: <Widget>[
                  Container(
                      padding: const EdgeInsets.fromLTRB(2.0, 0.0, 0.0, 0.0),
                      child: const Text("URAIAN MATERI", style: mainTitleTS)),
                  Container(
                      padding: const EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0),
                      child: Text("URAIAN MATERI",
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
                        Navigator.popAndPushNamed(context, "/kegiatan-pembelajaran/uraian-materi");
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
}
