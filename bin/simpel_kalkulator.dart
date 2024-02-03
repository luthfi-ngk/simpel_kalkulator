import 'dart:io';

void menu() {
  print('''
  ===Kalkulator Sederhana===
  Nama : Muhammad Luthfi Aziz
  NIP  : ARN212-31132
  ==========================

  Menu Kalkulator
  1. Penambahan
  2. Perkalian
  3. Perhitungan PPN 11%
  4. Luas Segitiga

  ''');
}

void pilihan() {
  stdout.write('Silahkan Pilih Nomor di atas : ');
}

void opsi1() {
  stdout.write('nilai a : ');
  double a = double.parse(stdin.readLineSync()!);

  stdout.write('nilai b : ');
  double b = double.parse(stdin.readLineSync()!);

  double hasil1 = a + b;
  print('Hasil penambahan Anda adalah $hasil1');
}

void opsi2() {
  stdout.write('nilai a : ');
  double a = double.parse(stdin.readLineSync()!);

  stdout.write('nilai b : ');
  double b = double.parse(stdin.readLineSync()!);

  double hasil1 = a * b;
  print('Hasil perkalian Anda adalah $hasil1');
}

void opsi3() {
  stdout.write('Nilai Tagihan : Rp ');
  double a = double.parse(stdin.readLineSync()!);

  double ppn = a * 11 / 100;
  double total = a + ppn;
  print('Pajak ppn Anda adalah Rp $ppn');
  print('Total yang harus anda bayar adalah Rp $total');
}

void opsi4() {
  stdout.write('Panjang segitiga (cm) : ');
  double a = double.parse(stdin.readLineSync()!);

  stdout.write('Tinggi segitiga (cm) : ');
  double b = double.parse(stdin.readLineSync()!);

  double hasil1 = 0.5 * a * b;
  print('luas segitiga anda adalah $hasil1 cm');
}

void thanks() {
  print('Terimakasih, Sampai Jumpa Lagi ^-^');
}

void main() {
  menu();
  pilihan();
  var pilih = stdin.readLineSync();

  if (pilih == '1') {
    opsi1();
    thanks();
  } else if (pilih == '2') {
    opsi2();
    thanks();
  } else if (pilih == '3') {
    opsi3();
    thanks();
  } else if (pilih == '4') {
    opsi4();
    thanks();
  } else {
    print('Mohon koreksi lagi pilihan Anda');
  }
}
