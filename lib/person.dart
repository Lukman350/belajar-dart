class Person {
  String name;

  Person({String nama = "Anonymous"}) : name = nama {
    print("Person constructor");
  }

  String get getName => name;
  set setName(String nama) => name = nama;
}
