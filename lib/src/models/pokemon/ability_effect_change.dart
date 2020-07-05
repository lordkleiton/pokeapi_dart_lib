import 'package:flutter_pokedex/models/common/effect.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class AbilityEffectChange {
  List<Effect> effectEntries;
  NamedApiResource versionGroup;

  AbilityEffectChange.fromJson(Map<String, dynamic> json)
      : effectEntries = Effect.fromList(json['effect_entries']),
        versionGroup = NamedApiResource.fromJson(json['version_group']);

  static List<AbilityEffectChange> fromList(List<dynamic> list) =>
      list.map((e) => AbilityEffectChange.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {effectEntries: $effectEntries, versionGroup: $versionGroup}';
}
