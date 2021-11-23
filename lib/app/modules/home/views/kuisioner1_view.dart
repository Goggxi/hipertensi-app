import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hipertensi_app/app/core/helper/bullet.dart';
import 'package:hipertensi_app/app/core/helper/constant.dart';
import 'package:hipertensi_app/app/modules/home/controllers/kuisioner1_controller.dart';
import 'package:hipertensi_app/app/widgets/textformfield.dart';

class Kuisioner1View extends StatelessWidget {
  const Kuisioner1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Kuisioner1Controller>(
      init: Kuisioner1Controller(),
      initState: (_) {},
      builder: (_) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(color: kPrimaryColor),
              elevation: 0.8,
              centerTitle: false,
              backgroundColor: Colors.grey[50],
              title: Text('Kuisioner 1', style: kTitleTextstyle),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    // padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Identitas Responden",
                            style: kTitleTextstyle.copyWith(
                                color: kPrimaryColor, fontSize: 16),
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
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
                                    SizedBox(height: 10),
                                    TextFormFieldPrimary(
                                      titleText: 'Alamat',
                                      hintText: 'Masukkan Alamat',
                                      labelStyle: kSubTextStyle.copyWith(
                                          color: kTextLightColor),
                                      textInputAction: TextInputAction.next,
                                    ),
                                    SizedBox(height: 10),
                                    TextFormFieldPrimary(
                                      titleText: 'Umur',
                                      hintText: 'Masukkan Umur',
                                      labelStyle: kSubTextStyle.copyWith(
                                          color: kTextLightColor),
                                      textInputAction: TextInputAction.next,
                                    ),
                                    SizedBox(height: 10),
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
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Penggunaan Handphone",
                            style: kTitleTextstyle.copyWith(
                                color: kPrimaryColor, fontSize: 16),
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  NumberList([
                                    'Saya menggunakan gadget setiap memiliki waktu luang.'
                                  ]),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Tidak Pernah',
                                        style: kSubTextStyle,
                                      ),
                                      addRadioButton(0, ''),
                                      addRadioButton(1, ''),
                                      addRadioButton(2, ''),
                                      addRadioButton(3, ''),
                                      Text(
                                        'Selalu',
                                        style: kSubTextStyle,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Saya menggunakan gadget setiap memiliki waktu luang.',
                                    style: kSubTextStyle,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Tidak Pernah',
                                        style: kSubTextStyle,
                                      ),
                                      addRadioButton(0, ''),
                                      addRadioButton(1, ''),
                                      addRadioButton(2, ''),
                                      addRadioButton(3, ''),
                                      Text(
                                        'Selalu',
                                        style: kSubTextStyle,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

Row addRadioButton(int btnIndex, String title) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      GetBuilder<Kuisioner1Controller>(
        builder: (_) => Radio(
            activeColor: kPrimaryColor,
            visualDensity: VisualDensity.compact,
            value: Kuisioner1Controller.instance.gender[btnIndex],
            groupValue: Kuisioner1Controller.instance.select,
            onChanged: (value) =>
                Kuisioner1Controller.instance.onClickRadioButton(value)),
      ),
      Text(title)
    ],
  );
}
