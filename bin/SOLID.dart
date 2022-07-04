void main(List<String> args) {
  // S - Single Responsibility Principle
  // O - Open/Closed Principle
  // L - Liskov Substitution Principle
  // I - Interface Segregation Principle
  // D - Dependency Inversion Principle
}

// =============================================================================
// Wrong Single Responsibility Principle
class Car {
  void turnOnCar() {
    // ...
  }

  void turnOffCar() {
    // ...
  }

  void turnOnAirConditioner() {
    // ...
  }

  void turnOffAirConditioner() {
    // ...
  }

  void playMusic() {
    // ...
  }
}

// Right Single Responsibility Principle (Memudahkan kita untuk mencari bug)
class Car {
  AirConditioner airConditioner;
  Radio radio;

  void turnOnCar() {
    // ...
  }

  void turnOffCar() {
    // ...
  }
}

class AirConditioner {
  void turnOnAirConditioner() {
    // ...
  }

  void turnOffAirConditioner() {
    // ...
  }
}

class Radio {
  void playMusic() {
    // ...
  }
}

// =============================================================================
// Before Open/Closed Principle
class MyRobot {
  void talk() {
    // ...
  }

  void walk() {
    // ...
  }
}

// Wrong Open/Closed Principle
class MyRobot {
  void talk() {
    // ...
  }

  void kill() {
    // ...
  }

  void fly() {
    // ...
  }
}

// After Open/Closed Principle
class MyRobot {
  void talk() {
    // ...
  }

  void walk() {
    // ...
  }
}

class MySuperRobot extends MyRobot {
  void kill() {
    // ...
  }

  void fly() {
    // ...
  }
}

// =============================================================================
// Wrong Liskov Substitution Principle
class Duck {
  void swim() {
    // ...
  }

  void quack() {
    // ...
  }

  void eat() {
    // ...
  }
}

class RubberDuck extends Duck {
  @override
  void eat() {
    // do nothing
  }
}

// Right Liskov Substitution Principle
class Duck {
  void swim() {
    // ...
  }

  void quack() {
    // ...
  }

  void eat() {
    // ...
  }
}

class Malard extends Duck {
  @override
  void eat() {
    // do Malard way of eating
  }
}

// =============================================================================
// Wrong Interface Segregation Principle
abstract class HeroAbility {
  void heal();
  void castMagic();
  void stealMoney();
}

abstract class Hero implements HeroAbility {
  void regularAttack();
}

class Thief extends Hero {
  @override
  void castMagic() {
    // do nothing
  }

  @override
  void heal() {
    // do nothing
  }

  @override
  void stealMoney() {
    // ...
  }

  @override
  void regularAttack() {
    // ...
  }
}

class BlackMage extends Hero {
  @override
  void castMagic() {
    // ...
  }

  @override
  void heal() {
    // do nothing
  }

  @override
  void stealMoney() {
    // do nothing
  }

  @override
  void regularAttack() {
    // ...
  }
}

class WhiteMage extends Hero {
  @override
  void castMagic() {
    // ...
  }

  @override
  void heal() {
    // ...
  }

  @override
  void stealMoney() {
    // do nothing
  }

  @override
  void regularAttack() {
    // ...
  }
}

// Right Interface Segregation Principle
abstract class Hero {
  void regularAttack();
}

abstract class IMagicCaster {
  void castMagic();
}

abstract class IHealer {
  void heal();
}

abstract class IStealer {
  void stealMoney();
}

class Thief extends Hero implements IStealer {
  @override
  void regularAttack() {
    // ...
  }

  @override
  void stealMoney() {
    // ...
  }
}

class WhiteMage extends Hero implements IHealer, IMagicCaster {
  @override
  void castMagic() {
    // ...
  }

  @override
  void regularAttack() {
    // ...
  }

  @override
  void heal() {
    // ...
  }
}

class BlackMage extends Hero implements IMagicCaster {
  @override
  void castMagic() {
    // ...
  }

  @override
  void regularAttack() {
    // ...
  }
}

// =============================================================================
// Wrong Dependency Inversion Principle
class User {
  // User related things
}

class UserManager {
  void saveUserData(User user) {
    // Connect to firebase and save user data
  }
}

// Right Dependency Inversion Principle
class User {
  // User related things
}

class UserManager {
  final IDataStorage dataStorage;

  UserManager(this.dataStorage);

  void saveUserData(User user) {
    dataStorage.saveUserData(user);
  }
}

abstract class IDataStorage {
  void saveUserData(User user);
}

class FireBaseStorage implements IDataStorage {
  @override
  void saveUserData(User user) {
    // Connect to firebase and save user data
  }
}

class LocalStorage implements IDataStorage {
  @override
  void saveUserData(User user) {
    // Connect to local storage and save user data
  }
}
