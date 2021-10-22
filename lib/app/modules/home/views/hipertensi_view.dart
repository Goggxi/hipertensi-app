import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hipertensi_app/app/core/helper/constant.dart';

class HipertensiView extends StatelessWidget {
  const HipertensiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kPrimaryColor),
        elevation: 0.2,
        centerTitle: false,
        backgroundColor: Colors.grey[50],
        title: Text('Hipertensi', style: kTitleTextstyle),
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
                  SizedBox(height: 10),
                  Text('Penjelsan Hipertensi Secara Umum')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
