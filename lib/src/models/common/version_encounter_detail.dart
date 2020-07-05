import 'package:flutter_pokedex/models/common/encounter.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class VersionEncounterDetail {
  NamedApiResource version;
  int maxChance;
  List<Encounter> encounterDetails;

  VersionEncounterDetail.fromJson(Map<String, dynamic> json)
      : version = NamedApiResource.fromJson(json['version']),
        maxChance = json['max_chance'],
        encounterDetails = Encounter.fromList(json['encounter_details']);

  static List<VersionEncounterDetail> fromList(List<dynamic> list) =>
      list.map((e) => VersionEncounterDetail.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {version: $version, maxChance: $maxChance, encounterDetails: $encounterDetails}';
}
