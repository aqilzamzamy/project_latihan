import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/siswa_controller.dart';
import '../models/siswa.dart';
import '../components/custom_textfield.dart';
import '../components/custom_button.dart';

class EditSiswaPage extends StatelessWidget {
  EditSiswaPage({super.key});

  final SiswaController siswaController = Get.find<SiswaController>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController absenController = TextEditingController();
  final TextEditingController makananController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as Map<String, dynamic>;
    final int index = args['index'];
    final Siswa siswa = args['siswa'];

    // set default valueny pas masuk page
    nameController.text = siswa.name;
    absenController.text = siswa.absen.toString();
    makananController.text = siswa.makanan;

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
              myTextColor: Colors.deepPurple,
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
