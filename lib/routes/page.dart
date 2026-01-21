import 'package:get/get.dart';
import 'package:project_latihan/pages/siswa_page.dart';
import 'package:project_latihan/routes/route.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.siswa_page, page: () => SiswaPage()),
  ];
}
