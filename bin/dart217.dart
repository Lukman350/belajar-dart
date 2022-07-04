// Materi:
// Named Parameter, Super Initializer, Enhanced Enum

void main(List<String> args) {
  // Bebas meletakkan opsional parameter, note: non opsional parameter harus berurutan
  User u = User(1, 'John', age: 20, fullName: "John Doe");

  // enhanced enum
  UserAuthException e = UserAuthException.invalidPassword;

  print(e.toString());
  print(e.code);
  print(e.exceptionCodeInDouble);
  print(e.description);
}

enum AdministratorType {
  generalAdministrator,
  securityAdministrator,
  superAdministrator
}

// Named Parameter
class User {
  int id, age;
  String username, fullName;

  User(this.id, this.username, {required this.age, this.fullName = "No Name"});
}

// Super Initializer
class Administrator extends User {
  AdministratorType type;

  Administrator(super.id, super.username,
      {super.fullName, required super.age, required this.type});
}

// Enhanced Enum
enum UserAuthException {
  invalidPassword(100, 'Wrong password, please try again'),
  invalidUsername(200, 'Username not found, please try again');

  final int code;
  final String description;

  const UserAuthException(this.code, this.description);

  double get exceptionCodeInDouble => code.toDouble();

  @override
  String toString() => "$name is one of user auth exception";
}

// extension UserAuthExceptionExtension on UserAuthException {
//   String get description {
//     if (name == "invalidPassword") {
//       return "Invalid Password";
//     } else {
//       return "Unknown Error";
//     }
//   }

//   @override
//   String convertToString() => "$name is one of user auth exception";
// }
