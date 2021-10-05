import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hipertensi_app/app/widgets/my_header.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      controller: controller.controller,
      child: Column(
        children: [
          MyHeader(
            image: "assets/icons/coronadr.svg",
            textTop: "Yuk, mengenal",
            textBottom: "Apa itu Hipertensi.",
            offset: controller.offset.value,
          ),
        ],
      ),
    ));
  }
}
