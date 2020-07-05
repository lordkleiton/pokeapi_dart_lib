import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class PokemonMoveVersion {
  NamedApiResource moveLearnMethod;
  NamedApiResource versionGroup;
  int levelLearnedAt;

  PokemonMoveVersion.fromJson(Map<String, dynamic> json)
      : moveLearnMethod =
            NamedApiResource.fromJson(json['move_learn_method'] ?? {}),
        versionGroup = NamedApiResource.fromJson(json['version_group'] ?? {}),
        levelLearnedAt = json['level_learned_at'];

  static List<PokemonMoveVersion> fromList(List<dynamic> list) =>
      list.map((e) => PokemonMoveVersion.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {moveLearnMethod: $moveLearnMethod, versionGroup: $versionGroup, levelLearnedAt: $levelLearnedAt}';
}
