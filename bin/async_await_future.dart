void main(List<String> args) async {
  var p = Person();

  print("Job 1");
  print("Job 2");
  p.getDataAsync().then((_) => print("Job 3 : ${p.name}"));
  print("Job 4");
}

class Person {
  String name = "None";

  void getData() {
    name = "John Doe";
    print("get data $name done");
  }

  Future<void> getDataAsync() async {
    await Future.delayed(Duration(seconds: 3));

    name = "John Doe";
    print("get data $name done");
  }
}
