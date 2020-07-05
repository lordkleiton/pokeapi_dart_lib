import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class GenerationGameIndex {
  int gameIndex;
  NamedApiResource generation;

  GenerationGameIndex.fromJson(Map<String, dynamic> json)
      : gameIndex = json['game_index'],
        generation = NamedApiResource.fromJson(json['generation']);

  static List<GenerationGameIndex> fromList(List<dynamic> list) =>
      list.map((e) => GenerationGameIndex.fromJson(e ?? {})).toList();

  @override
  toString() => '$runtimeType {gameIndex: $gameIndex, generation: $generation}';
}
