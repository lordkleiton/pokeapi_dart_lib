import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class MoveStatAffect {
  int change;
  NamedApiResource move;

  MoveStatAffect.fromJson(Map<String, dynamic> json)
      : change = json['change'],
        move = NamedApiResource.fromJson(json['move'] ?? {});

  static List<MoveStatAffect> fromList(List<dynamic> list) =>
      list.map((e) => MoveStatAffect.fromJson(e ?? {})).toList();

  @override
  toString() => '$runtimeType {change: $change, move: $move}';
}
