import 'package:get/get.dart';
import 'package:project_latihan/models/siswa.dart';

class SiswaController extends GetxController {
  var siswa = <Siswa>[
    Siswa(
      name: "Enrico Octaviano",
      absen: 1,
      makanan: "Bakso",
    ),
    Siswa(
      name: "Daniel Baskara Putra",
      absen: 2,
      makanan: "Mie Ayam",
    ),
    Siswa(
      name: "Rayhan Noor",
      absen: 3,
      makanan: "Nasi Goreng",
    ),
    Siswa(
      name: "Adnan Denan",
      absen: 4,
      makanan: "Sate",
    ),
    Siswa(
      name: "Tristan Juliano",
      absen: 5,
      makanan: "Ayam Geprek",
    ),
  ].obs;

  void updateSiswa(
    int index,
    String name,
    int absen,
    String makanan,
  ) {
    siswa[index].name = name;
    siswa[index].absen = absen;
    siswa[index].makanan = makanan;

    siswa.refresh();
  }
}