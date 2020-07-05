import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/locations/encounter_version_details.dart';

class EncounterMethodRate {
  NamedApiResource encounterMethod;
  List<EncounterVersionDetails> versionDetails;

  EncounterMethodRate.fromJson(Map<String, dynamic> json)
      : encounterMethod =
            NamedApiResource.fromJson(json['encounter_method'] ?? {}),
        versionDetails =
            EncounterVersionDetails.fromList(json['version_details'] ?? []);

  static List<EncounterMethodRate> fromList(List<dynamic> list) =>
      list.map((e) => EncounterMethodRate.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {encounterMethod: $encounterMethod, versionDetails: $versionDetails}';
}
