import 'package:flutter/material.dart';

enum EnumStatsPokemon {
  hp(
    name: 'HP',
    key: 'hp',
    color: Colors.red,
  ),
  atk(
    name: 'ATK',
    key: 'attack',
    color: Colors.orange,
  ),
  defense(
    name: 'DEFENSE',
    key: 'defense',
    color: Colors.blue,
  ),
  specialAtk(
    name: 'SPECIAL-ATTACK ',
    key: 'special-attack',
    color: Colors.yellow,
  ),
  specialDefense(
    name: 'SPECIAL-DEFENSE',
    key: 'special-defense',
    color: Colors.blueGrey,
  ),
  speed(
    name: 'SPEED',
    key: 'speed',
    color: Colors.green,
  );

  final String name;
  final String key;
  final Color color;

  const EnumStatsPokemon({
    required this.name,
    required this.key,
    required this.color,
  });
}
