import 'package:pokedex/app/src/modules/list_pokemon/domain/entities/version_move_entity.dart';

class MoveEntity {
  final String move;
  final List<VersionMoveEntity> versionMoves;

  MoveEntity({
    required this.move,
    required this.versionMoves,
  });
}
