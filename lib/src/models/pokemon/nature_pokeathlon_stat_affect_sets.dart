import 'package:flutter_pokedex/models/pokemon/nature_pokeathlon_stat_affect.dart';

class NaturePokeathlonStatAffectSets {
  List<NaturePokeathlonStatAffect> increase;
  List<NaturePokeathlonStatAffect> decrease;

  NaturePokeathlonStatAffectSets.fromJson(Map<String, dynamic> json)
      : increase = NaturePokeathlonStatAffect.fromList(json['increase'] ?? []),
        decrease = NaturePokeathlonStatAffect.fromList(json['decrease'] ?? []);

  @override
  toString() => '$runtimeType {increase: $increase, decrease: $decrease}';
}
