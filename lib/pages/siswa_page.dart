import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_latihan/components/custom_text.dart';
import 'package:project_latihan/controllers/siswa_controller.dart';
import 'package:project_latihan/models/siswa.dart';

import 'package:project_latihan/routes/route.dart';

class SiswaPage extends StatelessWidget {
  SiswaPage({super.key});

  final SiswaController siswaController = Get.find<SiswaController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const CustomText(
          myText: "Data Siswa",
          myTextColor: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          align: TextAlign.center,
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        elevation: 4,
      ),
      body: Center(
        child: SizedBox(
          width: siswaController.contentWidth,
          child: Obx(() {
            if (siswaController.siswa.isEmpty) {
              return const Center(child: Text("Data siswa kosong"));
            }

            return siswaController.isLandscape
                ? GridView.builder(
                    padding: const EdgeInsets.all(12),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 500, // lebar maksimal card
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          childAspectRatio: 3, // bikin card lebih tinggi
                        ),
                    itemCount: siswaController.siswa.length,
                    itemBuilder: (context, index) {
                      return _buildSiswaCard(siswaController.siswa[index]);
                    },
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(12),
                    itemCount: siswaController.siswa.length,
                    itemBuilder: (context, index) {
                      return _buildSiswaCard(siswaController.siswa[index]);
                    },
                  );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () {
          Get.toNamed(AppRoutes.add_page);
        },
      ),
    );
  }

  Widget _buildSiswaCard(Siswa siswa) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        title: CustomText(
          myText: siswa.name,
          myTextColor: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          align: TextAlign.start,
        ),
        subtitle: CustomText(
          myText: "Absen: ${siswa.absen} | Makanan: ${siswa.makanan}",
          myTextColor: Colors.grey[800]!,
          fontSize: 10,
          fontWeight: FontWeight.normal,
          align: TextAlign.start,
        ),
        trailing: const Icon(Icons.edit, color: Colors.deepPurple),
        onTap: () {
          Get.toNamed(AppRoutes.edit_page, arguments: {'siswa': siswa});
        },
      ),
    );
  }
}
