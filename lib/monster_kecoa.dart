import 'package:dart_application_1/flying_monster.dart';
import 'package:dart_application_1/monster.dart';

class MonsterKecoa extends Monster implements FlyingMonster {
  @override
  String eatHuman() => 'Kecoa eats human';

  @override
  String move() => 'Kecoa moves';

  @override
  String fly() => "Kecoa flies";
}
