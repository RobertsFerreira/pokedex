import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex/app/src/modules/list_pokemon/domain/repositories/pokemon_repository_interface.dart';
import 'package:pokedex/app/src/modules/list_pokemon/domain/usecases/get_pokemons_usecase.dart';
import 'package:pokedex/app/src/modules/list_pokemon/domain/usecases/interfaces/get_pokemons_interface.dart';

import '../../../../mocks/list_pokemons_mock.dart';

class MockPokemonRepository extends Mock
    implements PokemonRepositoryInterface {}

void main() {
  late GetPokemonsInterface getPokemonsUseCase;
  late PokemonRepositoryInterface repository;

  setUp(() {
    repository = MockPokemonRepository();
    getPokemonsUseCase = GetPokemonsUseCase(repository: repository);
  });

  group(
    'Group of tests for get list of pokemons',
    () {
      test(
        'should return a list of pokemon entity from the repository',
        () async {
          when(() => repository.getListPokemons()).thenAnswer(
            (_) async => Right(getListPokemonsMock),
          );

          final result = await getPokemonsUseCase();

          verify(repository.getListPokemons);
          expect(result, Right(getListPokemonsMock));
        },
      );
    },
  );
}
