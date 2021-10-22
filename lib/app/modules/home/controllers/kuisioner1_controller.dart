import 'package:get/get.dart';

class Kuisioner1Controller extends GetxController {
  static Kuisioner1Controller get instance => Get.find<Kuisioner1Controller>();
  // final focusNode = FocusNode();

  @override
  void onInit() {
    selectedGender = '';
    select = 0;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  late String selectedGender;
  final List<int> gender = [4, 3, 2, 1];

  late int select;
  void onClickRadioButton(value) {
    print(value);
    select = value;
    update();
  }
}
