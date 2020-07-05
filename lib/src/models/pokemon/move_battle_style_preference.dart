import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class MoveBattleStylePreference {
  int lowHpPreference;
  int highHpPreference;
  NamedApiResource moveBattleStyle;

  MoveBattleStylePreference.fromJson(Map<String, dynamic> json)
      : lowHpPreference = json['low_hp_preference'],
        highHpPreference = json['high_hp_preference'],
        moveBattleStyle = NamedApiResource.fromJson(json['move_battle_style']);

  static List<MoveBattleStylePreference> fromList(List<dynamic> list) =>
      list.map((e) => MoveBattleStylePreference.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {lowHpPreference: $lowHpPreference, highHpPreference: $highHpPreference, moveBattleStyle: $moveBattleStyle}';
}
