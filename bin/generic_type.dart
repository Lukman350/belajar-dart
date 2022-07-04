import 'package:dart_application_1/secure_box.dart';

void main(List<String> args) {
  SecureBox box = SecureBox<int>(12038, '1234');
  SecureBox box2 = SecureBox<String>("box2", '1234');
  SecureBox box3 = SecureBox<DateTime>(DateTime.now(), '1234');
  SecureBox box4 = SecureBox<Person>(Person(name: "John Doe"), '1234');

  print(box.getData('1234')); // => 12038
  print(box2.getData('1234')); // => "box2"
  print(box3.getData('1234')); // => datetime
  print(box4.getData('1234').name); // => "John Doe"
}

class Person {
  final String? name;

  Person({this.name});
}
