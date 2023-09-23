import 'package:pokedex/app/src/modules/list_pokemon/domain/usecases/interfaces/get_pokemons_interface.dart';

abstract interface class PokemonRepositoryInterface {
  GetListPokemonType getListPokemons();
}
