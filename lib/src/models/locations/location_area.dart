import '../common/name.dart';
import '../common/named_api_resource.dart';
import '../common/named_api_resource_list.dart';
import '../locations/encounter_method_rate.dart';
import '../locations/pokemon_encounter.dart';
import '../../network/rest.dart';

///Location areas are sections of areas, such as floors in a building or cave. Each area has its own set of possible Pokémon encounters.
class LocationArea {
  int id;
  String name;
  int gameIndex;
  List<EncounterMethodRate> encounterMethodRates;
  NamedApiResource location;
  List<Name> names;
  List<PokemonEncounter> pokemonEncounters;

  LocationArea.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        gameIndex = json['game_index'],
        encounterMethodRates =
            EncounterMethodRate.fromList(json['encounterMethodRates'] ?? []),
        location = NamedApiResource.fromJson(json['location'] ?? {}),
        names = Name.fromList(json['names'] ?? []),
        pokemonEncounters =
            PokemonEncounter.fromList(json['pokemon_encounters'] ?? []);

  static Future<LocationArea> get(String query) async =>
      LocationArea.fromJson(await RestConnection.get<LocationArea>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<LocationArea>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, gameIndex: $gameIndex, encounterMethodRates: $encounterMethodRates, location: $location, names: $names, pokemonEncounters: $pokemonEncounters}';
}
