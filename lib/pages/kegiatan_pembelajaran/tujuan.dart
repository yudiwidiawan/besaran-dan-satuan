import 'package:flutter/material.dart';

class Tujuan extends StatelessWidget {
  const Tujuan({super.key});
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
    String tujuanString = "Setelah mempelajari modul ini peserta didik dapat mengidentifikasi penggunaan alat ukur panjang, menentukan hasil pengukuran menggunakan alat ukur panjang jangka sorong, micrometer sekrup, menentukan hasil pengukuran massa dengan menggunakan neraca Ohaus, menggunakan aturan berhitung dengan angka penting, membedakan besaran pokok dan besaran turunan, menentukan dimensi satuan suatu besaran. Menggunakan konversi satuan dalam pengukuran, menentukan notasi ilmiah dalam pengukuran, menganalisis data hasil percobaan pengukuran dengan ketelitian yang dimiliki alat ukur dan mempresentasikan data hasil percobaan dan/atau melalui percobaan dengan memiliki sikap ingin tahu, teliti dalam melakukan pengamatan dan bertanggungjawab dalam menyampaikan pendapat, menjawab pertanyaan, memberi saran dan kritik.";
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
                          Text(tujuanString),
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
                                      "\"Standar terbaik untuk MENGUKUR keberhasilan anda dalam kehidupan adalah dengan menghitung jumlah orang yang telah anda buat bahagia \"",
                                      style: TextStyle(fontSize: 10)),
                                  Text(
                                      "--Robert J. Lumsden",
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
              margin: const EdgeInsets.only(top: 80),
              child: Stack(
                children: <Widget>[
                  Container(
                      padding: const EdgeInsets.fromLTRB(2.0, 0.0, 0.0, 0.0),
                      child:
                      const Text("TUJUAN", style: mainTitleTS)),
                  Container(
                      padding: const EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0),
                      child: Text("TUJUAN",
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
