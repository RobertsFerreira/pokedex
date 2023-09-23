import 'package:pokedex/app/src/core/enums/enum_stats_pokemon.dart';
import 'package:pokedex/app/src/modules/list_pokemon/domain/entities/ability_entity.dart';
import 'package:pokedex/app/src/modules/list_pokemon/domain/entities/pokemon_entity.dart';
import 'package:pokedex/app/src/modules/list_pokemon/domain/entities/stats_entity.dart';
import 'package:pokedex/app/src/modules/list_pokemon/domain/entities/type_entity.dart';

final pokemonEntity = PokemonEntity(
  id: 2,
  name: 'ivysaur',
  height: 10,
  weight: 130,
  order: 2,
  types: [
    TypeEntity(
      name: 'grass',
      slot: 1,
    ),
  ],
  abilities: [
    AbilityEntity(name: 'overgrow'),
  ],
  stats: [
    StatsEntity(
      baseStat: 60,
      stats: EnumStatsPokemon.hp,
    ),
  ],
  sprite:
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/2.svg',
);
