import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hipertensi_app/app/core/helper/constant.dart';
import 'package:hipertensi_app/app/modules/home/views/hipertensi_view.dart';
import 'package:hipertensi_app/app/modules/home/views/k1_view.dart';
import 'package:hipertensi_app/app/modules/home/views/k3_view.dart';
import 'package:hipertensi_app/app/modules/home/views/k4_view.dart';
import 'package:hipertensi_app/app/modules/home/views/kuisioner1_view.dart';
import 'package:hipertensi_app/app/modules/home/views/kuisioner2_view.dart';
import 'package:hipertensi_app/app/widgets/my_header.dart';

import '../controllers/home_controller.dart';
import 'k2_view.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          body: SingleChildScrollView(
        controller: controller.controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyHeader(
              image: "assets/icons/coronadr.svg",
              textTop: "Yuk, mengenal",
              textBottom: "Apa itu Hipertensi.",
              offset: controller.offset.value,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell(
                      onTap: () => Get.to(() => HipertensiView()),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            // Image.asset(image),
                            Icon(Icons.volunteer_activism_rounded,
                                size: 42, color: kDeathColor),
                            SizedBox(width: 20),
                            Expanded(
                                child: Text('Pengertian Hipertensi',
                                    style: kSubTextStyle.copyWith(
                                        fontWeight: FontWeight.bold))),
                            Icon(Icons.arrow_right_alt_rounded,
                                color: kPrimaryColor)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Ketegori",
                    style: kTitleTextstyle.copyWith(color: kPrimaryColor),
                  ),
                  SizedBox(height: 10),
                  _kategory_card(
                      onTap: () => Get.to(() => K1View()),
                      image: "assets/images/pra.png",
                      title: 'Prehipertensi'),
                  SizedBox(height: 10),
                  _kategory_card(
                      onTap: () => Get.to(() => K2View()),
                      image: "assets/images/caugh.png",
                      title: 'Hipertensi Tingkat I'),
                  SizedBox(height: 10),
                  _kategory_card(
                      onTap: () => Get.to(() => K3View()),
                      image: "assets/images/fever.png",
                      title: 'Hipertensi Tingkat II'),
                  SizedBox(height: 10),
                  _kategory_card(
                      onTap: () => Get.to(() => K4View()),
                      image: "assets/images/headache.png",
                      title: 'Hipertensi Krisis'),
                  SizedBox(height: 10),
                  Text(
                    "Kuisioner",
                    style: kTitleTextstyle.copyWith(color: kPrimaryColor),
                  ),
                  SizedBox(height: 10),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell(
                      onTap: () => Get.to(() => Kuisioner1View()),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Icon(
                            //   Icons.wysiwyg,
                            //   size: 52,
                            //   // color: kInfectedColor,
                            // ),
                            // SizedBox(width: 20),
                            Expanded(
                                child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Kuisioner 1',
                                      style: kSubTextStyle.copyWith(
                                          // color: kInfectedColor,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Row(
                                  children: [
                                    // SizedBox(width: 60),
                                    Icon(
                                      Icons.topic,
                                      color: kTextLightColor,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                        child: Text('4 Topik',
                                            style: kSubTextStyle.copyWith(
                                                color: kTextLightColor)))
                                  ],
                                ),
                                Row(
                                  children: [
                                    // SizedBox(width: 60),
                                    Icon(
                                      Icons.note,
                                      color: kTextLightColor,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                        child: Text('29 Pertanyaan',
                                            style: kSubTextStyle.copyWith(
                                                color: kTextLightColor)))
                                  ],
                                ),
                              ],
                            )),
                            Icon(Icons.arrow_right_alt_rounded,
                                color: kPrimaryColor)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell(
                      onTap: () => Get.to(() => Kuisioner2View()),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Icon(
                            //   Icons.wysiwyg,
                            //   size: 52,
                            //   // color: kInfectedColor,
                            // ),
                            // SizedBox(width: 20),
                            Expanded(
                                child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Kuisioner 2',
                                      style: kSubTextStyle.copyWith(
                                          // color: kInfectedColor,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Row(
                                  children: [
                                    // SizedBox(width: 60),
                                    Icon(
                                      Icons.topic,
                                      color: kTextLightColor,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                        child: Text('2 Topik',
                                            style: kSubTextStyle.copyWith(
                                                color: kTextLightColor)))
                                  ],
                                ),
                                Row(
                                  children: [
                                    // SizedBox(width: 60),
                                    Icon(
                                      Icons.note,
                                      color: kTextLightColor,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                        child: Text('27 Pertanyaan',
                                            style: kSubTextStyle.copyWith(
                                                color: kTextLightColor)))
                                  ],
                                ),
                              ],
                            )),
                            Icon(Icons.arrow_right_alt_rounded,
                                color: kPrimaryColor)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class _kategory_card extends StatelessWidget {
  final String image;
  final String title;
  final Function()? onTap;
  const _kategory_card(
      {Key? key, required this.image, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(image),
              SizedBox(width: 20),
              Expanded(
                  child: Text(title,
                      style:
                          kSubTextStyle.copyWith(fontWeight: FontWeight.bold)))
            ],
          ),
        ),
      ),
    );
  }
}
