import 'package:dart_application_1/params_underscore.dart';

void main(List<String> args) {
  // Person p = Person('John', doingHobby: (String name) {
  //   print('$name is taking a rest');
  // });

  // underscore parameter
  Person p = Person('John', doingHobby: (_) {
    print('taking a rest');
  });

  p.takeARest();
}

// void johnHobby(String name) {
//   print('$name is taking a rest');
// }
