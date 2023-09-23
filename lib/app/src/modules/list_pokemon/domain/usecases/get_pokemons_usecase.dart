import 'package:pokedex/app/src/modules/list_pokemon/domain/repositories/pokemon_repository_interface.dart';

import 'interfaces/get_pokemons_interface.dart';

class GetPokemonsUseCase implements GetPokemonsInterface {
  final PokemonRepositoryInterface repository;

  GetPokemonsUseCase({required this.repository});

  @override
  GetListPokemonType call() async {
    return await repository.getListPokemons();
  }
}
