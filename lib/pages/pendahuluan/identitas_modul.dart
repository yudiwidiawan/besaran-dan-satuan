import 'package:flutter/material.dart';

class IdentitasModul extends StatelessWidget {
  const IdentitasModul({super.key});
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
                  padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: borderDecoration,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFFDDD70),
                          border: borderDecoration,
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: const Text("Nama Mata Pelajaran", style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      const SizedBox(height: 10,),
                      const Text("Fisika", style: TextStyle(fontSize: 24)),
                      const SizedBox(height: 10,),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFFDDD70),
                          border: borderDecoration,
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: const Text("Kelas / Semester / Alokasi Waktu", style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      const SizedBox(height: 10,),
                      const Text("X / Ganjil / 6JP", style: TextStyle(fontSize: 24)),
                      const SizedBox(height: 10,),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFFDDD70),
                          border: borderDecoration,
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: const Text("Judul eModul", style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      const SizedBox(height: 10,),
                      const Text("Besaran dan Pengukuran", style: TextStyle(fontSize: 24)),
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
                      const Text("IDENTITAS MODUL", style: mainTitleTS)),
                  Container(
                      padding: const EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0),
                      child: Text("IDENTITAS MODUL",
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
