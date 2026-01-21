import 'package:get/get.dart';

import '../controllers/addsiswa_controller.dart';

class AddsiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddSiswaController>(
      () => AddSiswaController(),
    );
  }
}
