import 'dart:async';

void main(List<String> args) async {
  User user = User();
  UserManager userManager = UserManager(LocalStorage());
  print(await userManager.getUserAge(user));
}

class User {
  int age = 0;
}

class UserManager {
  final IDataStorage dataStorage;

  UserManager(this.dataStorage);

  void saveUserData(User user) {
    dataStorage.saveUserData(user);
  }

  FutureOr<int> getUserAge(User user) async {
    return await dataStorage.getUserAge(user);
  }
}

abstract class IDataStorage {
  void saveUserData(User user);
  FutureOr<int> getUserAge(User user);
}

class FireBaseStorage implements IDataStorage {
  @override
  void saveUserData(User user) {
    // Connect to firebase and save user data
  }

  @override
  FutureOr<int> getUserAge(User user) async {
    // Assuming that we get user data from the firebase
    await Future.delayed(Duration(seconds: 3));
    return 20;
  }
}

class LocalStorage implements IDataStorage {
  @override
  void saveUserData(User user) {
    // Connect to local storage and save user data
  }

  @override
  int getUserAge(User user) {
    // ambil tanggal lahir dari user
    // Bandingkan tanggal lahir dengan tanggal sekarang
    // lalu hitung umurnya
    return 10;
  }
}
