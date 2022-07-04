void main(List<String> args) {
  // For Loop
  // for (int i = 0; i < 10; i = i + 1) {
  //   print(i);
  // }
  // unary operator
  // for (int i = 0; i < 5; i += 1) {
  //   print('halo');
  // }

  // While Loop
  int i = 5;

  while (i >= 1) {
    print('Halo ke $i');
    // j += 1;
    // menggunakan operasi decrement
    i--;
  }

  print('===============================');

  // do while loop
  int j = 1;
  do {
    print('Do while ke $j');

    // j += 1;
    // menggunakan operasi increment
    j++;
  } while (j <= 5);

  print('===============================');

  // for in loop
  List<String> nama = ['Rizky', 'Rizki', 'Rizkia'];
  for (String nama in nama) {
    print(nama);
  }

  print('===============================');

  // increment dan decrement
  int a, b;
  a = 10;
  b = a++; // output: 10
  // b = ++a; // output: 11
  print('a = $a, b = $b');

  int x, y;
  x = 10;
  // y = --x; // output: 9
  y = x--; // output: 10
  print('x = $x, y = $y');
}
