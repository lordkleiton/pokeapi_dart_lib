import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class MoveMetaData {
  NamedApiResource ailment;
  NamedApiResource category;
  int minHits;
  int maxHits;
  int minTurns;
  int maxTurns;
  int drain;
  int healing;
  int critRate;
  int ailmentChance;
  int flinchChance;
  int statChance;

  MoveMetaData.fromJson(Map<String, dynamic> json)
      : ailment = NamedApiResource.fromJson(json['ailment'] ?? {}),
        category = NamedApiResource.fromJson(json['category'] ?? {}),
        minHits = json['min_hits'],
        maxHits = json['max_hits'],
        minTurns = json['min_turns'],
        maxTurns = json['max_turns'],
        drain = json['drain'],
        healing = json['healing'],
        critRate = json['critRate'],
        ailmentChance = json['ailment_chance'],
        flinchChance = json['flinch_chance'],
        statChance = json['stat_chance'];

  static List<MoveMetaData> fromList(List<dynamic> list) =>
      list.map((e) => MoveMetaData.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {ailment: $ailment, category: $category, minHits: $minHits, maxHits: $maxHits, minTurns: $minTurns, maxTurns: $maxTurns, drain: $drain, healing: $healing, critRate: $critRate, ailmentChance: $ailmentChance, flinchChance: $flinchChance, statChance: $statChance}';
}
