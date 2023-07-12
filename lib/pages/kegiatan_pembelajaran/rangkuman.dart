import 'package:flutter/material.dart';

class Rangkuman extends StatelessWidget {
  const Rangkuman({super.key});
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
                        SliverList(delegate: SliverChildListDelegate([
                          const Text("• Besaran adalah sesuatuyang dapat diukur dan hasilnya selalu dapat dinyatakan dengan angka"),
                          const SizedBox(height: 10),
                          const Text("• Pengukuran merupakan proses membandingkan besaran yang diukur dengan besaran sejenis yang digunakan sebagai patokan"),
                          const SizedBox(height: 10),
                          const Text("• Aturan angka penting adalah sebagai berikut:"),
                          const SizedBox(height: 10),
                          const Text("\t1. Semua angka bukan nol adalah angka penting"),
                          const SizedBox(height: 10),
                          const Text("\t2. Angka nol yang terletak di antara dua angka bukan nol adalah angka penting"),
                          const SizedBox(height: 10),
                          const Text("\t3. Untuk bilangan desimal yang kurang dari satu, angka nol di sebelah kanan dan kiri tanda desimal adalah bukan angka penting"),
                          const SizedBox(height: 10),
                          const Text("\t4. Deretan angka nol yang terletak di sebelah kanan angka bukan nol adalah angka penting, kecuali ada penjelasan lain"),
                          const SizedBox(height: 10),
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
                                      "\"Jika kamu tidak mengejar apa yang kamu inginkan, maka kamu tidak akan mendapatkannya. Jika kamu tidak bertanya maka jawabannya adalah tidak. Jika kamu tidak melangkah maju, kamu akan tetap berada di tempat yang sama\"",
                                      style: TextStyle(fontSize: 10)),
                                ],
                              )),
                          const SizedBox(height: 40)
                        ]))
                      ]
                  ),),
            ),
            Container(
              alignment: Alignment.topCenter,
              height: 100,
              margin: const EdgeInsets.only(top: 80),
              child: Stack(
                children: <Widget>[
                  Container(
                      padding: const EdgeInsets.fromLTRB(2.0, 0.0, 0.0, 0.0),
                      child:
                      const Text("RANGKUMAN", style: mainTitleTS)),
                  Container(
                      padding: const EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0),
                      child: Text("RANGKUMAN",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'AlfaSlabOne',
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 1
                              ..color = const Color(0xFF336699),
                          ))
                  )
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
}
