import 'package:get/get.dart';
import 'package:project_latihan/models/siswa.dart';
import 'package:project_latihan/services/siswa_firebase.dart';

class SiswaController extends GetxController {
  final SiswaFirebaseService _service = SiswaFirebaseService();

  RxList<Siswa> siswa = <Siswa>[].obs;

  @override
  void onInit() {
    super.onInit();
    _service.getSiswaStream().listen((data) {
      siswa.value = data;
    });
  }

  // var siswa = <Siswa>[
  //   Siswa(
  //     name: "Enrico Octaviano",
  //     absen: 1,
  //     makanan: "Bakso",
  //   ),
  //   Siswa(
  //     name: "Daniel Baskara Putra",
  //     absen: 2,
  //     makanan: "Mie Ayam",
  //   ),
  //   Siswa(
  //     name: "Rayhan Noor",
  //     absen: 3,
  //     makanan: "Nasi Goreng",
  //   ),
  //   Siswa(
  //     name: "Adnan Denan",
  //     absen: 4,
  //     makanan: "Sate",
  //   ),
  //   Siswa(
  //     name: "Tristan Juliano",
  //     absen: 5,
  //     makanan: "Ayam Geprek",
  //   ),
  // ].obs;

  // void updateSiswa(
  //   int index,
  //   String name,
  //   int absen,
  //   String makanan,
  // ) {
  //   siswa[index].name = name;
  //   siswa[index].absen = absen;
  //   siswa[index].makanan = makanan;

  //   siswa.refresh();
  // }

  void addSiswa(String name, int absen, String makanan) {
    _service.addSiswa(Siswa(name: name, absen: absen, makanan: makanan));
  }

  void updateSiswa(String id, String name, int absen, String makanan) {
    _service.updateSiswa(
      Siswa(id: id, name: name, absen: absen, makanan: makanan),
    );
  }

  void deleteSiswa(String id) {
    _service.deleteSiswa(id);
  }

  double get contentWidth {
    double screenWidth = Get.width;
    return screenWidth > 600 ? 600 : screenWidth;
  }
}
