import 'package:flutter/material.dart';

class PetaKonsep extends StatelessWidget {
  const PetaKonsep({super.key});
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
          margin: const EdgeInsets.fromLTRB(30, 90, 30, 90),
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
            padding: const EdgeInsets.fromLTRB(40, 100, 40, 100),
            child: Container(
                width: double.infinity,
                height: double.infinity,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    border: borderDecoration,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: const Image(image: AssetImage("images/peta_konsep/peta_konsep.png"))),
        ),
        Container(
          alignment: Alignment.topCenter,
          height: 100,
          margin: const EdgeInsets.only(top: 120),
          child: Stack(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.fromLTRB(2.0, 0.0, 0.0, 0.0),
                  child:
                  const Text("PETA KONSEP", style: mainTitleTS)),
              Container(
                  padding: const EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0),
                  child: Text("PETA KONSEP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
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
