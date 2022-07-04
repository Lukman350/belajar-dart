import 'dart:io';

void main(List<String> arguments) {
  int? number = int.tryParse(stdin.readLineSync()!);

  // pengkondisian bercabang

  // if (number! > 0) {
  //   print('positif');
  // } else if (number < 0) {
  //   print('negatif');
  // } else {
  //   print('nol');
  // }

  // Ternary Operator
  // String output = number! > 0 ? 'positif' : 'negatif atau nol';
  // print(output);

  // Switch Case
  switch (number) {
    case 1:
      print('satu');
      break;
    case 2:
      print('dua');
      break;
    case 3:
      print('tiga');
      break;
    default:
      print('angka lain');
  }
}
