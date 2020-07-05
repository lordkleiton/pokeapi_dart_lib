import '../common/named_api_resource.dart';
import '../pokemon/pokemon_move_version.dart';

class PokemonMove {
  NamedApiResource move;
  List<PokemonMoveVersion> versionGroupDetail;

  PokemonMove.fromJson(Map<String, dynamic> json)
      : move = NamedApiResource.fromJson(json['move'] ?? {}),
        versionGroupDetail =
            PokemonMoveVersion.fromList(json['version_group_detail'] ?? []);

  static List<PokemonMove> fromList(List<dynamic> list) =>
      list.map((e) => PokemonMove.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {move: $move, versionGroupDetail: $versionGroupDetail}';
}
