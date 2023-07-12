import 'package:flutter/material.dart';
import 'package:untitled4/model/materi_item.dart';

class Materi extends StatelessWidget {
  const Materi({super.key});

  static const String menuIconsDir = "images/menu_icons/";

  static const Border borderDecoration = Border(
      top: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid),
      bottom:
          BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid),
      left: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid),
      right:
          BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid));

  @override
  Widget build(BuildContext context) {
    List<MateriItem> firstMenu = [
      MateriItem("Peta Konsep", "materi_medium.png", "/peta-konsep"),
      MateriItem("Glosarium", "materi_medium.png", "/glosarium")
    ];
    List<MateriItem> pendahuluan = [
      MateriItem("Identitas Modul", "materi_medium.png", "/pendahuluan/identitas-modul"),
      MateriItem("Kompetensi Dasar", "materi_medium.png", "/pendahuluan/kompetensi-dasar"),
      MateriItem("Deskripsi", "materi_medium.png", "/pendahuluan/deskripsi"),
      MateriItem(
          "Petunjuk Penggunaan", "materi_medium.png", "/pendahuluan/petunjuk-penggunaan"),
      MateriItem(
          "Materi Pembelajaran", "materi_medium.png", "/pendahuluan/materi-pembelajaran"),
    ];
    List<MateriItem> kegiatanPembelajaran = [
      MateriItem("Tujuan", "materi_medium.png", "/kegiatan-pembelajaran/tujuan"),
      MateriItem("Uraian Materi", "materi_medium.png", "/kegiatan-pembelajaran/uraian-materi"),
      MateriItem("Rangkuman", "materi_medium.png", "/kegiatan-pembelajaran/rangkuman"),
      MateriItem("Latihan Essay", "materi_medium.png", "/kegiatan-pembelajaran/latihan-essay"),
      MateriItem(
          "Latihan Pilihan Ganda", "materi_medium.png", "/kegiatan-pembelajaran/latihan-pg"),
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
              decoration: const BoxDecoration(
                  color: Colors.white,
                  border: borderDecoration,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return buildRow(firstMenu[index], context);
                      },
                      childCount: firstMenu.length,
                    ),
                  ),
                  SliverPersistentHeader(
                      floating: false,
                      delegate: Delegate(Colors.red, "Pendahuluan")),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return buildRow(pendahuluan[index], context);
                      },
                      childCount: pendahuluan.length,
                    ),
                  ),
                  SliverPersistentHeader(
                      delegate:
                          Delegate(Colors.purple, "Kegiatan Pembelajaran")),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return buildRow(kegiatanPembelajaran[index], context);
                      },
                      childCount: kegiatanPembelajaran.length,
                    ),
                  ),
                ],
              ),
            )),
        Container(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.popAndPushNamed(context, "/");
                  },
                  splashColor: Colors.orange,
                  child: const Image(
                      width: 50,
                      image: AssetImage("${menuIconsDir}home_medium.png")),
                ),
              ],
            )),
        Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(5),
          height: 100,
          child: const Image(
              image: AssetImage("${menuIconsDir}materi_medium.png"), width: 65),
        )
      ],
    ));
  }

  buildRow(MateriItem menu, BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.popAndPushNamed(
              context, menu.route);
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
                          child: Text(menu.name,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0))))
                ])));
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  final Color backgroundColor;
  final String _title;

  Delegate(this.backgroundColor, this._title);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      // color: backgroundColor,
      decoration: const BoxDecoration(border: Border(
        bottom: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid)
      )),
      // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Text(
          _title,
          style: const TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 80;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
