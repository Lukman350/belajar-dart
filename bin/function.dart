double luasSegiEmpat(double panjang, double lebar) {
  return panjang * lebar;
}

// optional parameter
// untuk menambahkan default value pada parameter tambahkan tanda = lalu diikuti nilai default pada parameter

// named parameter
void sayHello(String name, {int? age}) {
  print('Hello $name');
  if (age != null) {
    print('Your age is $age years old');
  }
}

// Positional parameter
void sayHello2(String name, [int? age]) {
  print('Hello $name');
  if (age != null) {
    print('Your age is $age years old');
  }
}

// Arrow syntax / lambda expression
int add(int a, int b) => a + b;

// Anonymous function
int doMathOperator(int a, int b, Function(int, int) operator) {
  return operator(a, b);
}

void main(List<String> args) {
  // double p, l, luas;
  // print('Masukkan nilai panjang : ');
  // p = double.parse(stdin.readLineSync()!);
  // print('Masukkan nilai lebar : ');
  // l = double.parse(stdin.readLineSync()!);

  // luas = luasSegiEmpat(p, l);
  // print(luas);

  // named parameter
  // sayHello('John', age: 30);

  // positional parameter
  // sayHello2('Budi', 20);

  // arrow syntax / lambda expression
  // print(add(10, 20));
  // custom function
  // Function tambah;
  // tambah = add;
  // print(tambah(10, 20));

  // anonymous function
  Function(int, int) multiply;
  multiply = (int a, int b) => a * b;

  print(doMathOperator(5, 3, multiply));
  // shorthand syntax
  print(doMathOperator(10, 5, (int a, int b) => a * b));
}
