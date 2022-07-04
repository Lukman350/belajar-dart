import 'package:dart_application_1/flying_monster.dart';
import 'package:dart_application_1/monster.dart';

class MonsterUcoa extends Monster implements FlyingMonster {
  @override
  String eatHuman() => 'Ucoa eats human';

  @override
  String move() => 'Ucoa moves';

  @override
  String fly() => "Ucoa flies";
}
