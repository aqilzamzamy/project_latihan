import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/siswa_controller.dart';
import '../models/siswa.dart';

class EditSiswaController extends GetxController {
  final SiswaController siswaController = Get.find<SiswaController>();

  final nameController = TextEditingController();
  final absenController = TextEditingController();
  final makananController = TextEditingController();

  late Siswa siswa;

  @override
  void onInit() {
    super.onInit();

    siswa = Get.arguments['siswa'];
    nameController.text = siswa.name;
    absenController.text = siswa.absen.toString();
    makananController.text = siswa.makanan;
  }

  void simpanPerubahan() {
    siswaController.updateSiswa(
      siswa.id!, // key Firebase
      nameController.text,
      int.tryParse(absenController.text) ?? 0,
      makananController.text,
    );

    Get.back();
  }

  double get contentWidth {
    double screenWidth = Get.width;
    return screenWidth > 600 ? 600 : screenWidth;
  }

  @override
  void onClose() {
    nameController.dispose();
    absenController.dispose();
    makananController.dispose();
    super.onClose();
  }
}
