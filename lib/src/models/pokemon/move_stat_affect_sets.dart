import 'package:flutter_pokedex/models/pokemon/move_stat_affect.dart';

class MoveStatAffectSets {
  List<MoveStatAffect> increase;
  List<MoveStatAffect> decrease;

  MoveStatAffectSets.fromJson(Map<String, dynamic> json)
      : increase = MoveStatAffect.fromList(json['increase'] ?? []),
        decrease = MoveStatAffect.fromList(json['decrease'] ?? []);

  @override
  toString() => '$runtimeType {increase: $increase, decrease: $decrease}';
}
