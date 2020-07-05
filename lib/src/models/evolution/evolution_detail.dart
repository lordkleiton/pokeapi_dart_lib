import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class EvolutionDetail {
  NamedApiResource item;
  NamedApiResource trigger;
  int gender;
  NamedApiResource heldItem;
  NamedApiResource knownMove;
  NamedApiResource knownMoveType;
  NamedApiResource location;
  int minLevel;
  int minHappiness;
  int minBeauty;
  int minAffection;
  bool needsOverworldRain;
  NamedApiResource partySpecies;
  NamedApiResource partyType;
  int relativePhysicalStats;
  String timeOfDay;
  NamedApiResource tradeSpecies;
  bool turnUpsideDown;

  EvolutionDetail.fromJson(Map<String, dynamic> json)
      : item = _h(json['item']),
        trigger = _h(json['trigger']),
        gender = json['gender'],
        heldItem = _h(json['held_item']),
        knownMove = _h(json['known_move']),
        knownMoveType = _h(json['known_move_type']),
        location = _h(json['location']),
        minLevel = json['min_leve'],
        minHappiness = json['min_happiness'],
        minBeauty = json['min_beauty'],
        minAffection = json['min_affection'],
        needsOverworldRain = json['needs_overworld_rain'],
        partySpecies = _h(json['party_species']),
        partyType = _h(json['party_type']),
        relativePhysicalStats = json['relative_physical_stats'],
        timeOfDay = json['time_of_day'],
        tradeSpecies = _h(json['trade_species']),
        turnUpsideDown = json['turn_upside_down'];

  static List<EvolutionDetail> fromList(List<dynamic> list) =>
      list.map((e) => EvolutionDetail.fromJson(e ?? {})).toList();

  static NamedApiResource _h(Map<String, dynamic> json) =>
      NamedApiResource.fromJson(json ?? {});

  @override
  toString() =>
      '$runtimeType {item: $item, trigger: $trigger, gender: $gender, heldItem: $heldItem, knownMove: $knownMove, knownMoveType: $knownMoveType, location: $location, minLevel: $minLevel, minHappiness: $minHappiness, minBeauty: $minBeauty, minAffection: $minAffection, needsOverworldRain: $needsOverworldRain, partySpecies: $partySpecies, partyType: $partyType, relativePhysicalStats: $relativePhysicalStats, timeOfDay: $timeOfDay, tradeSpecies: $tradeSpecies, turnUpsideDown: $turnUpsideDown}';
}
