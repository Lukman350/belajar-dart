void main(List<String> args) {
  try {
    Person(name: null);
  } catch (e) {
    print(e);
  }

  print("Hello World!");
}

class Person {
  final String? name;
  final int? age;

  Person({required this.name, this.age}) {
    assert(name != null, "Name is required");
  }
}
