class Mahasiswa {
  Mahasiswa(this.nama, this.nim, this.kelas, this.prodi);

  final String nama;
  final String nim;
  final String kelas; 
  final String prodi;
}

void main() {
  final m = Mahasiswa('Rizal Hermawan', '1124160208', 'TI 24 P SE 3', 'Teknik Informatika');
  print("Nama : ${m.nama}");
  print("NIM  : ${m.nim}");
  print("Kelas: ${m.kelas}");
  print("Prodi: ${m.prodi}");
}
