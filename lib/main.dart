import 'package:flutter/material.dart';
import 'package:untitled4/quiz.dart';
import 'tentang.dart';
import 'kalkulator.dart';
import 'pages/materi.dart';
import 'pages/peta_konsep.dart';
import 'pages/glosarium.dart';
import 'video.dart';
import 'pages/pendahuluan/identitas_modul.dart';
import 'pages/pendahuluan/kompetensi_dasar.dart';
import 'pages/pendahuluan/deskripsi.dart';
import 'pages/pendahuluan/petunjuk_penggunaan.dart';
import 'pages/pendahuluan/materi_pembelajaran.dart';
import 'pages/kegiatan_pembelajaran/tujuan.dart';
import 'pages/kegiatan_pembelajaran/uraian_materi.dart';
import 'pages/kegiatan_pembelajaran/angka_penting.dart';
import 'pages/kegiatan_pembelajaran/rangkuman.dart';
import 'pages/kegiatan_pembelajaran/latihan_essay.dart';
import 'pages/kegiatan_pembelajaran/latihan_pg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Main Menu'),
      routes: {
        "/materi": (context) => const Materi(),
        "/peta-konsep": (context) => const PetaKonsep(),
        "/glosarium": (context) => const Glosarium(),
        "/video": (context) => const Video(),
        "/kalkulator": (context) => const Kalkulator(),
        "/tentang": (context) => const Tentang(),
        "/quiz": (context) => const Quiz(),
        "/pendahuluan/identitas-modul": (context) => const IdentitasModul(),
        "/pendahuluan/kompetensi-dasar": (context) => const KompetensiDasar(),
        "/pendahuluan/deskripsi": (context) => const Deskripsi(),
        "/pendahuluan/petunjuk-penggunaan": (context) =>
            const PetunjukPenggunaan(),
        "/pendahuluan/materi-pembelajaran": (context) =>
            const MateriPembelajaran(),
        "/kegiatan-pembelajaran/tujuan": (context) => const Tujuan(),
        "/kegiatan-pembelajaran/uraian-materi": (context) =>
            const UraianMateri(),
        "/kegiatan-pembelajaran/angka-penting": (context) =>
            const AngkaPenting(),
        "/kegiatan-pembelajaran/rangkuman": (context) => const Rangkuman(),
        "/kegiatan-pembelajaran/latihan-essay": (context) =>
            const LatihanEssay(),
        "/kegiatan-pembelajaran/latihan-pg": (context) => const LatihanPG(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const mainTitleTS = TextStyle(
      fontSize: 40, color: Color(0xFFF2EDDB), fontFamily: 'AlfaSlabOne');

  static const iconMenuSize = 100.0;
  static const iconMenuRowAligment = MainAxisAlignment.spaceEvenly;
  static const menuIconsDir = "images/menu_icons/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/background.png"),
                    fit: BoxFit.fill)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                              padding:
                                  const EdgeInsets.fromLTRB(2.0, 0.0, 0.0, 0.0),
                              child:
                                  const Text("BESARAN &", style: mainTitleTS)),
                          Container(
                              padding:
                                  const EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0),
                              child: Text("BESARAN &",
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
                      Stack(
                        children: <Widget>[
                          Container(
                              padding:
                                  const EdgeInsets.fromLTRB(2.0, 0.0, 0.0, 0.0),
                              child: const Text("SATUAN", style: mainTitleTS)),
                          Container(
                              padding:
                                  const EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0),
                              child: Text("SATUAN",
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
                    ],
                  ),
                  Row(
                    mainAxisAlignment: iconMenuRowAligment,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/materi");
                        },
                        splashColor: Colors.orange,
                        child: const Image(
                            width: iconMenuSize,
                            image:
                                AssetImage("${menuIconsDir}materi_medium.png")),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/video");
                        },
                        splashColor: Colors.orange,
                        child: const Image(
                            width: iconMenuSize,
                            image:
                                AssetImage("${menuIconsDir}video_medium.png")),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: iconMenuRowAligment,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/kalkulator");
                        },
                        splashColor: Colors.orange,
                        child: const Image(
                            width: iconMenuSize,
                            image: AssetImage(
                                "${menuIconsDir}kalkulator_medium.png")),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/quiz");
                        },
                        splashColor: Colors.orange,
                        child: const Image(
                            width: iconMenuSize,
                            image:
                                AssetImage("${menuIconsDir}quiz_medium.png")),
                      )
                    ],
                  ),
                  Center(
                      child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFFFDDD70)),
                          child: TextButton.icon(
                              onPressed: () {
                                Navigator.pushNamed(context, "/tentang");
                              },
                              icon: const Icon(Icons.info_outline, color: Color(0xFF336699)),
                              label: const Text("Profil",
                                  style: TextStyle(
                                      color: Color(0xFF336699),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))))),
                  const SizedBox(
                    width: double.infinity,
                    height: 50,
                  )
                ],
              ),
            )));
  }
}
