import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_latihan/routes/page.dart';
import 'package:project_latihan/routes/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
  initialRoute: AppRoutes.siswa_page,
  getPages: AppPages.pages,
  debugShowCheckedModeBanner: false,
);

  }
}
