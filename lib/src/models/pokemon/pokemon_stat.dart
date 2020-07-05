import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class PokemonStat {
  NamedApiResource stat;
  int effort;
  int baseStat;

  PokemonStat.fromJson(Map<String, dynamic> json)
      : stat = NamedApiResource.fromJson(json['stat'] ?? {}),
        effort = json['effort'],
        baseStat = json['base_stat'];

  static List<PokemonStat> fromList(List<dynamic> list) =>
      list.map((e) => PokemonStat.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {stat: $stat, effort: $effort, baseStat: $baseStat}';
}
