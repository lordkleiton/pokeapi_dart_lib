import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class NatureStatChange {
  int maxChange;
  NamedApiResource pokeathlonStat;

  NatureStatChange.fromJson(Map<String, dynamic> json)
      : maxChange = json['max_change'],
        pokeathlonStat = NamedApiResource.fromJson(json['pokeathlon_stat']);

  static List<NatureStatChange> fromList(List<dynamic> list) =>
      list.map((e) => NatureStatChange.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {maxChange: $maxChange, pokeathlonStat: $pokeathlonStat}';
}
