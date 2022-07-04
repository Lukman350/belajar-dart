import 'dart:io';
import 'package:dart_application_1/persegi_panjang.dart';

void main(List<String> args) {
  PersegiPanjang kotak1, kotak2;

  kotak1 = PersegiPanjang();
  kotak1.panjang = double.tryParse(stdin.readLineSync()!)!;
  kotak1.lebar = double.tryParse(stdin.readLineSync()!)!;

  kotak2 = PersegiPanjang();
  kotak2.panjang = 5;
  kotak2.lebar = 10;

  print('Panjang kotak 1: ${kotak1.panjang}\nLebar kotak 1: ${kotak1.lebar}');
  print('Panjang kotak 2: ${kotak2.panjang}\nLebar kotak 2: ${kotak2.lebar}');

  print('Luas kotak 1: ${kotak1.luas}\nLuas kotak 2: ${kotak2.luas}');
}
