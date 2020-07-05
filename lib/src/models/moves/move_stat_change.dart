import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class MoveStatChange {
  int change;
  NamedApiResource stat;

  MoveStatChange.fromJson(Map<String, dynamic> json)
      : change = json['change'],
        stat = NamedApiResource.fromJson(json['stat'] ?? {});

  static List<MoveStatChange> fromList(List<dynamic> list) =>
      list.map((e) => MoveStatChange.fromJson(e ?? {})).toList();

  @override
  toString() => '$runtimeType {change: $change, stat: $stat}';
}
