import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class VersionGameIndex {
  int gameIndex;
  NamedApiResource version;

  VersionGameIndex.fromJson(Map<String, dynamic> json)
      : gameIndex = json['game_index'],
        version = NamedApiResource.fromJson(json['version']);

  static List<VersionGameIndex> fromList(List<dynamic> list) =>
      list.map((e) => VersionGameIndex.fromJson(e ?? {})).toList();

  @override
  toString() => '$runtimeType {gameIndex: $gameIndex, version: $version}';
}
