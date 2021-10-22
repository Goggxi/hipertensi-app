import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hipertensi_app/app/core/helper/bullet.dart';
import 'package:hipertensi_app/app/core/helper/constant.dart';

class K3View extends StatelessWidget {
  const K3View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kPrimaryColor),
        elevation: 0.8,
        centerTitle: false,
        backgroundColor: Colors.grey[50],
        title: Text('Hipertensi tingkat II', style: kTitleTextstyle),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                            'Hipertensi tingkat 2, yang ditandai dengan tekanan sistolik > 160 mmHg dan diastolik > 100 mmHg.',
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
                            'Pusing',
                            'Sakit Kepala',
                            'Serangan Jantung',
                            'Gagal Jantung',
                            'Dinding arteri melemah (aneurisma)',
                            'Kaki, lengan perut dan kepala tidak berfungsi dengan baik',
                            'Resiko stroke',
                            'Resiko gangguan penglihatan',
                            'Bercak merah pada mata',
                            'Wajah kemerahan',
                            'Stroke ringan (TIA)',
                            'Sesak nafas',
                            'Detak jantung tidak beraturan',
                            'Mimisan',
                            'Nyeri dada',
                            'Mati rsasa atau terasa lemah dibagian kaki, wajah,perut dan bagian tubuh lainnya',
                            'Tampak kebingungan',
                            'Kejang Kejang'
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
                            'Resiko Kerusakan organ',
                            'Resiko Penyakit arteri perifer (aliran darah ketubuh berkurang akibat rusaknya pembuluh darah',
                            'Aterosklerosis (penimbunan lemak)',
                            'Resiko pecah pembuluh darah',
                            'Resiko aneurisma otak',
                            'Resiko penurunan daya ingat',
                            'Resiko gagal ginjal'
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
                          child: Text('Mengukur tekanan darah', style: kSubTextStyle))
                      ],
                    ),
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
