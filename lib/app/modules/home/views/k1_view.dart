import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hipertensi_app/app/core/helper/bullet.dart';
import 'package:hipertensi_app/app/core/helper/constant.dart';

class K1View extends StatelessWidget {
  const K1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kPrimaryColor),
        elevation: 0.8,
        centerTitle: false,
        backgroundColor: Colors.grey[50],
        title: Text('Prahipretensi', style: kTitleTextstyle),
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
                            'Prehipertensi, ditandai dengan tekanan Sistolik 120-139 dan diastolik 80-89',
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
                            'Pusing',
                            'Kadang-kadang nyeri dada dan sesak'
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
                            'Konsumsi Garam',
                            'Stress',
                            'Aktivitas (Nelayan)',
                            'Pola makan dan gaya hidup tidak sehat'
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
                            'Mencari informasi tentang masalah kesehatan. berkunjung kepuskesmas atau kerumah sakit',
                            'Dokter menyarankan untuk menjaga kesehatan dengan pola hidup sehat',
                            'Mencegah hipertensi tampa harus minum obat dari dokter',
                            'Tidak merokok dan tidak konsumsi alkohol.',
                            'Jika perokok berat atau peminum berat'
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
                            'Melakukan kunjungan kepuskesmas. Mengenal masalah kesehatan.',
                            'Menjalan program sehat yang disarankan oleh dokter.',
                            'Melakukan perubahan gaya hidup dengan sehat itu lebih baik untuk menurunkan tekanan darah dan  menjalankan aktivitas setiap hari dengan teratur selama 15-30 menit seperti rutin berolahraga , berjalan kaki, berenang, bersepeda dan lain-lain',
                            'Melakukan kunjungan ulang puskesmas bila tiba tiba merasakan dirinya kurang sehat.',
                            'Segera melakukan perubahan dengan metode BNI (Batasi, Nikmati dan Imbangi).'
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
