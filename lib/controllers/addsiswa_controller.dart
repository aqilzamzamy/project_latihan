import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'siswa_controller.dart';

class AddSiswaController extends GetxController {
  final SiswaController siswaController = Get.find<SiswaController>();

  final nameController = TextEditingController();
  final absenController = TextEditingController();
  final makananController = TextEditingController();

  void saveSiswa() {
    siswaController.addSiswa(
      nameController.text,
      int.tryParse(absenController.text) ?? 0,
      makananController.text,
    );

    clearForm();
    Get.back();
  }

  void clearForm() {
    nameController.clear();
    absenController.clear();
    makananController.clear();
  }

  @override
  void onClose() {
    nameController.dispose();
    absenController.dispose();
    makananController.dispose();
    super.onClose();
  }
}
