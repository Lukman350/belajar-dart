class Person {
  String name;
  int age = 1;
  static int maxAge = 150;

  Person(this.name, int age) {
    this.age = (age > maxAge) ? maxAge : age;
  }
}
