import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hipertensi_app/app/core/helper/bullet.dart';
import 'package:hipertensi_app/app/core/helper/constant.dart';

class K2View extends StatelessWidget {
  const K2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kPrimaryColor),
        elevation: 0.2,
        centerTitle: false,
        backgroundColor: Colors.grey[50],
        title: Text('Hipertensi tingkat I', style: kTitleTextstyle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: Center(
                    child: Text("FOTO ATAU VIDIO",
                        style:
                            kHeadingTextStyle.copyWith(color: Colors.white))),
                width: Get.width,
                height: 240,
                color: kPrimaryColor),
            Container(
              // padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTileTheme(
                    dense: true,
                    child: ExpansionTile(
                      // iconColor: kPrimaryColor,
                      childrenPadding: EdgeInsets.only(left: 20, bottom: 10),
                      title: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.arrow_right_rounded),
                          SizedBox(width: 10),
                          Text(
                            "Penjelasan",
                            style: kSubTextStyle.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      children: [
                        Text(
                            'Hipertensi tingkat I, ditandai dengan tekanan darah sistolik 140 –159 mmHg atau tekanan darah diastolik 90–99 mmHg',
                            style: kSubTextStyle)
                      ],
                    ),
                  ),
                  Divider(height: 1),
                  ListTileTheme(
                    dense: true,
                    child: ExpansionTile(
                        // iconColor: kPrimaryColor,
                        childrenPadding: EdgeInsets.only(left: 20, bottom: 10),
                        title: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.arrow_right_rounded),
                            SizedBox(width: 10),
                            Text(
                              "Gejala Klinis",
                              style: kSubTextStyle.copyWith(
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        children: [
                          NumberList([
                            'Sakit kepala',
                            'Sesak napas',
                            'Merasa panas',
                            'Kadang nyeri dada',
                            'Kadang pandangan kabur',
                            'Rasa cemas yang berlebihan',
                          ])
                        ]),
                  ),
                  Divider(height: 1),
                  ListTileTheme(
                    dense: true,
                    child: ExpansionTile(
                        // iconColor: kPrimaryColor,
                        childrenPadding: EdgeInsets.only(left: 20, bottom: 10),
                        title: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.arrow_right_rounded),
                            SizedBox(width: 10),
                            Text(
                              "Penyebab",
                              style: kSubTextStyle.copyWith(
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        children: [
                          NumberList([
                            'Keturunan',
                            'Konsumsi Alkohol',
                            'Stres',
                            'Beban Pekerjaan',
                            'Faktor ekonomi',
                            'Pola makan tidak teratur',
                            'Kurang aktivitas',
                            'Konsumsi garam berlebihan',
                            'Kurang istirahat / tidur'
                          ])
                        ]),
                  ),
                  Divider(height: 1),
                  ListTileTheme(
                    dense: true,
                    child: ExpansionTile(
                      // iconColor: kPrimaryColor,
                      childrenPadding: EdgeInsets.only(left: 20, bottom: 10),
                      title: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.arrow_right_rounded),
                          SizedBox(width: 10),
                          Text(
                            "Pemeriksaan",
                            style: kSubTextStyle.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Mengukur tekanan darah',
                                style: kSubTextStyle))
                      ],
                    ),
                  ),
                  Divider(height: 1),
                  ListTileTheme(
                    dense: true,
                    child: ExpansionTile(
                        // iconColor: kPrimaryColor,
                        childrenPadding: EdgeInsets.only(left: 20, bottom: 10),
                        title: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.arrow_right_rounded),
                            SizedBox(width: 10),
                            Text(
                              "Sikap",
                              style: kSubTextStyle.copyWith(
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        children: [
                          NumberList([
                            'Dokter mengatakan bahwa jika pola hidup tidak berubah atau tidak sehat, hipertensi bisa berdampak buruk pada organ lain.',
                            'Terapi teratur',
                            'Hindari aktivitas yang menyebabkan tekanan darah tinggi',
                            'Ikuti aturan tentang cara merubah pola yang sehat untuk menurunkan tekanan darah',
                            'Bagaimana cara mengola makanan menjadi makanan sehat untuk hipertensi',
                            'Batasi konsumsi garam atau ikuti prosedur yang telah ditentukan oleh dokter',
                            'Batasi jumlah alkohol',
                            'Berusaha untuk tidak merokok',
                            'Kurangi konsumsi kafein',
                            'Kontrol tekanan darah',
                            'Dukungan keluarga',
                          ])
                        ]),
                  ),
                  Divider(height: 1),
                  ListTileTheme(
                    dense: true,
                    child: ExpansionTile(
                        // iconColor: kPrimaryColor,
                        childrenPadding: EdgeInsets.only(left: 20, bottom: 10),
                        title: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.arrow_right_rounded),
                            SizedBox(width: 10),
                            Text(
                              "Perilaku",
                              style: kSubTextStyle.copyWith(
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        children: [
                          NumberList([
                            'Berkunjung ke fasyankes seperti Puskesmas atau rumah sakit untuk melakukan pemeriksaan kesehatan (mengukur tekanan darah).',
                            'Menjalankan program minum obat sesuai aturan, dan resep dokter',
                            'Melakukan pengobata secara teratur dan mandiri disertai dengan rutin minum tanaman herbal sangat mudah untuk menurunkan tekanan darah.',
                            'Tidak melakukan aktifitas yang merugikan kesehatan seperti : Malas berolahraga, Sering minumobat obatan diwarung jika ada keluhan, Malas bergerak, Pekerjaan yang memicu stres, Bergadang pada malan hari',
                            'Rajin mencari informasi kesehatan di smartphone tentang manajemen gaya hidup sehat untuk menurunkan tekanan darah. Menjaga berat badan ideal, Aktifitas fisik secara teratur (sekitar 30 menit perhari/150 menit / perminggu), latihan aerobic, Jogging, Bersepeda, Berenang, dan Menari',
                            'Menjalankan program diet sehat atau mengkonsumsi  makanan yang sehat seperti diatur dalam program diet DASH seperti : Makan makanan yang kaya biji-bijian, buah-buahan, sayuran dan produk susu rendah lemak dan berhemat pada lemak jenuh dan kolesterol, Membuat buku harian (menuliskan apa yang akan dimakan, pantau apa yang dimakan, berapa banyak, kapan dan mengapa),	Mempertimbangkan untuk meningkatkan kalium, Kalium dapat mengurangi efek natrium pada tekanan darah, Sumber potasium terbaik adalah makanan, seperti buah-buahan dan sayuran, bukan suplemen',
                            'Membatasi pemakaian garam saat diet seperti : Membatasi natrium hingga 1500 mg- 2300 mg perhari atau kurang, Makanlah sedikit makanan olahan, Jangan menambahkan garam jika dalam pemrosesan masakan sudah diukur sesuai dengan takaran, Jika Anda merasa tidak dapat secara drastis mengurangi natrium dalam diet Anda secara tiba-tiba, kurangi secara bertahap. Selera Anda akan menyesuaikan dari waktu ke waktu',
                          ])
                        ]),
                  ),
                  Divider(height: 1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
