import 'package:firebase_database/firebase_database.dart';
import '../models/siswa.dart';

class SiswaFirebaseService {
  final DatabaseReference _db =
      FirebaseDatabase.instance.ref().child('siswa');

  // READ
  Stream<List<Siswa>> getSiswaStream() {
    return _db.onValue.map((event) {
      final data = event.snapshot.value as Map?;
      if (data == null) return [];

      return data.entries.map((e) {
        return Siswa.fromMap(e.key, Map<String, dynamic>.from(e.value));
      }).toList();
    });
  }

  // CREATE
  Future<void> addSiswa(Siswa siswa) async {
    await _db.push().set(siswa.toMap());
  }

  // UPDATE
  Future<void> updateSiswa(Siswa siswa) async {
    await _db.child(siswa.id!).update(siswa.toMap());
  }

  // DELETE
  Future<void> deleteSiswa(String id) async {
    await _db.child(id).remove();
  }
}
