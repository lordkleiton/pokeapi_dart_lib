import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/version_encounter_detail.dart';

class LocationAreaEncounter {
  NamedApiResource locationArea;
  List<VersionEncounterDetail> versionDetails;

  LocationAreaEncounter.fromJson(Map<String, dynamic> json)
      : locationArea = NamedApiResource.fromJson(json['location_area'] ?? {}),
        versionDetails =
            VersionEncounterDetail.fromList(json['version_details'] ?? []);

  static List<LocationAreaEncounter> fromList(List<dynamic> list) =>
      list.map((e) => LocationAreaEncounter.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {locationArea: $locationArea, versionDetails: $versionDetails}';
}
