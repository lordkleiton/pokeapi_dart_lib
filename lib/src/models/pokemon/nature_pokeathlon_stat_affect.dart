import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class NaturePokeathlonStatAffect {
  int maxChange;
  NamedApiResource nature;

  NaturePokeathlonStatAffect.fromJson(Map<String, dynamic> json)
      : maxChange = json['max_change'],
        nature = NamedApiResource.fromJson(json['nature']);

  static List<NaturePokeathlonStatAffect> fromList(List<dynamic> list) =>
      list.map((e) => NaturePokeathlonStatAffect.fromJson(e ?? {})).toList();

  @override
  toString() => '$runtimeType {maxChange: $maxChange, nature: $nature}';
}
