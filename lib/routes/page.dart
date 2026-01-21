import 'package:get/get.dart';
import 'package:project_latihan/pages/addsiswa_page.dart';
import 'package:project_latihan/pages/editsiswa_page.dart';
import 'package:project_latihan/pages/siswa_page.dart';
import 'package:project_latihan/routes/route.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.siswa_page, page: () => SiswaPage()),
    GetPage(name: AppRoutes.edit_page, page: () => EditSiswaPage()),
    GetPage(name: AppRoutes.add_page, page: () => AddSiswaPage()),
  ];
}
