import 'package:flutter/material.dart';

import 'package:photo_view/photo_view.dart';
import '../../widgets/dialog.dart';

class UraianMateri extends StatelessWidget {
  const UraianMateri({super.key});

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
              child: DefaultTabController(length: 2,
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
                            Tab(text: 'Pengukuran'),
                            Tab(text: 'Besaran'),
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
                                    const Text("Mengukur merupakan kegiatan membandingkan suatu besaran dengan satuan."),
                                    const SizedBox(height: 10),
                                    const Text("Contoh kegiatan mengukur : mengukur panjang meja, satuannya meter."),
                                    const SizedBox(height: 10),
                                    const Text("Ketepatan (Akurasi) adalah tingkat kesamaan pengukuran dengan nilai aslinya."),
                                    const SizedBox(height: 10),
                                    const Text("Ketelitian (Presisi) adalah kesesuaian data-data hasil pengukuran berulang."),
                                    const SizedBox(height: 10),
                                    const Text("Alat Ukur", style: TextStyle(fontWeight: FontWeight.bold)),
                                    const SizedBox(height: 10),
                                    const Text("Untuk mengukur suatu besaran, panjang, massa di gunakan berbagai jenis alat. Jenis alat yang di gunakan bergantung pada beberapa hal antara lain :"),
                                    const SizedBox(height: 10),
                                    const Text("\ta. Ketelitian yang diinginkan \n\tb. Ukuran benda yang di ukur\n\tc. Bentuk benda yang di ukur"),
                                    const SizedBox(height: 10),
                                    const Text("Alat ukur panjang yang sering di pakai di laboratorium yaitu mistar, jangka sorong dan micrometer skrup."),
                                    const SizedBox(height: 10),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: const BoxDecoration(color: Color(0xFFFDDD70), borderRadius: BorderRadius.all(Radius.circular(10))),
                                      child: const Text("\ta. Jangka Sorong")
                                    ),
                                    const SizedBox(height: 10),
                                    const Text("Mempunyai ketelitian 0,1 mm atau 0,01 cm. Bagian jangka sorong terdiri atas :"),
                                    const SizedBox(height: 10),
                                    const Text("• Rahang tetap, skala panjang yang tertera di sebut skala utama"),
                                    const SizedBox(height: 10),
                                    const Text("• Rahang geser, skala pendek yang tertera di sebut skala nonius"),
                                    const SizedBox(height: 10),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1, style: BorderStyle.solid)),
                                      child: const Text("• Skala Terkecil = Skala Utama – 1 Skala Nonius = 0,1 cm – 0,09 cm = 0,01 cm \n• Skala Terkecil = 0,1 mm \n• Ketidakpastian = ½ x Skala Terkecil = ½ x 0,1 mm \n• Ketidakpastian (Dx) = 0,05 mm"),
                                    ),
                                    const SizedBox(height: 10),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(
                                            fullscreenDialog: true,
                                            builder: (BuildContext context) {
                                              return Scaffold(
                                                appBar: AppBar(
                                                  title: const Text('Jangka Sorong'),
                                                ),
                                                body: Hero(
                                                  tag: "preview",
                                                  child: PhotoView(backgroundDecoration: const BoxDecoration(color: Colors.white),imageProvider: const AssetImage("images/uraian_materi/jangka_sorong.png")),
                                                ),
                                              );
                                            }
                                        ));
                                      },
                                      child: const Image(image: AssetImage("images/uraian_materi/jangka_sorong.png"))
                                    ),
                                    const SizedBox(height: 10),
                                    const Text("• Perhatikan angka pada skala utama yang berdekatan dengan angka nol pada nonius. Pada gambar angka tersebut adalah antara 2,1 cm dan 2,2 cm."),
                                    const SizedBox(height: 10),
                                    const Text("• Perhatikan garis nonius yang tepat berimpit dengan garis pada skala utama. Pada gabar garis nonius yang tepat berimpit dengan garis pada skala utama adalah garis ke-5. Ini berarti, x = 2,1 cm + 5 x0,01 cm= 2,15 cm (2 desimal). Karena Dx= 0,005 cm (3 desimal) maka x harus dinyatakan dengan 3 desimal."),
                                    const SizedBox(height: 10),
                                    const Text("• Hasil pengukurannya adalah L = (2,150 ± 0.005) cm."),
                                    const SizedBox(height: 10),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: const BoxDecoration(color: Color(0xFFFDDD70), borderRadius: BorderRadius.all(Radius.circular(10))),
                                      child: const Text("\tb. Micrometer Sekrup")
                                    ),
                                    const SizedBox(height: 10),
                                    const Text("Mempunyai ketelitian 0,01 mm atau 0,001 cm, micrometer mempunyai bagian skala utama dan skala nonius atau putar. Skala terkecil pada mikrometer adalah skala terkecil pada skala utama dibagi jarak maju mundur rahang geser, yaitu:"),
                                    const SizedBox(height: 10),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1, style: BorderStyle.solid)),
                                      child: const Text("• Skala terkecil = 0,5 mm/50 = 0,01 mm \n• Ketidakpastian (Dx) = ½ x skala terkecil = ½ x 0,01 mm \n• Ketidakpastian (Dx) = 0,005 mm "),
                                    ),
                                    const SizedBox(height: 10),
                                    InkWell(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(
                                              fullscreenDialog: true,
                                              builder: (BuildContext context) {
                                                return Scaffold(
                                                  appBar: AppBar(
                                                    title: const Text('Mikrometer Sekrup'),
                                                  ),
                                                  body: Hero(
                                                    tag: "preview",
                                                    child: PhotoView(backgroundDecoration: const BoxDecoration(color: Colors.white),imageProvider: const AssetImage("images/uraian_materi/mikrometer_sekrup.png")),
                                                  ),
                                                );
                                              }
                                          ));
                                        },
                                        child: const Image(image: AssetImage("images/uraian_materi/mikrometer_sekrup.png"))
                                    ),
                                    const SizedBox(height: 10),
                                    const Text("Contoh:\nDua kelompok siswa melakukan pengukuran massa jenis air murni di laboratorium fisika. Kedua kelompok tersebut melakukan pengukuran berulang dan diperoleh hasil seperti pada tabel di bawah ini."),
                                    const SizedBox(height: 10),
                                    const Image(image: AssetImage("images/uraian_materi/contoh_tabel_pengukuran.png")),
                                    const SizedBox(height: 10),
                                    const Text("Dari data pada tabel dapat diketahui bahwa:\n\t• Hasil pengukuran kelompok Ani memiliki akurasi lebih tinggi daripada kelompok Faza karena hasilnya lebih dekat pada nilai sebenarnya (1,00 gram/cm³).\n\t• Hasil pengukuran kelompok Ani memiliki ketelitian lebih rendah daripada kelompok Faza karena beda antar datanya lebih jauh"),
                                    const SizedBox(height: 10),
                                    const Text("Kesalahan Pengukuran", style: TextStyle(fontWeight: FontWeight.bold)),
                                    const SizedBox(height: 10),
                                    const Text("Kesalahan Pengukuran ada dua jenis, yaitu:\n\t• Kesalahan sistematis merupakan kesalahan yang terkait dengan kesalahan pengaturan alat, kaliberasi alat dan pengaruh lingkungan\n\t• Kesalahan acak disebabkan oleh ketidaksempurnaan manusia dan alat"),
                                    const SizedBox(height: 10),
                                    const Text("Pada hasil pengukuran, kesalahan ini dinyatakan dalam tanda plus minus (±), Kesalahan ini dapat diperkecil pengaruhnya, contoh dengan cara melakukan pengukuran berulang."),
                                    const SizedBox(height: 40)
                                  ]))
                                ]
                            ),
                            CustomScrollView(
                                slivers: <Widget>[
                                  SliverList(delegate: SliverChildListDelegate([
                                    const Text("Besaran didefinisikan sebagai sesuatu yang dapat diukur dan dinyatakan dalam angka. sedangkan satuan adalah sesuatu yang dijadikan sebagai pembanding dalam pengukuran. Berdasarkan satuannya, besaran dibagi menjadi dua seperti berikut."),
                                    const SizedBox(height: 10),
                                    Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: const BoxDecoration(color: Color(0xFFFDDD70), borderRadius: BorderRadius.all(Radius.circular(10))),
                                        child: const Text("\ta. Besaran Pokok")
                                    ),
                                    const SizedBox(height: 10),
                                    const Text("Besaran pokok yaitu besaran satuannya telah ditentukan"),
                                    const SizedBox(height: 10),
                                    const Image(image: AssetImage("images/uraian_materi/tabel_besaran_pokok.png")),
                                    const SizedBox(height: 10),
                                    Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: const BoxDecoration(color: Color(0xFFFDDD70), borderRadius: BorderRadius.all(Radius.circular(10))),
                                        child: const Text("\tb. Besaran Turunan")
                                    ),
                                    const SizedBox(height: 10),
                                    const Text("Besaran turunan yaitu besaran yang satuannya diturunkan dari satuan besaran pokok. \n\nAdapun contoh besaran turunan antara lain : luas, volume, kecepatan, gaya, usaha dan energi."),
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
                InkWell(
                  onTap: () {
                    Navigator.popAndPushNamed(context, "/kegiatan-pembelajaran/angka-penting");
                  },
                  splashColor: Colors.orange,
                  child: const Image(
                      width: 50,
                      image: AssetImage("images/menu_icons/next_medium.png")),
                ),
              ],
            )),
      ],
    ));
  }
}
