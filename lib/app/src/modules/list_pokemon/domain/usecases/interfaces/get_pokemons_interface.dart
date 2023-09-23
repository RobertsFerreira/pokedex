import 'package:fpdart/fpdart.dart';
import 'package:pokedex/app/src/core/errors/failure.dart';
import 'package:pokedex/app/src/modules/list_pokemon/domain/entities/pokemon_entity.dart';

typedef GetListPokemonType = Future<Either<Failure, List<PokemonEntity>>>;

abstract interface class GetPokemonsInterface {
  GetListPokemonType call();
}
