class Mahasiswa {
  Mahasiswa(this.nama, this.nim, this.kelas, this.prodi, this.nilai);

  final String nama;
  final String nim;
  final String kelas; 
  final String prodi;
  final double nilai;

  String perkenalan() {
    return "Nama: $nama, NIM: $nim, Kelas: $kelas, Prodi: $prodi, Nilai: $nilai";
  }

  String nilaiAkhir(){
    return "Nilai Akhir: $nilai";
  }
}

class Car {
  Car({
    required this.brand, 
    required this.type,  
    required this.year,
  });

  final String brand;
  final String type;
  final String year;

  String infoMobil() {
    return "Mobil dengan Brand: $brand, Type: $type, Tahun: $year";
  }
}


void main() {
  final m = Mahasiswa(
    'Rizal Hermawan', 
    '1124160208', 
    'TI 24 P SE 3', 
    'Teknik Informatika', 
    85.5
  );

  print("Nama : ${m.nama}");
  print("NIM  : ${m.nim}");
  print("Kelas: ${m.kelas}");
  print("Prodi: ${m.prodi}");
  print("Nilai: ${m.nilai}");
  
  print(m.perkenalan());
  print(m.nilaiAkhir());

  final mb = Car(
    brand: 'Mitsubishi', 
    type: 'Lancer', 
    year: '1993'
  );
  
  print(mb.infoMobil());
}
