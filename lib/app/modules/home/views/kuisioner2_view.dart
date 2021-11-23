import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hipertensi_app/app/core/helper/constant.dart';
import 'package:hipertensi_app/app/modules/home/views/task2_view.dart';
import 'package:hipertensi_app/app/widgets/button.dart';
import 'package:hipertensi_app/app/widgets/textformfield.dart';

class Kuisioner2View extends StatelessWidget {
  const Kuisioner2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            // iconTheme: IconThemeData(color: kPrimaryColor),
            elevation: 0.0,
            centerTitle: false,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,

            title: Text('Kuisioner 2',
                style: kTitleTextstyle.copyWith(color: Colors.white)),
          ),
          body: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF3383CD),
                  Color(0xFF11249F),
                ],
              ),
              image: DecorationImage(
                image: AssetImage("assets/images/virus.png"),
              ),
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Identitas Responden',
                      style: kHeadingTextStyle.copyWith(color: Colors.white)),
                  SizedBox(height: 20),
                  Card(
                    color: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child:
                          //  Obx(
                          //   () =>
                          Form(
                        child: Column(
                          children: [
                            TextFormFieldPrimary(
                              titleText: 'Nama',
                              hintText: 'Masukkan Nama',
                              labelStyle: kSubTextStyle.copyWith(
                                  color: kTextLightColor),
                              textInputAction: TextInputAction.next,
                            ),
                            SizedBox(height: 20),
                            TextFormFieldPrimary(
                              titleText: 'Alamat',
                              hintText: 'Masukkan Alamat',
                              labelStyle: kSubTextStyle.copyWith(
                                  color: kTextLightColor),
                              textInputAction: TextInputAction.next,
                            ),
                            SizedBox(height: 20),
                            TextFormFieldPrimary(
                              titleText: 'Umur',
                              hintText: 'Masukkan Umur',
                              labelStyle: kSubTextStyle.copyWith(
                                  color: kTextLightColor),
                              textInputAction: TextInputAction.next,
                            ),
                            SizedBox(height: 20),
                            TextFormFieldPrimary(
                              titleText: 'Pekerjaan',
                              hintText: 'Masukkan Pekerjaan',
                              labelStyle: kSubTextStyle.copyWith(
                                  color: kTextLightColor),
                              textInputAction: TextInputAction.done,
                            ),
                          ],
                        ),
                      ),
                      // ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ButtonPrimary(
                      title: 'Selanjutnya',
                      onPrimary: Colors.white,
                      primary: kInfectedColor,
                      onPressed: () => Get.to(()=> Task2View()),
                    ),
                  )
                  // Material(
                  //   color: Colors.transparent,
                  //   shadowColor: Colors.transparent,
                  //   child: InkWell(
                  //       onTap: () {},
                  //       child: CircleAvatar(
                  //           backgroundColor: kInfectedColor,
                  //           foregroundColor: Colors.white,
                  //           child: Icon(Icons.keyboard_arrow_right))),
                  // )
                ],
              ),
            ),
          )),
    );
  }
}
