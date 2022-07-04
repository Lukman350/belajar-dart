import 'package:dart_application_1/static_keyword.dart';

void main(List<String> args) {
  Person p = Person("John Doe", 20);
  print(p.name);
  print(p.age);

  // Access static field
  print(Person.maxAge);
}
