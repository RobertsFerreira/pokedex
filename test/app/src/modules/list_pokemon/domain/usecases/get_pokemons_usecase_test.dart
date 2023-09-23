import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex/app/src/core/errors/failure.dart';
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
      group(
        'Group of success tests',
        () {
          test(
            'Should return a list of pokemon entity from the repository',
            () async {
              when(repository.getListPokemons).thenAnswer(
                (_) async => Right(getListPokemonsMock),
              );

              final result = await getPokemonsUseCase();

              verify(repository.getListPokemons).called(1);
              expect(result, Right(getListPokemonsMock));
            },
          );
        },
      );

      group(
        'Group of failures tests',
        () {
          test(
            'Should return a ServerFailure when the server is not available',
            () async {
              final error = ServerFailure();
              when(repository.getListPokemons).thenAnswer(
                (_) async => Left(error),
              );
              final result = await getPokemonsUseCase();

              verify(repository.getListPokemons).called(1);
              expect(
                result,
                Left(error),
              );
            },
          );
        },
      );
    },
  );
}
