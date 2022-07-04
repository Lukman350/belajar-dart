import 'package:dart_application_1/person.dart';

class Student extends Person {
  Student({String? nama = "Anonymous"}) : super(nama: nama ?? "Anonymous") {
    print("Student constructor");
  }
}
