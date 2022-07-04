void main(List<String> args) {
  List<Person> persons = [
    Person("Administrator", 20),
    Person("User", 23),
    Person("Administrator", 24),
    Person("Merchant", 21),
    Person("User", 25),
    Person("Merchant", 28),
    Person("User", 18),
    Person("Merchant", 35),
    Person("Administrator", 31),
  ];

  persons.sort((p1, p2) {
    if ((p1.roleWeight - p2.roleWeight) != 0) {
      return p1.roleWeight - p2.roleWeight;
    } else {
      return p1.age.compareTo(p2.age);
    }
  });

  for (Person element in persons) {
    print("${element.role} - ${element.age}");
  }
}

class Person {
  final String role;
  final int age;

  Person(this.role, this.age);

  int get roleWeight {
    switch (role) {
      case "Administrator":
        return 1;
      case "Merchant":
        return 2;
      default:
        return 3;
    }
  }
}
