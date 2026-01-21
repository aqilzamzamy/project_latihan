import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_latihan/components/custom_button.dart';
import 'package:project_latihan/components/custom_text.dart';
import 'package:project_latihan/components/custom_textfield.dart';
import 'package:project_latihan/controllers/siswa_controller.dart';
import 'package:project_latihan/models/siswa.dart';

class EditSiswaPage extends StatelessWidget {
  EditSiswaPage({super.key});

  final SiswaController siswaController = Get.find();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController absenController = TextEditingController();
  final TextEditingController makananController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as Map<String, dynamic>;
    final int index = args['index'];
    final Siswa siswa = args['siswa'];

    nameController.text = siswa.name;
    absenController.text = siswa.absen.toString();
    makananController.text = siswa.makanan;

    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          myText: "Edit Siswa",
          myTextColor: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          align: TextAlign.center,
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(
              label: "Nama",
              controller: nameController,
              isPassword: false,
              isNumber: false,
            ),
            CustomTextField(
              label: "Absen",
              controller: absenController,
              isPassword: false,
              isNumber: true,
            ),
            CustomTextField(
              label: "Makanan Favorit",
              controller: makananController,
              isPassword: false,
              isNumber: false,
            ),
            const SizedBox(height: 20),
            CustomButton(
              myText: "Simpan",
              myTextColor: Colors.white,
              onPressed: () {
                siswaController.updateSiswa(
                  index,
                  nameController.text,
                  int.tryParse(absenController.text) ?? 0,
                  makananController.text,
                );
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
