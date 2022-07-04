const topLevel = 'top level';

void main(List<String> args) {
  // final int x = 5; // harus di inisialisasi terlebih dahulu

  // x = 10; // Error cannot reassign to final variable

  // inisialisasi lewat class constructor
  FinalClass a = FinalClass(x: 40);
  print(a.x); // expected output: 40

  // Const
  var x = const ConstClass(x: 20);
  var y = const ConstClass(x: 20);

  print(identical(x, y)); // expected output: true

  var f = ConstClass(x: 20);
  var g = ConstClass(x: 20);

  print(identical(f, g)); // expected output: false

  print(topLevel); // expected output: top level
}

class FinalClass {
  final int? x;
  // const firstConst = 10; // Error Only static fields can be declared as const.
  // Solution
  static const firstConst = 10;

  FinalClass({this.x}) {
    // inisialisasi lewat class constructor
    // Local const
    const secondConst = 20;
    print(secondConst); // expected output: 20
  }
}

class ConstClass {
  final int? x;

  const ConstClass({this.x});
}
