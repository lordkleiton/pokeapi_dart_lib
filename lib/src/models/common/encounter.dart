import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class Encounter {
  int minLevel;
  int maxLevel;
  List<NamedApiResource> conditionValues;
  int chance;
  NamedApiResource method;

  Encounter.fromJson(Map<String, dynamic> json)
      : minLevel = json['min_level'],
        maxLevel = json['max_level'],
        conditionValues =
            NamedApiResource.fromList(json['condition_values'] ?? []),
        chance = json['chance'],
        method = NamedApiResource.fromJson(json['method'] ?? []);

  static List<Encounter> fromList(List<dynamic> list) =>
      list.map((e) => Encounter.fromJson(e ?? {})).toList();

  @override
  String toString() =>
      '$runtimeType {minLevel: $minLevel, maxLevel: $maxLevel, conditionValues: $conditionValues, chance: $chance, method: $method}';
}
