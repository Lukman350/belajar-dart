void main(List<String> args) async {
  ServicesSingleton services1 = ServicesSingleton();
  ServicesSingleton services2 = ServicesSingleton();

  print(services1 == services2); // output: true
}

class User {}

class Services {
  Future<User> getUserData() async {
    // Assuming that we get user data from the database
    return User();
  }
}

class ServicesSingleton {
  static final ServicesSingleton _instance = ServicesSingleton._internal();

  ServicesSingleton._internal();

  factory ServicesSingleton() {
    return _instance;
  }

  Future<User> getUserData() async {
    // Assuming that we get user data from the database
    return User();
  }
}
