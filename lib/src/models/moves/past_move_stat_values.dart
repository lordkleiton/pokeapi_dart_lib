import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/verbose_effect.dart';

class PastMoveStatValues {
  int accuracy;
  int effectChance;
  int power;
  int pp;
  List<VerboseEffect> effectEntries;
  NamedApiResource type;
  NamedApiResource versionGroup;

  PastMoveStatValues.fromJson(Map<String, dynamic> json)
      : accuracy = json['accuracy'],
        effectChance = json['effect_chance'],
        power = json['power'],
        pp = json['pp'],
        effectEntries = VerboseEffect.fromList(json['effect_entries'] ?? []),
        type = NamedApiResource.fromJson(json['type']),
        versionGroup = NamedApiResource.fromJson(json['version_group']);

  static List<PastMoveStatValues> fromList(List<dynamic> list) =>
      list.map((e) => PastMoveStatValues.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {accuracy: $accuracy, effectChance: $effectChance, power: $power, pp: $pp, effectEntries: $effectEntries, type: $type, versionGroup: $versionGroup}';
}
