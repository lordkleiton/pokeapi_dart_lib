import '../common/named_api_resource.dart';
import '../common/version_encounter_detail.dart';

class PokemonEncounter {
  NamedApiResource pokemon;
  List<VersionEncounterDetail> versionDetails;

  PokemonEncounter.fromJson(Map<String, dynamic> json)
      : pokemon = NamedApiResource.fromJson(json['pokemon'] ?? {}),
        versionDetails =
            VersionEncounterDetail.fromList(json['version_details'] ?? []);

  static List<PokemonEncounter> fromList(List<dynamic> list) =>
      list.map((e) => PokemonEncounter.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {pokemon: $pokemon, versionDetails: $versionDetails}';
}
