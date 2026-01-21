class Siswa {
  String? id; // key firebase
  String name;
  int absen;
  String makanan;

  Siswa({
    this.id,
    required this.name,
    required this.absen,
    required this.makanan,
  });

  factory Siswa.fromMap(String id, Map data) {
    return Siswa(
      id: id,
      name: data['name'],
      absen: data['absen'],
      makanan: data['makanan'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'absen': absen,
      'makanan': makanan,
    };
  }
}
