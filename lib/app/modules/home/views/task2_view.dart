import 'package:flutter/material.dart';
import 'package:hipertensi_app/app/core/helper/constant.dart';
import 'package:hipertensi_app/app/widgets/button.dart';
import 'package:hipertensi_app/app/widgets/textformfield.dart';

class Task2View extends StatelessWidget {
  const Task2View({Key? key}) : super(key: key);

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

            title: Text('Topik 1',
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
                  Text('Penggunaan Handphone',
                      style: kHeadingTextStyle.copyWith(color: Colors.white)),
                  SizedBox(height: 20),
                  Card(
                    color: Colors.white70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text(
                                'Saya menggunakan gadget setiap memiliki waktu luang.',
                                style: kTitleTextstyle),
                            SizedBox(height: 10),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.only(top: 5),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      // "${index + 1}. Hollla",
                                      "1. Sangat Setuju",
                                      style: kSubTextStyle,
                                    ),
                                    // Container(
                                    //   height: 26,
                                    //   width: 26,
                                    //   decoration: BoxDecoration(
                                    //       color: kPrimaryColor,
                                    //       // getTheRightColor() == kGrayColor
                                    //       //     ? Colors.transparent
                                    //       //     : getTheRightColor(),
                                    //       borderRadius:
                                    //           BorderRadius.circular(50),
                                    //       border:
                                    //           Border.all(color: Colors.black)),
                                    //   child:
                                    //       // getTheRightColor() == kGrayColor
                                    //       //     ? null
                                    //       //     :
                                    //       Icon(Icons.do_disturb_alt, size: 16),
                                    // )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(height: 20),
                  Material(
                    color: Colors.transparent,
                    shadowColor: Colors.transparent,
                    child: InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                            backgroundColor: kInfectedColor,
                            foregroundColor: Colors.white,
                            child: Icon(Icons.keyboard_arrow_right))),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
