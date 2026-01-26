import 'package:get/get.dart';
import 'package:project_latihan/bindings/addsiswa_binding.dart';
import 'package:project_latihan/bindings/editsiswa_binding.dart';
import 'package:project_latihan/bindings/siswa_binding.dart';
import 'package:project_latihan/pages/addsiswa_page.dart';
import 'package:project_latihan/pages/editsiswa_page.dart';
import 'package:project_latihan/pages/siswa_page.dart';
import 'package:project_latihan/routes/route.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.siswa_page, page: () => SiswaPage(), binding: SiswaBinding()),
    GetPage(name: AppRoutes.edit_page, page: () => EditSiswaPage(), binding: EditsiswaBinding()),
    GetPage(name: AppRoutes.add_page, page: () => AddSiswaPage(), binding: AddsiswaBinding()),
  ];
}