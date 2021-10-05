import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final controller = ScrollController();
  final offset = 0.0.obs;

  void onScroll() {
    offset.value = (controller.hasClients) ? controller.offset : 0;
  }

  @override
  void onInit() {
    controller.addListener(onScroll);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    controller.dispose();
  }
}
