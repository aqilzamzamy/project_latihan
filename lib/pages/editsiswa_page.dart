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
    final media = MediaQuery.of(context);
    final isLandscape = media.orientation == Orientation.landscape;

    final contentWidth = isLandscape
        ? media.size.width * 0.6
        : media.size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Edit Siswa"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: contentWidth > 600 ? 600 : contentWidth,
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
        ),
      ),
    );
  }
}
