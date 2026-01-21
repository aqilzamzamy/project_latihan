import 'package:get/get.dart';

import '../controllers/editsiswa_controller.dart';

class EditsiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditSiswaController>(
      () => EditSiswaController(),
    );
  }
}
