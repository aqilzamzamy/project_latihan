import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_latihan/controllers/editsiswa_controller.dart';
import '../components/custom_textfield.dart';
import '../components/custom_button.dart';

class EditSiswaPage extends StatelessWidget {
  EditSiswaPage({super.key});

  final EditSiswaController controller = Get.find<EditSiswaController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Siswa"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(
              label: "Nama",
              controller: controller.nameController,
              isPassword: false,
              isNumber: false,
            ),
            CustomTextField(
              label: "Absen",
              controller: controller.absenController,
              isPassword: false,
              isNumber: true,
            ),
            CustomTextField(
              label: "Makanan Favorit",
              controller: controller.makananController,
              isPassword: false,
              isNumber: false,
            ),
            const SizedBox(height: 20),
            CustomButton(
              myText: "Simpan",
              myTextColor: Colors.deepPurple,
              onPressed: controller.simpanPerubahan,
            ),
          ],
        ),
      ),
    );
  }
}
