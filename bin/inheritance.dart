import 'package:dart_application_1/drink_ability_mixin.dart';
import 'package:dart_application_1/knight.dart';
import 'package:dart_application_1/monster.dart';
import 'package:dart_application_1/monster_kecoa.dart';
import 'package:dart_application_1/monster_uburubur.dart';
import 'package:dart_application_1/monster_ucoa.dart';

void main(List<String> args) {
  Knight knight = Knight();
  print(knight.drink());

  List<Monster> monsters = [];

  monsters.add(MonsterKecoa());
  monsters.add(MonsterUburUbur());
  monsters.add(MonsterUcoa());

  for (Monster monster in monsters) {
    if (monster is DrinkAbilityMixin) {
      print((monster as DrinkAbilityMixin).drink());
    }
  }
}
