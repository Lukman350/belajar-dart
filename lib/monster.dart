import 'package:dart_application_1/character.dart';

abstract class Monster extends Character {
  String eatHuman() => 'Monster eats human';
  String move();
}
