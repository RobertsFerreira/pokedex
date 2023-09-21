import 'package:pokedex/app/src/modules/list_pokemon/domain/entities/ability_entity.dart';
import 'package:pokedex/app/src/modules/list_pokemon/domain/entities/type_entity.dart';

import 'stats_entity.dart';

class PokemonEntity {
  final int id;
  final String name;
  final double height;
  final double weight;
  final int order;
  final List<TypeEntity> types;
  final List<AbilityEntity> abilities;
  final List<StatsEntity> stats;

  PokemonEntity({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.order,
    required this.types,
    required this.abilities,
    required this.stats,
  });
}
