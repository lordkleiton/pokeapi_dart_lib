import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class PalParkEncounterArea {
  int baseScore;
  int rate;
  NamedApiResource area;

  PalParkEncounterArea.fromJson(Map<String, dynamic> json)
      : baseScore = json['base_score'],
        rate = json['rate'],
        area = NamedApiResource.fromJson(json['area'] ?? {});

  static List<PalParkEncounterArea> fromList(List<dynamic> list) =>
      list.map((e) => PalParkEncounterArea.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {baseScore: $baseScore, rate: $rate, area: $area}';
}
